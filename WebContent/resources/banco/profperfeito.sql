-- MySQL Script generated by MySQL Workbench
-- Qua 26 Dez 2018 19:38:28 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tipousuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipousuario` (
  `idtipousuario` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipousuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `senha` CHAR(64) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `data_nascimento` DATE NULL,
  `cpf` CHAR(11) NOT NULL,
  `tipoUsuario_idtipousuario` INT NULL,
  `endereco` VARCHAR(100) NULL,
  `telefone` CHAR(11) NULL,
  `formacao` VARCHAR(45) NULL,
  `email_pagseguro` VARCHAR(100) NULL,
  `estado` CHAR(2) NULL,
  `cidade` VARCHAR(50) NULL,
  `cep` CHAR(8) NULL,
  `foto` VARCHAR(100) NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `fk_usuario_tipoUsuario1_idx` (`tipoUsuario_idtipousuario` ASC),
  CONSTRAINT `fk_usuario_tipoUsuario1`
    FOREIGN KEY (`tipoUsuario_idtipousuario`)
    REFERENCES `mydb`.`tipousuario` (`idtipousuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categoria` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`curso` (
  `idcurso` INT NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` INT NOT NULL,
  `categoria_idcategoria` INT NOT NULL,
  `nome_curso` VARCHAR(45) NOT NULL,
  `carga_horaria` INT NOT NULL,
  `vagas` INT NOT NULL,
  `horario_Inicial` TIME NOT NULL,
  `horario_final` TIME NOT NULL,
  `data_Inicial` DATE NOT NULL,
  `data_final` DATE NOT NULL,
  `descricao` LONGTEXT NOT NULL,
  PRIMARY KEY (`idcurso`),
  INDEX `fk_curso_usuario_idx` (`usuario_idusuario` ASC),
  INDEX `fk_curso_categoria1_idx` (`categoria_idcategoria` ASC),
  CONSTRAINT `fk_curso_usuario`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_curso_categoria1`
    FOREIGN KEY (`categoria_idcategoria`)
    REFERENCES `mydb`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`subcategoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`subcategoria` (
  `idsubcategoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `categoria_idcategoria` INT NOT NULL,
  PRIMARY KEY (`idsubcategoria`),
  INDEX `fk_subcategoria_categoria1_idx` (`categoria_idcategoria` ASC),
  CONSTRAINT `fk_subcategoria_categoria1`
    FOREIGN KEY (`categoria_idcategoria`)
    REFERENCES `mydb`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sala`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sala` (
  `idsala` INT NOT NULL AUTO_INCREMENT,
  `curso_idcurso` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idsala`),
  INDEX `fk_sala_curso1_idx` (`curso_idcurso` ASC),
  INDEX `fk_sala_usuario1_idx` (`usuario_idusuario` ASC),
  CONSTRAINT `fk_sala_curso1`
    FOREIGN KEY (`curso_idcurso`)
    REFERENCES `mydb`.`curso` (`idcurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sala_usuario1`
    FOREIGN KEY (`usuario_idusuario`)
    REFERENCES `mydb`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tipopagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tipopagamento` (
  `idtipopagamento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipopagamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `ususario_idusuario` INT NOT NULL,
  `data_geracao` DATETIME NOT NULL,
  `parcela` INT NOT NULL,
  `id_pague_seguro` VARCHAR(45) NOT NULL,
  `tipopagamento_idtipopagamento` INT NOT NULL,
  PRIMARY KEY (`idcompra`),
  INDEX `fk_compra_ususario1_idx` (`ususario_idusuario` ASC),
  INDEX `fk_compra_tipopagamento1_idx` (`tipopagamento_idtipopagamento` ASC),
  CONSTRAINT `fk_compra_ususario1`
    FOREIGN KEY (`ususario_idusuario`)
    REFERENCES `mydb`.`ususario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_tipopagamento1`
    FOREIGN KEY (`tipopagamento_idtipopagamento`)
    REFERENCES `mydb`.`tipopagamento` (`idtipopagamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
