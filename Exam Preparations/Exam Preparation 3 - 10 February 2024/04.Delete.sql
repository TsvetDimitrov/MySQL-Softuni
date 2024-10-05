SET FOREIGN_KEY_CHECKS=0; -- to disable them

DELETE FROM preserves 
WHERE established_on IS NULL;

SET FOREIGN_KEY_CHECKS=1; -- to enable them