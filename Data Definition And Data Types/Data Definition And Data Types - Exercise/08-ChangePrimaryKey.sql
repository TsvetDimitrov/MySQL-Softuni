-- 08. Change Primary Key --

ALTER TABLE `users` 
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users
PRIMARY KEY `users`(`id`, `username`);
