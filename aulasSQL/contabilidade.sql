-- MySQL Script generated by MySQL Workbench
-- Wed Apr 29 23:18:04 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema contabilidade
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema contabilidade
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `contabilidade` DEFAULT CHARACTER SET utf8 ;
USE `contabilidade` ;

-- -----------------------------------------------------
-- Table `contabilidade`.`Empresa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contabilidade`.`Empresa` ;

CREATE TABLE IF NOT EXISTS `contabilidade`.`Empresa` (
  `empID` INT NOT NULL AUTO_INCREMENT,
  `empNome` VARCHAR(45) NOT NULL,
  `empCNPJ` VARCHAR(14) NOT NULL,
  `empTelefone` VARCHAR(11) NULL,
  PRIMARY KEY (`empID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contabilidade`.`Administrador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contabilidade`.`Administrador` ;

CREATE TABLE IF NOT EXISTS `contabilidade`.`Administrador` (
  `admID` INT NOT NULL,
  `admNome` VARCHAR(45) NOT NULL,
  `admCPF` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`admID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contabilidade`.`Adm-Emp`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contabilidade`.`Adm-Emp` ;

CREATE TABLE IF NOT EXISTS `contabilidade`.`Adm-Emp` (
  `adeID` INT NOT NULL,
  `adeEmpID` INT NOT NULL,
  `adeAdmID` INT NOT NULL,
  PRIMARY KEY (`adeID`),
  INDEX `FKadmID_idx` (`adeAdmID` ASC) VISIBLE,
  INDEX `FKempID_idx` (`adeEmpID` ASC) VISIBLE,
  CONSTRAINT `FKadmID`
    FOREIGN KEY (`adeAdmID`)
    REFERENCES `contabilidade`.`Administrador` (`admID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKempID`
    FOREIGN KEY (`adeEmpID`)
    REFERENCES `contabilidade`.`Empresa` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contabilidade`.`PlanoDeContas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contabilidade`.`PlanoDeContas` ;

CREATE TABLE IF NOT EXISTS `contabilidade`.`PlanoDeContas` (
  `pdcID` INT NOT NULL,
  `pdcValor` DOUBLE NOT NULL,
  `pdcData` DATE NOT NULL,
  `pdcEmpID` INT NOT NULL,
  PRIMARY KEY (`pdcID`),
  INDEX `FKempID_idx` (`pdcEmpID` ASC) VISIBLE,
  CONSTRAINT `FKempID`
    FOREIGN KEY (`pdcEmpID`)
    REFERENCES `contabilidade`.`Empresa` (`empID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contabilidade`.`Tipo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contabilidade`.`Tipo` ;

CREATE TABLE IF NOT EXISTS `contabilidade`.`Tipo` (
  `tpoId` INT NOT NULL,
  `tpoDescricao` VARCHAR(255) NULL,
  PRIMARY KEY (`tpoId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `contabilidade`.`TipoPlanoContas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `contabilidade`.`TipoPlanoContas` ;

CREATE TABLE IF NOT EXISTS `contabilidade`.`TipoPlanoContas` (
  `tpcID` INT NOT NULL,
  `tpcPdcId` INT NOT NULL,
  `tpcTpoID` INT NOT NULL,
  PRIMARY KEY (`tpcID`),
  INDEX `FKtpoID_idx` (`tpcTpoID` ASC) VISIBLE,
  INDEX `FKpdcID_idx` (`tpcPdcId` ASC) VISIBLE,
  CONSTRAINT `FKtpoID`
    FOREIGN KEY (`tpcTpoID`)
    REFERENCES `contabilidade`.`Tipo` (`tpoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FKpdcID`
    FOREIGN KEY (`tpcPdcId`)
    REFERENCES `contabilidade`.`PlanoDeContas` (`pdcID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;