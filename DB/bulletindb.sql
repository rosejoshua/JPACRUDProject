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
  `author` VARCHAR(25) NOT NULL,
  `post` VARCHAR(140) NOT NULL,
  `date_time` DATETIME NOT NULL,
  `in_reply_to` INT NULL,
  `is_edited` TINYINT NULL DEFAULT 0,
  `is_deleted` TINYINT NULL DEFAULT 0,
  `upvotes` INT NULL DEFAULT 0,
  `downvotes` INT NULL DEFAULT 0,
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
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (1, 'Josh', 'This is a post!', '2021-02-20 15:34:11', NULL, 0, 0, 6, 1);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (2, 'Morgan', 'Hello World!', '2021-03-01 19:40:56', NULL, 1, 0, 3, 0);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (3, 'Trolly McTrollface', 'You suck lulz.', '2021-03-01 23:12:34', 1, 0, 0, 1, 8);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (4, 'Old Gregg', 'Do ya love me?', '2021-03-02 10:46:05', 3, 0, 0, 89, 0);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (5, 'Bobb', 'How do I delete this?', '2021-03-03 21:25:06', NULL, 0, 1, 0, 1);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (6, 'Karen', 'Please pick up your dog poop from my yard.', '2021-03-04 11:20:45', NULL, 0, 0, 4, 7);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (7, 'Elizabeth', 'couch 4 sale, pm me for details...', '2021-03-06 04:08:25', NULL, 0, 0, 2, 0);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (8, 'Barry', 'Looking for landscaping work? Call 123-345-4567', '2021-03-07 23:32:50', NULL, 0, 0, 0, 0);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (9, 'Pwn_n00bs_134', 'Its your dog poop now.', '2021-03-08 12:56:26', 6, 1, 0, 2, 34);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (10, 'RedMustang256', 'Nice website!', '2021-03-09 16:18:15', NULL, 0, 0, 5, 1);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (11, 'Ally', 'Is it recycle week?', '2021-03-12 03:28:13', NULL, 0, 0, 2, 1);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (12, 'Davey', 'Yes', '2021-03-12 03:29:10', 11, 0, 0, 0, 0);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (13, 'Josh', 'Updates to website coming soon! Stay tuned...', '2021-03-13 07:00:59', NULL, 0, 0, 1, 0);
INSERT INTO `bulletin` (`id`, `author`, `post`, `date_time`, `in_reply_to`, `is_edited`, `is_deleted`, `upvotes`, `downvotes`) VALUES (14, 'Trolly McTrollface', 'Good, cause this website sucks!', '2021-03-13 07:10:30', 13, 0, 0, 0, 2);

COMMIT;

