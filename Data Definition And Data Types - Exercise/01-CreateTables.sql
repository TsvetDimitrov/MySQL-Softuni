CREATE TABLE `minions`.`minions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `minions`.`towns` (
`town_id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(45) NOT NULL,
PRIMARY KEY (`town_id`));