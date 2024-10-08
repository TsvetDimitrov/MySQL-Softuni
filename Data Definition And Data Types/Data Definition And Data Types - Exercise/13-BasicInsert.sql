-- 13. Basic Insert --

CREATE TABLE `towns`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL);

CREATE TABLE `addresses`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`address_text` VARCHAR(50) NOT NULL,
`town_id` INT NOT NULL);

CREATE TABLE `departments`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL);

CREATE TABLE `employees`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(50) NOT NULL,
`middle_name` VARCHAR(50) NOT NULL,
`last_name` VARCHAR(50) NOT NULL,
`job_title` VARCHAR(50) NOT NULL,
`department_id` INT NOT NULL,
`hire_date` DATE NOT NULL,
`salary` FLOAT NOT NULL,
`address_id` INT NOT NULL);

ALTER TABLE `addresses`
    ADD CONSTRAINT fk_addresses_towns
        FOREIGN KEY (town_id) REFERENCES towns (id);

ALTER TABLE `employees`
    ADD CONSTRAINT fk_employees_department
        FOREIGN KEY (department_id) REFERENCES departments (id),
    ADD CONSTRAINT fk_employees_address
        FOREIGN KEY (address_id) REFERENCES addresses (id);

--- Solution to submit below ---

INSERT INTO `towns` (name) VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas');

INSERT INTO `departments` (name) VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance');

INSERT INTO `employees` (first_name, middle_name, last_name, job_title, department_id, hire_date, salary) VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1, '2004-03-02', 4000.00),
('Maria', 'Petrova', 'Ivanova', 'Intern', 5, '2016-08-28', 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO', 2, '2007-12-09', 3000.00),
('Peter', 'Pan', 'Pan', 'Intern', 3, '2016-08-28', 599.88);