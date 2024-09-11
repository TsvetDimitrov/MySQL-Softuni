-- 02. One-To-Many Relationship --

CREATE TABLE `manufacturers` (
`manufacturer_id` INT PRIMARY KEY AUTO_INCREMENT ,
`name` VARCHAR(45) UNIQUE,
`established_on` DATE NOT NULL
);

INSERT INTO `manufacturers` (`manufacturer_id`, `name`, `established_on`) VALUES (1, 'BMW', '1916-03-01'), (2, 'Tesla', '2003-01-01'), (3, 'Lada', '1966-05-01');

CREATE TABLE `models` (
`model_id` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(45) NOT NULL,
`manufacturer_id` INT NOT NULL,
    CONSTRAINT fk_manufacturer_id FOREIGN KEY(manufacturer_id)
    REFERENCES manufacturers(manufacturer_id)
);

INSERT INTO `models` (`model_id`, `name`, `manufacturer_id`) VALUES (101, 'X1', 1), (102, 'i6', 1), (103, 'Model S', 2), (104, 'Model X', 2), (105, 'Model 3', 2), (106, 'Nova', 3);