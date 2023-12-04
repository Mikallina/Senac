-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hospital_db_michelle
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hospital_db_michelle
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospital_db_michelle` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `hospital_db_michelle` ;

-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`especialidades` (
  `id_especialidade` INT NOT NULL,
  `nome_especialidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_especialidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`cadastro_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`cadastro_medico` (
  `id_medico` INT NOT NULL,
  `nome_medico` VARCHAR(45) NOT NULL,
  `cpf_medico` VARCHAR(45) NOT NULL,
  `email_medico` VARCHAR(45) NOT NULL,
  `em_atividade` BIT(1) NULL DEFAULT NULL,
  `especialidades_id_especialidade` INT NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `crm` VARCHAR(45) NOT NULL,
  `uf_crm` VARCHAR(2) NOT NULL,
  `endereco_completo` VARCHAR(500) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_medico`),
  INDEX `fk_cadastro_medico_especialidades1_idx` (`especialidades_id_especialidade` ASC) VISIBLE,
  CONSTRAINT `fk_cadastro_medico_especialidades1`
    FOREIGN KEY (`especialidades_id_especialidade`)
    REFERENCES `hospital_db_michelle`.`especialidades` (`id_especialidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`convenio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`convenio` (
  `id_convenio` INT NOT NULL,
  `nome_convenio` VARCHAR(45) NOT NULL,
  `cnpj_convenio` VARCHAR(45) NOT NULL,
  `tempo_carencia` INT NOT NULL,
  PRIMARY KEY (`id_convenio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`cadastro_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`cadastro_paciente` (
  `id_paciente` INT NOT NULL,
  `cpf_paciente` VARCHAR(45) NOT NULL,
  `rg_paciente` VARCHAR(45) NOT NULL,
  `nome_paciente` VARCHAR(100) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `numero_carteira_convenio` INT NULL DEFAULT NULL,
  `id_convenio` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  INDEX `id_convenio_idx` (`id_convenio` ASC) VISIBLE,
  CONSTRAINT `idconvenio`
    FOREIGN KEY (`id_convenio`)
    REFERENCES `hospital_db_michelle`.`convenio` (`id_convenio`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`consultas` (
  `id_consulta` INT NOT NULL AUTO_INCREMENT,
  `data_consulta` DATE NOT NULL,
  `hora_consulta` TIME NOT NULL,
  `valor_consulta` DOUBLE NOT NULL,
  `id_paciente` INT NOT NULL,
  `id_medico` INT NOT NULL,
  PRIMARY KEY (`id_consulta`),
  INDEX `id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `id_medico_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `hospital_db_michelle`.`cadastro_medico` (`id_medico`),
  CONSTRAINT `id_paciente`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `hospital_db_michelle`.`cadastro_paciente` (`id_paciente`))
ENGINE = InnoDB
AUTO_INCREMENT = 45
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`enfermeiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`enfermeiro` (
  `id_enfermeiro` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `cpf` VARCHAR(45) NOT NULL,
  `cre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_enfermeiro`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`tipo_quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`tipo_quarto` (
  `id_tipo_quarto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `valor_diaria` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id_tipo_quarto`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`quarto` (
  `id_quarto` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NOT NULL,
  `tipo_quarto_id` INT NOT NULL,
  PRIMARY KEY (`id_quarto`),
  INDEX `fk_quarto_tipo_quarto_idx` (`tipo_quarto_id` ASC) VISIBLE,
  CONSTRAINT `fk_quarto_tipo_quarto`
    FOREIGN KEY (`tipo_quarto_id`)
    REFERENCES `hospital_db_michelle`.`tipo_quarto` (`id_tipo_quarto`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`internacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`internacao` (
  `id_internacao` INT NOT NULL AUTO_INCREMENT,
  `data_entrada` DATE NOT NULL,
  `data_prev_alta` DATE NOT NULL,
  `data_alta` DATE NULL DEFAULT NULL,
  `procedimento` TEXT NULL DEFAULT NULL,
  `paciente_id` INT NOT NULL,
  `medico_id` INT NOT NULL,
  `quarto_id` INT NOT NULL,
  `enfermeiro_id_enfermeiro` INT NOT NULL,
  PRIMARY KEY (`id_internacao`),
  INDEX `fk_internacao_paciente_idx` (`paciente_id` ASC) VISIBLE,
  INDEX `fk_internacao_medico_idx` (`medico_id` ASC) VISIBLE,
  INDEX `fk_internacao_quarto_idx` (`quarto_id` ASC) VISIBLE,
  INDEX `fk_internacao_enfermeiro1_idx` (`enfermeiro_id_enfermeiro` ASC) VISIBLE,
  CONSTRAINT `fk_internacao_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital_db_michelle`.`cadastro_medico` (`id_medico`),
  CONSTRAINT `fk_internacao_paciente`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital_db_michelle`.`cadastro_paciente` (`id_paciente`),
  CONSTRAINT `fk_internacao_quarto`
    FOREIGN KEY (`quarto_id`)
    REFERENCES `hospital_db_michelle`.`quarto` (`id_quarto`),
  CONSTRAINT `fk_internacao_enfermeiro1`
    FOREIGN KEY (`enfermeiro_id_enfermeiro`)
    REFERENCES `hospital_db_michelle`.`enfermeiro` (`id_enfermeiro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital_db_michelle`.`receita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_michelle`.`receita` (
  `id_receita` INT NOT NULL AUTO_INCREMENT,
  `medicamentos` VARCHAR(255) NOT NULL,
  `qtd_medicamentos` INT NOT NULL,
  `instrucoes_medicamentos` VARCHAR(500) NOT NULL,
  `id_consulta` INT NOT NULL,
  PRIMARY KEY (`id_receita`),
  INDEX `id_consultas_idx` (`id_consulta` ASC) VISIBLE,
  CONSTRAINT `id_consultas`
    FOREIGN KEY (`id_consulta`)
    REFERENCES `hospital_db_michelle`.`consultas` (`id_consulta`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
