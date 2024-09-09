-- 10. Set Unique Field --

ALTER TABLE `users` MODIFY id INT NOT NULL;
ALTER TABLE `users` DROP PRIMARY KEY;
ALTER TABLE `users` ADD CONSTRAINT pk_users PRIMARY KEY(id);
ALTER TABLE `users` ADD CONSTRAINT uq_username UNIQUE (username);