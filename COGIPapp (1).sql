-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema COGIPapp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema COGIPapp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `COGIPapp` DEFAULT CHARACTER SET utf8 ;
USE `COGIPapp` ;

-- -----------------------------------------------------
-- Table `COGIPapp`.`personnes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`personnes` (
  `idpersonnes` INT NOT NULL AUTO_INCREMENT,
  `nom_has_personne` VARCHAR(45) NULL,
  `prenom_has_personne` VARCHAR(45) NULL,
  `telephone_has_personne` VARCHAR(45) NULL,
  `email_has_personne` VARCHAR(45) NULL,
  PRIMARY KEY (`idpersonnes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`societes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`societes` (
  `idsocietes` INT NOT NULL AUTO_INCREMENT,
  `nom_societe` VARCHAR(45) NULL,
  `adresse_societe` VARCHAR(45) NULL,
  `pays_societe` VARCHAR(45) NULL,
  `TVA_societe` VARCHAR(45) NULL,
  `telephone_societe` VARCHAR(45) NULL,
  PRIMARY KEY (`idsocietes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`factures`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`factures` (
  `idfactures` INT NOT NULL AUTO_INCREMENT,
  `numero-facture` VARCHAR(45) NULL,
  `date-facture` VARCHAR(45) NULL,
  `objet-facture` VARCHAR(45) NULL,
  PRIMARY KEY (`idfactures`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`type` (
  `idtype` INT NOT NULL AUTO_INCREMENT,
  `type_societe` VARCHAR(45) NULL,
  PRIMARY KEY (`idtype`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`personnes_has_factures`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`personnes_has_factures` (
  `personnes_idpersonnes` INT NOT NULL,
  `factures_idfactures` INT NOT NULL,
  PRIMARY KEY (`personnes_idpersonnes`, `factures_idfactures`),
  INDEX `fk_PERSONNES_has_FACTURES_FACTURES1_idx` (`factures_idfactures` ASC),
  INDEX `fk_PERSONNES_has_FACTURES_PERSONNES_idx` (`personnes_idpersonnes` ASC),
  CONSTRAINT `fk_PERSONNES_has_FACTURES_PERSONNES`
    FOREIGN KEY (`personnes_idpersonnes`)
    REFERENCES `COGIPapp`.`personnes` (`idpersonnes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONNES_has_FACTURES_FACTURES1`
    FOREIGN KEY (`factures_idfactures`)
    REFERENCES `COGIPapp`.`factures` (`idfactures`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`personnes_has_societes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`personnes_has_societes` (
  `personnes_idpersonnes` INT NOT NULL,
  `societes_idsocietes` INT NOT NULL,
  PRIMARY KEY (`personnes_idpersonnes`, `societes_idsocietes`),
  INDEX `fk_PERSONNES_has_SOCIETES_SOCIETES1_idx` (`societes_idsocietes` ASC),
  INDEX `fk_PERSONNES_has_SOCIETES_PERSONNES1_idx` (`personnes_idpersonnes` ASC),
  CONSTRAINT `fk_PERSONNES_has_SOCIETES_PERSONNES1`
    FOREIGN KEY (`personnes_idpersonnes`)
    REFERENCES `COGIPapp`.`personnes` (`idpersonnes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONNES_has_SOCIETES_SOCIETES1`
    FOREIGN KEY (`societes_idsocietes`)
    REFERENCES `COGIPapp`.`societes` (`idsocietes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`societes_has_factures`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`societes_has_factures` (
  `societes_idsocietes` INT NOT NULL,
  `factures_idfactures` INT NOT NULL,
  PRIMARY KEY (`societes_idsocietes`, `factures_idfactures`),
  INDEX `fk_SOCIETES_has_FACTURES_FACTURES1_idx` (`factures_idfactures` ASC),
  INDEX `fk_SOCIETES_has_FACTURES_SOCIETES1_idx` (`societes_idsocietes` ASC),
  CONSTRAINT `fk_SOCIETES_has_FACTURES_SOCIETES1`
    FOREIGN KEY (`societes_idsocietes`)
    REFERENCES `COGIPapp`.`societes` (`idsocietes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SOCIETES_has_FACTURES_FACTURES1`
    FOREIGN KEY (`factures_idfactures`)
    REFERENCES `COGIPapp`.`factures` (`idfactures`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`societes_has_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`societes_has_type` (
  `societes_idsocietes` INT NOT NULL,
  `type_idtype` INT NOT NULL,
  PRIMARY KEY (`societes_idsocietes`, `type_idtype`),
  INDEX `fk_SOCIETES_has_TYPE_TYPE1_idx` (`type_idtype` ASC),
  INDEX `fk_SOCIETES_has_TYPE_SOCIETES1_idx` (`societes_idsocietes` ASC),
  CONSTRAINT `fk_SOCIETES_has_TYPE_SOCIETES1`
    FOREIGN KEY (`societes_idsocietes`)
    REFERENCES `COGIPapp`.`societes` (`idsocietes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_SOCIETES_has_TYPE_TYPE1`
    FOREIGN KEY (`type_idtype`)
    REFERENCES `COGIPapp`.`type` (`idtype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `COGIPapp`.`type_has_factures`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `COGIPapp`.`type_has_factures` (
  `type_idtype` INT NOT NULL,
  `factures_idfactures` INT NOT NULL,
  PRIMARY KEY (`type_idtype`, `factures_idfactures`),
  INDEX `fk_TYPE_has_FACTURES_FACTURES1_idx` (`factures_idfactures` ASC),
  INDEX `fk_TYPE_has_FACTURES_TYPE1_idx` (`type_idtype` ASC),
  CONSTRAINT `fk_TYPE_has_FACTURES_TYPE1`
    FOREIGN KEY (`type_idtype`)
    REFERENCES `COGIPapp`.`type` (`idtype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TYPE_has_FACTURES_FACTURES1`
    FOREIGN KEY (`factures_idfactures`)
    REFERENCES `COGIPapp`.`factures` (`idfactures`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
