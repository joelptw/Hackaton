-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hackaton
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hackaton
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hackaton` DEFAULT CHARACTER SET latin1 ;
USE `hackaton` ;

-- -----------------------------------------------------
-- Table `hackaton`.`tipo_evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackaton`.`tipo_evento` (
  `idtipo` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `subtipo` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `creditaje` DECIMAL(2,2) NOT NULL,
  PRIMARY KEY (`idtipo`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `hackaton`.`evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackaton`.`evento` (
  `idevento` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `fecha` VARCHAR(100) NOT NULL,
  `hora` VARCHAR(100) NOT NULL,
  `lugar` VARCHAR(100) NOT NULL,
  `ponente` VARCHAR(100) NOT NULL,
  `tipo_evento_idtipo` INT(11) NOT NULL,
  `creditaje` DECIMAL(2,2) NOT NULL,
  PRIMARY KEY (`idevento`, `tipo_evento_idtipo`),
  INDEX `fk_evento_tipo_evento1_idx` (`tipo_evento_idtipo` ASC),
  CONSTRAINT `fk_evento_tipo_evento1`
    FOREIGN KEY (`tipo_evento_idtipo`)
    REFERENCES `hackaton`.`tipo_evento` (`idtipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `hackaton`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackaton`.`persona` (
  `idpersona` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellidos` VARCHAR(100) NOT NULL,
  `doc_identidad` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(100) NOT NULL,
  `f_nacimiento` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `carrera` VARCHAR(100) NOT NULL,
  `creditos` DECIMAL(2,2) NOT NULL,
  `foto` LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (`idpersona`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `hackaton`.`evento_has_persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackaton`.`evento_has_persona` (
  `evento_idevento` INT(11) NOT NULL,
  `persona_idpersona` INT(11) NOT NULL,
  `flag_registro` VARCHAR(1) NOT NULL DEFAULT '0',
  `flag_asistencia` VARCHAR(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`evento_idevento`, `persona_idpersona`),
  INDEX `fk_evento_has_persona_persona1_idx` (`persona_idpersona` ASC),
  INDEX `fk_evento_has_persona_evento_idx` (`evento_idevento` ASC),
  CONSTRAINT `fk_evento_has_persona_evento`
    FOREIGN KEY (`evento_idevento`)
    REFERENCES `hackaton`.`evento` (`idevento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_evento_has_persona_persona1`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `hackaton`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `hackaton`.`rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackaton`.`rol` (
  `idrol` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(100) NOT NULL,
  `creditaje` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idrol`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `hackaton`.`persona_has_rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hackaton`.`persona_has_rol` (
  `persona_idpersona` INT(11) NOT NULL,
  `rol_idrol` INT(11) NOT NULL,
  PRIMARY KEY (`persona_idpersona`, `rol_idrol`),
  INDEX `fk_persona_has_rol_rol1_idx` (`rol_idrol` ASC),
  INDEX `fk_persona_has_rol_persona1_idx` (`persona_idpersona` ASC),
  CONSTRAINT `fk_persona_has_rol_persona1`
    FOREIGN KEY (`persona_idpersona`)
    REFERENCES `hackaton`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_has_rol_rol1`
    FOREIGN KEY (`rol_idrol`)
    REFERENCES `hackaton`.`rol` (`idrol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
