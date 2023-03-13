-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema goaliedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `goaliedb` ;

-- -----------------------------------------------------
-- Schema goaliedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `goaliedb` DEFAULT CHARACTER SET utf8 ;
USE `goaliedb` ;

-- -----------------------------------------------------
-- Table `shot`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shot` ;

CREATE TABLE IF NOT EXISTS `shot` (
  `shot_id` INT NOT NULL AUTO_INCREMENT,
  `screen` TINYINT NULL,
  `game_id` INT NULL,
  `low` TINYINT NULL,
  `goal` TINYINT NULL,
  `save_selection` ENUM('UP', 'BLOCK_BTRFLY', 'REACT_BTRFLY', 'POSTLEAN') NULL,
  `zone` ENUM('1_LEFT', '2_LEFT', '3_LEFT', '4_LEFT', '5', '4_RIGHT', '3_RIGHT', '2_RIGHT', '1_RIGHT') NULL,
  `note` VARCHAR(80) NULL,
  `situation` ENUM('SH', 'PP', 'ES') NULL,
  `rebound` TINYINT NULL,
  PRIMARY KEY (`shot_id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS goalie1@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'goalie1'@'localhost' IDENTIFIED BY 'goalie1';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'goalie1'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `shot`
-- -----------------------------------------------------
START TRANSACTION;
USE `goaliedb`;
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (1, 0, 1, 0, 0, 'UP', '3_RIGHT', 'slapshot', 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (2, 0, 1, 1, 0, 'BLOCK_BTRFLY', '2_LEFT', NULL, 'ES', 0);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (3, 0, 1, 0, 0, 'UP', '5', NULL, 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (4, 1, 1, 0, 0, 'UP', '4_RIGHT', NULL, 'ES', 0);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (5, 0, 1, 1, 0, 'BLOCK_BTRFLY', '2_LEFT', NULL, 'ES', 0);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (6, 1, 1, 0, 0, 'UP', '5', NULL, 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (7, 0, 1, 1, 0, 'POSTLEAN', '1_LEFT', NULL, 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (8, 0, 1, 1, 0, 'POSTLEAN', '2_LEFT', NULL, 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (9, 0, 1, 0, 1, 'REACT_BTRFLY', '3_LEFT', NULL, 'SH', 0);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (10, 1, 1, 0, 0, 'REACT_BTRFLY', '4_RIGHT', '2 on 1', 'SH', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (11, 0, 2, 1, 0, 'POSTLEAN', '2_LEFT', NULL, 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (12, 1, 2, 1, 0, 'REACT_BTRFLY', '2_LEFT', NULL, 'ES', 1);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (13, 0, 2, 0, 1, 'BLOCK_BTRFLY', '5', NULL, 'ES', 0);
INSERT INTO `shot` (`shot_id`, `screen`, `game_id`, `low`, `goal`, `save_selection`, `zone`, `note`, `situation`, `rebound`) VALUES (14, 0, 2, 0, 0, 'UP', '1_LEFT', NULL, 'ES', 0);

COMMIT;

