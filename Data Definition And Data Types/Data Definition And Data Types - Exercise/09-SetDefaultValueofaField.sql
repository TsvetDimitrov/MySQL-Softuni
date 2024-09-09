-- 9. Set Default Value of a Field --

ALTER TABLE `users`
MODIFY  COLUMN last_login_time 
TIMESTAMP 
NOT NULL DEFAULT CURRENT_TIMESTAMP;