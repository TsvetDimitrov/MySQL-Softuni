CREATE TABLE `directors`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`director_name` VARCHAR(50) NOT NULL,
`notes` TEXT);
 
CREATE TABLE `genres`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`genre_name` VARCHAR(50) NOT NULL,
`notes` TEXT);
 
INSERT INTO `genres` (`id`, `genre_name`, `notes`)
VALUES
('1','Parody',NULL),
('2','Comedy',NULL),
('3','Drama',NULL),
('4','Action',NULL),
('5','Animation',NULL);
 
CREATE TABLE `categories`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`category_name` VARCHAR(50) NOT NULL,
`notes` TEXT);
 
CREATE TABLE `movies`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`title` VARCHAR(50) NOT NULL,
`director_id` INT,
`copyright_year` YEAR,
`LENGTH` TIME,
`genre_id` INT,
`category_id` INT,
`rating` DECIMAL(2,1),
`notes` TEXT);

INSERT INTO `directors`(`id`,`director_name`, `notes`)
VALUES
('1','Tsvetomir',NULL), 
('2','Ivan',NULL), 
('3','Valentin',NULL), 
('4','Kiro',NULL), 
('5','Milen',NULL);

INSERT INTO `categories` (`id`, `category_name`, `notes`)
VALUES
('1', 'Relax', NULL),
('2', 'When free time', NULL),
('3', 'Must watch', NULL),
('4', 'Ok movies', NULL),
('5', 'Not worth it', NULL);
 
INSERT INTO `movies`(`id`, `title`, `director_id`, `copyright_year`,`LENGTH`, `genre_id`,`category_id`, `rating`, `notes`)
VALUES
('1', 'Test text', '1', '2020', '00:10:00', '1','1', NULL, NULL),
('2', 'text random', '2', '1970', '00:15:00', '2','2', NULL, NULL),
('3', 'Dont know', '3', '1990', '00:15:50', '3','4', NULL, NULL),
('4', 'Lrem Ipsum', '4', '2007', '00:30:00', '4', '4', NULL, NULL),
('5', 'test', '4', '2005', '00:40:00', '1','2', NULL, NULL);