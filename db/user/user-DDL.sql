-- MySQL Script generated by MySQL Workbench
-- Sat Nov  9 13:11:44 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema user_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `user_database` DEFAULT CHARACTER SET utf8 ;
USE `user_database` ;

-- -----------------------------------------------------
-- Table `user_database`.`app_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `user_database`.`app_user` (
  `user_id` VARCHAR(45) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `email` VARCHAR(255),
  `user_name` VARCHAR(255) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `last_time_logged_in` VARCHAR(255) NOT NULL,
  `creation_date` VARCHAR(255) NOT NULL,
  `last_modification_date` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;

CREATE USER 'admin' IDENTIFIED BY 'admin-gespyme-2024-99Pabcde';

GRANT ALL PRIVILEGES ON user_database.* TO 'admin'@'%';

CREATE USER 'reader' IDENTIFIED BY 'reader-gespyme-2024-99Qabcde';
GRANT SELECT ON TABLE user_database.* TO 'reader';

CREATE USER 'employee' IDENTIFIED BY 'employee-gespyme-2024-99Qabcde';
GRANT SELECT, INSERT, TRIGGER ON TABLE user_database.* TO 'employee';
GRANT SELECT ON TABLE user_database.* TO 'employee';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE user_database.* TO 'employee';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;