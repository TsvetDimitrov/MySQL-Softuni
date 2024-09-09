-- 12. Car Rental Database --

CREATE TABLE `categories`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`category` VARCHAR(50) NOT NULL,
`daily_rate` DOUBLE(5,2) NOT NULL,
`weekly_rate` DOUBLE(5,2) NOT NULL,
`monthly_rate` DOUBLE(5,2) NOT NULL,
`weekend_rate` DOUBLE(5,2) NOT NULL);

INSERT INTO `categories`(`id`,`category`, `daily_rate`, `weekly_rate`, `monthly_rate`, `weekend_rate`)
VALUES
('1','Coupe',5, 20, 40, 12), 
('2','Sedan',4, 25, 60, 11), 
('3','Camper',7, 40, 100, 18);

CREATE TABLE `cars`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`plate_number` VARCHAR(30) NOT NULL,
`make` VARCHAR(30) NOT NULL,
`model` VARCHAR(30) NOT NULL,
`car_year` INT NOT NULL,
`category_id` INT NOT NULL,
`doors` SMALLINT NOT NULL,
`picture` BLOB,
`car_condition` VARCHAR(50) NOT NULL,
`available` BIT NOT NULL);

INSERT INTO `cars`(`id`,`plate_number`, `make`, `model`, `car_year`, `category_id`, `doors`, `picture`, `car_condition`, `available`)
VALUES
('1','B3286TA','BMW', 'e92', 2009, 1, 3, NULL, 'Clean and perfect.', 0), 
('2','CB0444HB','Renault', 'Megane', 2012, 2, 5, NULL, 'Clean and perfect.', 1), 
('3','CB70124HB','Fiat', 'Camper', 2025, 3, 8, NULL, 'Clean and perfect.', 1);

CREATE TABLE `employees`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(30) NOT NULL,
`last_name` VARCHAR(30) NOT NULL,
`title` VARCHAR(30) NOT NULL,
`notes` VARCHAR(50));

INSERT INTO `employees`(`id`,`first_name`, `last_name`, `title`, `notes`)
VALUES
('1','Ivan','Kirkov', 'comedy employeer','Joker'), 
('2','Hristiyan','Dimitrov', 'cashier', NULL), 
('3','Kristiyan','Vladimirov', 'Marketing specialist','Doing nothing all day.');

CREATE TABLE `customers`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`driver_licence_number` INT NOT NULL,
`full_name` VARCHAR(30) NOT NULL,
`address` VARCHAR(30) NOT NULL,
`city` VARCHAR(30) NOT NULL,
`zip_code` VARCHAR(30) NOT NULL,
`notes` VARCHAR(30));

INSERT INTO `customers`(`id`,`driver_licence_number`, `full_name`, `address`, `city`, `zip_code`, `notes`)
VALUES
('1', 500515,'Kiril Kalinkov', 'Hristo Voivoda 31 str.','Sofia', '1000', NULL), 
('2', 100505,'Petar Denev', 'Hristo Voivoda 33 str.', 'Plovdiv', '1100', NULL), 
('3', 215152,'Ivailo Petev', 'Hristo Voivoda 34 str.','Kazanlak', '1200', NULL);

CREATE TABLE `rental_orders`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`employee_id` INT NOT NULL,
`customer_id` INT NOT NULL,
`car_id` INT NOT NULL,
`car_condition` VARCHAR(30) NOT NULL,
`tank_level` VARCHAR(30) NOT NULL,
`kilometrage_start` INT NOT NULL,
`kilometrage_end` INT NOT NULL,
`total_kilometrage` INT NOT NULL,
`start_date` DATE NOT NULL,
`end_date` DATE NOT NULL,
`total_days` DECIMAL(5,2) NOT NULL,
`rate_applied` DECIMAL(5,2) NOT NULL,
`tax_rate` DECIMAL(5,2) NOT NULL,
`order_status` VARCHAR(30) NOT NULL,
`notes` VARCHAR(30));

INSERT INTO `rental_orders`(`id`,`employee_id`, `customer_id`, `car_id`, `car_condition`, `tank_level`, `kilometrage_start`,
`kilometrage_end`, `total_kilometrage`, `start_date`, `end_date`, `total_days`, `rate_applied`, `tax_rate`, `order_status`, `notes`
)
VALUES
('1', 1, 1, 1,'Good', 'Full', 220000, 220050, 50, '2023-09-10', '2023-09-11', 1, 10, 10, 'Finished', NULL), 
('2', 2, 2, 2,'Good', 'Full', 220000, 220050, 50, '2023-09-11', '2023-09-12', 1, 12, 12, 'Finished', NULL), 
('3', 3, 3, 3,'Good', 'Full', 220000, 220050, 50, '2023-09-12', '2023-09-13', 1, 14, 14, 'Finished', NULL);

