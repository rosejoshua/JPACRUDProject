-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bulletindb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bulletindb` ;

-- -----------------------------------------------------
-- Schema bulletindb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bulletindb` DEFAULT CHARACTER SET utf8 ;
USE `bulletindb` ;

-- -----------------------------------------------------
-- Table `bulletin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bulletin` ;

CREATE TABLE IF NOT EXISTS `bulletin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `author` VARCHAR(20) NOT NULL,
  `post` VARCHAR(140) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS bulletinuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'bulletinuser'@'localhost' IDENTIFIED BY 'bulletinuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bulletinuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `bulletin`
-- -----------------------------------------------------
START TRANSACTION;
USE `bulletindb`;
INSERT INTO `bulletin` (`id`, `author`, `post`) VALUES (1, 'Josh', 'This is a post!');
INSERT INTO `bulletin` (`id`, `author`, `post`) VALUES (2, 'Morgan', 'Hello World!');
INSERT INTO `bulletin` (`id`, `author`, `post`) VALUES (3, 'Trolly Trollface', 'I hate you.');

COMMIT;

