CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(52) NOT NULL,
  PRIMARY KEY (`role_id`)
);

INSERT INTO `roles` VALUES (1,'Admin'),(2,'User');

CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT '2',
  `email` varchar(52) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE SET NULL
);

INSERT INTO `users` VALUES (1,1,'admin@clouza.net','admin','2022-04-18','2022-04-18');

CREATE TABLE `user_details` (
  `user_details_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(52) NOT NULL,
  `last_name` varchar(52) NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `company_name` varchar(52) DEFAULT NULL,
  `url` varchar(52) DEFAULT NULL,
  PRIMARY KEY (`user_details_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
  );

INSERT INTO `user_details` VALUES (1,1,'Admin','Admin','Database Administrator I','Replacement of R Com Iliac Art with Synth Sub, Open Approach','Tagchat',NULL);

CREATE TABLE `educations` (
  `education_id` int NOT NULL AUTO_INCREMENT,
  `user_details_id` int NOT NULL,
  `intitution_name` varchar(52) NOT NULL,
  `education_name` varchar(52) NOT NULL DEFAULT 'Education',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`education_id`),
  KEY `user_details_id` (`user_details_id`),
  CONSTRAINT `educations_ibfk_1` FOREIGN KEY (`user_details_id`) REFERENCES `user_details` (`user_details_id`) ON DELETE CASCADE
);

INSERT INTO `educations` VALUES (1,1,'California State University, Northridge','Education','2010-11-17','2014-07-01');

CREATE TABLE `experiences` (
  `experience_id` int NOT NULL AUTO_INCREMENT,
  `user_details_id` int NOT NULL,
  `company_name` varchar(52) NOT NULL,
  `position` varchar(52) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`experience_id`),
  KEY `user_details_id` (`user_details_id`),
  CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`user_details_id`) REFERENCES `user_details` (`user_details_id`) ON DELETE CASCADE
);

CREATE TABLE `bulk_email` (
  `bulk_id` int NOT NULL AUTO_INCREMENT,
  `send_by` int DEFAULT NULL,
  `email_subject` varchar(255) NOT NULL,
  `email_body` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`bulk_id`),
  KEY `send_by` (`send_by`),
  CONSTRAINT `bulk_email_ibfk_1` FOREIGN KEY (`send_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
);

INSERT INTO `bulk_email` VALUES (1,1,'[70% off] Early Black Friday access','Inj unsp musc/fasc/tend at thigh level, left thigh, init','2022-04-12 00:00:00'),(2,1,'How about 40% off this Black Friday?','Toxic effect of mycotoxin food contamnt, undetermined, subs	','2022-02-02 00:00:00'),(3,1,'Welcome! (Important info inside)','Strain extensor musc/fasc/tend r rng fngr at forarm lv, subs','2022-02-22 00:00:00');

CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(52) NOT NULL,
  PRIMARY KEY (`category_id`)
);

INSERT INTO `categories` VALUES (1,'Job'),(2,'General'),(3,'IT'),(4,'Personal'),(5,'Advanced'),(6,'Commerce'),(7,'Crypto'),(8,'Cloud'),(9,'Cyber Security'),(10,'Community');

CREATE TABLE `companies` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(52) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(52) NOT NULL,
  `salary_range` double NOT NULL,
  `job_type` varchar(52) NOT NULL,
  PRIMARY KEY (`company_id`)
);

INSERT INTO `companies` VALUES (1,'Thoughtsphere','2022-02-13','2022-01-12','Anilao',4.69,'Full-time'),(2,'Agivu','2022-02-03','2022-05-18','Meaux',5.23,'Full-time'),(3,'Mynte','2021-11-24','2022-06-13','Gunungkencana',2.49,'Intern'),(4,'Avaveo','2022-02-11','2022-10-15','Bergen',4.73,'Full-time'),(5,'Devcast','2022-06-08','2022-01-30','Marmande',3.61,'Full-time'),(6,'Livefish','2022-06-10','2022-02-27','Araguari',0.99,'Intern'),(7,'Gabvine','2022-06-12','2022-06-15','Štitar',0.64,'Full-time'),(8,'Voonte','2022-07-23','2022-11-30','Bảo Lộc',5.7,'Part-time'),(9,'Divape','2022-03-16','2022-10-01','Ganggawang',7.56,'Intern'),(10,'Vidoo','2022-01-13','2022-07-16','Xamtay',2.11,'Intern');

CREATE TABLE `conversations` (
  `conversation_id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `public_key` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`conversation_id`),
  UNIQUE KEY `public_key` (`public_key`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
);

INSERT INTO `conversations` VALUES (1,NULL,'hhwwee','2022-12-27'),(2,1,'hhjjii','2022-12-27');

CREATE TABLE `jobs` (
  `job_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `company_id` int DEFAULT NULL,
  `user_details_id` int DEFAULT NULL,
  `user_interested` int NOT NULL,
  `user_apply` int NOT NULL,
  PRIMARY KEY (`job_id`),
  KEY `post_id` (`post_id`),
  KEY `user_details_id` (`user_details_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`user_details_id`) REFERENCES `user_details` (`user_details_id`) ON DELETE SET NULL,
  CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE SET NULL
);

INSERT INTO `jobs` VALUES (1,4,5,1,0,0);

CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `heading` varchar(52) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `created_by` (`created_by`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_details` (`user_details_id`) ON DELETE CASCADE,
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL
);

INSERT INTO `posts` VALUES (1,2,1,'Ooba','Conversion disorder','2022-07-25 00:00:00'),(2,2,1,'Realcube','Pathologic fracture of vertebrae','2022-04-24 00:00:00'),(4,2,1,'Eayo','Syndrome of \"infant of a diabetic mother\"','2021-10-21 00:00:00'),(10,2,1,'Zoomlounge','Myocarditis, unspecified','2022-09-12 00:00:00');

CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `conversation_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `is_read` int NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`conversation_id`) ON DELETE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
);

INSERT INTO `messages` VALUES (1,1,NULL,1,'Hey r u there?','2022-12-27 00:00:00'),(2,1,1,1,'yes, y?','2022-12-27 00:00:00'),(3,1,NULL,1,'owh nvm','2022-12-27 00:00:00'),(4,2,1,1,'p','2022-12-27 00:00:00'),(5,2,NULL,1,'?','2022-12-27 00:00:00'),(6,2,1,1,':p','2022-12-27 00:00:00');

CREATE TABLE `threads` (
  `thread_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_details_id` int DEFAULT NULL,
  `reply_text` text NOT NULL,
  `reply_to_thread` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`thread_id`),
  KEY `post_id` (`post_id`),
  KEY `user_details_id` (`user_details_id`),
  CONSTRAINT `threads_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE,
  CONSTRAINT `threads_ibfk_2` FOREIGN KEY (`user_details_id`) REFERENCES `user_details` (`user_details_id`) ON DELETE SET NULL
);

INSERT INTO `threads` VALUES (3,2,NULL,'Asymptomatic human immunodeficiency virus [HIV] infection status',NULL,'2022-04-26 00:00:00'),(4,1,1,'Other persistent mental disorders due to conditions classified elsewhere',NULL,'2022-03-20 00:00:00'),(6,4,1,'Tuberculous oophoritis and salpingitis, tubercle bacilli not found (in sputum) by microscopy, but found by bacterial culture',6,'2022-05-26 00:00:00'),(10,2,1,'Chemical burn of eyelids and periocular area',5,'2021-11-04 00:00:00');