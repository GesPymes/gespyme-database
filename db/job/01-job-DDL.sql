CREATE SCHEMA IF NOT EXISTS `job_database` DEFAULT CHARACTER SET utf8 ;
USE `job_database` ;

-- -----------------------------------------------------
-- Table `job_database`.`jobs_by_calendar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `job_database`.`jobs_by_calendar` (
                                                                 `jobs_by_calendar_id` VARCHAR(255) NOT NULL,
    `job_id` VARCHAR(255) NOT NULL,
    `calendar_id` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`jobs_by_calendar_id`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `job_database`.`periodic_job`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `job_database`.`periodic_job` (
                                                             `job_id` VARCHAR(255) NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `employee_id` VARCHAR(255) NOT NULL,
    `periodicity` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`job_id`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `job_database`.`job`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `job_database`.`job` (
                                                    `job_id` VARCHAR(255) NOT NULL,
    `customer_id` VARCHAR(255) NOT NULL,
    `employee_id` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`job_id`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `job_database`.`appointment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `job_database`.`appointment` (
                                                            `appointment_id` VARCHAR(255) NOT NULL,
    `calendar_id` VARCHAR(255) NOT NULL,
    `job_id` VARCHAR(255) NOT NULL,
    `start_date` TIMESTAMP NOT NULL,
    `end_date` TIMESTAMP NOT NULL,
    `status` VARCHAR(255) NOT NULL,
    `next_end_date` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`appointment_id`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `job_database`.`users_by_calendar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `job_database`.`users_by_calendar` (
                                                                  `users_by_calendar_id` VARCHAR(255) NOT NULL,
    `calendar_id` VARCHAR(255) NOT NULL,
    `user_email` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`users_by_calendar_id`)
    ) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `job_database`.`calendar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `job_database`.`calendar` (
                                                         `calendar_id` VARCHAR(255) NOT NULL,
    `calendar_name` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`calendar_id`)
    ) ENGINE = InnoDB;

