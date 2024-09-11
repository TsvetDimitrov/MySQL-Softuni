-- 01. One-To-One Relationship --

CREATE TABLE `passports` (
`passport_id` INT PRIMARY KEY AUTO_INCREMENT ,
`passport_number` VARCHAR(45)
);

INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES (101, 'N34FG21B');
INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES (102, 'K65LO4R7');
INSERT INTO `passports` (`passport_id`, `passport_number`) VALUES (103, 'ZE657QP2');

CREATE TABLE `people` (
`person_id` INT AUTO_INCREMENT PRIMARY KEY,
`first_name` VARCHAR(45) NOT NULL,
`salary` DECIMAL(16,2) NOT NULL,
`passport_id` INT UNIQUE,
    CONSTRAINT `fk_passport_id` FOREIGN KEY(`passport_id`)
    REFERENCES `passports`(`passport_id`)
);

INSERT INTO `people` (`person_id`, `first_name`, `salary`, `passport_id`) VALUES (1, 'Roberto', 43300.00, 102);
INSERT INTO `people` (`person_id`, `first_name`, `salary`, `passport_id`) VALUES (2, 'Tom', 56100.00, 103);
INSERT INTO `people` (`person_id`, `first_name`, `salary`, `passport_id`) VALUES (3, 'Yana', 60200.00, 101);

-- OR -- 

CREATE TABLE passports (
	passport_id INT PRIMARY KEY AUTO_INCREMENT,
    passport_number VARCHAR(45)
);

INSERT INTO passports (passport_id, passport_number)
VALUES (101, 'N34FG21B'), (102, 'K65LO4R7'),(103, 'ZE657QP2');

CREATE TABLE people (
	person_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45),
    salary DECIMAL(10, 2),
    passport_id INT UNIQUE,

    CONSTRAINT fk_passport_id FOREIGN KEY(passport_id)
    REFERENCES passports(passport_id)
);

INSERT INTO people (first_name, salary, passport_id)
VALUES ('Roberto', 43300.00, 102), ('Tom', 56100.00, 103), ('Yana', 60200.00, 101);