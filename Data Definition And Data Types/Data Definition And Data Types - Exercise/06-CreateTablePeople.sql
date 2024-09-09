-- 06. Create Table People --

CREATE TABLE `people` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `picture` BLOB NULL,
  `height` DECIMAL(5,2) NULL,
  `weight` DECIMAL(5,2) NULL,
  `gender` CHAR NOT NULL,
  `birthdate` DATE NOT NULL,
  `biography` VARCHAR(300) NULL,
  PRIMARY KEY (`id`));

INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`) VALUES ('1', 'Tsvetomir', 'pictureone', '1.88', '86', 'm', '1999-09-04', '24 year old person with programming as a hobby.');
INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`) VALUES ('2', 'Ivan', 'picturetwo', '1.78', '76', 'm', '2000-01-15', 'Loves skiing and surfing.');
INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`) VALUES ('3', 'Dragan', 'picturethree', '2.00', '95', 'm', '1989-11-28', 'Has three children.');
INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`) VALUES ('4', 'Petkan', 'picturefour', '1.60', '55', 'm', '1989-10-14', 'Has two children.');
INSERT INTO `people` (`id`, `name`, `picture`, `height`, `weight`, `gender`, `birthdate`, `biography`) VALUES ('5', 'Petranka', 'picturefive', '1.65', '40', 'f', '1992-01-14', 'Pregnant.');
