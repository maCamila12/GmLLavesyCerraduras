-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema BaseDeDatos1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BaseDeDatos1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BaseDeDatos1` DEFAULT CHARACTER SET utf8 ;
USE `BaseDeDatos1` ;

-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Pagos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Pagos` (
  `idPagos` INT NOT NULL AUTO_INCREMENT,
  `FechaPago` DATE NOT NULL,
  `Total` DECIMAL NOT NULL,
  `MetodoPago` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idPagos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Citas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Citas` (
  `idCitas` INT NOT NULL AUTO_INCREMENT,
  `NombreCliente` VARCHAR(100) NULL,
  `NombreTecnico` VARCHAR(100) NULL,
  `Servicio` VARCHAR(100) NULL,
  `FechaHora` DATETIME NULL,
  `Estado` VARCHAR(45) NULL,
  `Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`idCitas`, `Clientes_idClientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Clientes` (
  `idClientes` INT NOT NULL,
  `Nombre` VARCHAR(100) NULL,
  `TipoDocumento` VARCHAR(45) NULL,
  `NumeroDocumento` BIGINT(12) NULL,
  `Direccion` TEXT(350) NULL,
  `Telefono` BIGINT(12) NULL,
  `Correo` VARCHAR(50) NULL,
  `Pagos_idPagos` INT NOT NULL,
  `Citas_idCitas` INT NOT NULL,
  `Citas_Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`idClientes`, `Pagos_idPagos`, `Citas_idCitas`, `Citas_Clientes_idClientes`),
    FOREIGN KEY (`Pagos_idPagos`)
    REFERENCES `BaseDeDatos1`.`Pagos` (`idPagos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`Citas_idCitas` , `Citas_Clientes_idClientes`)
    REFERENCES `BaseDeDatos1`.`Citas` (`idCitas` , `Clientes_idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Servicios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Servicios` (
  `idServicios` INT NOT NULL,
  `FechaServicio` DATE NULL,
  `Descripcion` TEXT(350) NOT NULL,
  `Costo` DECIMAL NOT NULL,
  `Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`idServicios`, `Clientes_idClientes`),
    FOREIGN KEY (`Clientes_idClientes`)
    REFERENCES `BaseDeDatos1`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Productos` (
  `idProductos` INT NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Descripcion` TEXT NULL,
  `Precio` DECIMAL NOT NULL,
  PRIMARY KEY (`idProductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Pedidos` (
  `idPedidos` INT NOT NULL AUTO_INCREMENT,
  `FechaPedido` DATE NOT NULL,
  `Precio` DECIMAL NOT NULL,
  PRIMARY KEY (`idPedidos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Proveedores` (
  `idProveedores` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Direccion` TEXT(350) NULL,
  `Telefono` BIGINT(12) NULL,
  `Correo` VARCHAR(100) NULL,
  `Productos_idProductos` INT NOT NULL,
  `Pedidos_idPedidos` INT NOT NULL,
  PRIMARY KEY (`idProveedores`, `Productos_idProductos`, `Pedidos_idPedidos`),
    FOREIGN KEY (`Productos_idProductos`)
    REFERENCES `BaseDeDatos1`.`Productos` (`idProductos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (`Pedidos_idPedidos`)
    REFERENCES `BaseDeDatos1`.`Pedidos` (`idPedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BaseDeDatos1`.`Empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BaseDeDatos1`.`Empleados` (
  `idEmpleados` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(100) NOT NULL,
  `Direccion` TEXT(350) NULL,
  `Telefono` BIGINT(12) NULL,
  `Correo` VARCHAR(100) NULL,
  `Salario` DECIMAL NULL,
  `Puesto` VARCHAR(50) NULL,
  `Citas_idCitas` INT NOT NULL,
  `Citas_Clientes_idClientes` INT NOT NULL,
  PRIMARY KEY (`idEmpleados`, `Citas_idCitas`, `Citas_Clientes_idClientes`),
    FOREIGN KEY (`Citas_idCitas` , `Citas_Clientes_idClientes`)
    REFERENCES `BaseDeDatos1`.`Citas` (`idCitas` , `Clientes_idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
