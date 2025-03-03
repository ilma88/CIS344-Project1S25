-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Pets Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pets Table` (
  `PetID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Breed` VARCHAR(45) NOT NULL,
  `Age` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(45) NOT NULL,
  `Medical History` VARCHAR(45) NOT NULL,
  `VaccinationRecords` VARCHAR(45) NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Pets Tablecol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PetID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Adopter Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Adopter Table` (
  `AdopterID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `ContactDetails` VARCHAR(45) NOT NULL,
  `Adopter Tablecol` VARCHAR(45) NOT NULL,
  `Adopter Tablecol1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AdopterID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Medical Records Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Medical Records Table` (
  `MedicalRecordID` INT NOT NULL,
  `PetID` VARCHAR(45) NOT NULL,
  `TreatmentDetails` VARCHAR(45) NOT NULL,
  `Vetname` VARCHAR(45) NOT NULL,
  `Dateofvisit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`MedicalRecordID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Adopt Table (Relationship Table)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Adopt Table (Relationship Table)` (
  `AdopterID` INT NOT NULL,
  `PetID` VARCHAR(45) NOT NULL,
  `AdoptionDate` VARCHAR(45) NOT NULL,
  `Primary Key` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AdopterID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Reserves Table (Relationship Table)`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Reserves Table (Relationship Table)` (
  `AdopterID` INT NOT NULL,
  `PetID` VARCHAR(45) NOT NULL,
  `ReservationData` VARCHAR(45) NOT NULL,
  `Primary Key` VARCHAR(45) NULL,
  PRIMARY KEY (`AdopterID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
