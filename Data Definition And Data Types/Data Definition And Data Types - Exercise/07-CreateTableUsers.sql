-- 07. Create Table Users --

CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(30) NOT NULL,
  `password` VARCHAR(26) NOT NULL,
  `profile_picture` BLOB NULL,
  `last_login_time` DATE NULL,
  `is_deleted` BIT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `users` (`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`) VALUES ('1', 'Tsvetomir', 'testpass1', 'pic1', '2024-05-10', 0);
INSERT INTO `users` (`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`) VALUES ('2', 'Ivan', 'testpass1', 'pic2', '2024-08-15', 0);
INSERT INTO `users` (`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`) VALUES ('3', 'Dragan', 'testpass1', 'pic3', '2024-08-25', 0);
INSERT INTO `users` (`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`) VALUES ('4', 'Petkan', 'testpass1', 'pic4', '2024-08-29', 1);
INSERT INTO `users` (`id`, `username`, `password`, `profile_picture`, `last_login_time`, `is_deleted`) VALUES ('5', 'Petranka', 'testpass1', 'pic4', '2024-08-30', 0);