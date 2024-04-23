DROP SCHEMA IF EXISTS Kallpa_Sneakers; 
CREATE SCHEMA IF NOT EXISTS Kallpa_Sneakers;
USE Kallpa_Sneakers;

/*Creamos tabla cliente*/
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `ID_Cliente` int NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(50) DEFAULT NULL,
  `Dirreccion` varchar(50) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Saldo` decimal(10,2) DEFAULT NULL,
  `Ultima_Modificacion` date DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente`)
);

/*Creamos tabla transporte*/
DROP TABLE IF EXISTS `transporte`;
CREATE TABLE `transporte` (
  `ID_Transporte` int NOT NULL AUTO_INCREMENT,
  `Transporte` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Telefono` varchar(30) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Transporte`)
) ;


/*Creamos tabla proveedor*/
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor` (
  `ID_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Proveedor` varchar(30) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Localidad` varchar(30) DEFAULT NULL,
  `Provincia` varchar(30) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Proveedor`)
);


/*Creamos tabla materia prima*/
DROP TABLE IF EXISTS `materia_prima`;
CREATE TABLE `materia_prima` (
  `ID_Materia_Prima` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Rendimiemto_por_par` float DEFAULT NULL,
  `Precio_por_par` decimal(10,2) DEFAULT NULL,
  `ID_Proveedor` int DEFAULT NULL,
  `Ultima_Modificacion` date DEFAULT NULL,
  PRIMARY KEY (`ID_Materia_Prima`),
  KEY `ID_Proveedor` (`ID_Proveedor`),
  CONSTRAINT `materia_prima_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`)
);

/*Creamos tabla articulo*/
DROP TABLE IF EXISTS `articulo`;
CREATE TABLE `articulo` (
  `ID_Articulo` int NOT NULL AUTO_INCREMENT,
  `Articulo` varchar(10) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Talles` varchar(30) DEFAULT NULL,
  `Genero` enum('Masculino','Femenino','Unisex') DEFAULT NULL,
  `Ultima_Modificacion` date DEFAULT NULL,
  PRIMARY KEY (`ID_Articulo`)
);


/*Creamos tabla venta*/
DROP TABLE IF EXISTS `venta`;
CREATE TABLE `venta` (
  `ID_Venta` int NOT NULL AUTO_INCREMENT,
  `ID_Articulo` int DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `ID_Cliente` int DEFAULT NULL,
  `Color` varchar(100) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `ID_Transporte` int DEFAULT NULL,
  PRIMARY KEY (`ID_Venta`),
  KEY `ID_Articulo` (`ID_Articulo`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Transporte` (`ID_Transporte`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ID_Articulo`) REFERENCES `articulo` (`ID_Articulo`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`ID_Transporte`) REFERENCES `transporte` (`ID_Transporte`)
);


/*Creamos tabla articulo materia prima*/
DROP TABLE IF EXISTS `articulo_materia_prima`;
CREATE TABLE `articulo_materia_prima` (
  `ID_Articulo` int NOT NULL,
  `ID_Materia_Prima` int NOT NULL,
  PRIMARY KEY (`ID_Articulo`,`ID_Materia_Prima`),
  KEY `ID_Materia_Prima` (`ID_Materia_Prima`),
  CONSTRAINT `articulo_materia_prima_ibfk_1` FOREIGN KEY (`ID_Articulo`) REFERENCES `articulo` (`ID_Articulo`),
  CONSTRAINT `articulo_materia_prima_ibfk_2` FOREIGN KEY (`ID_Materia_Prima`) REFERENCES `materia_prima` (`ID_Materia_Prima`)
);


/*Creamos tabla auditoria general*/
DROP TABLE IF EXISTS `auditoria_general`;
CREATE TABLE `auditoria_general` (
    `ID_Auditoria` INT AUTO_INCREMENT,
    `Tabla_Afectada` VARCHAR(255) NOT NULL,
    `Accion_Realizada` ENUM('INSERT', 'UPDATE', 'DELETE') NOT NULL,
    `Periodo_Accion` ENUM('AFTER', 'BEFORE'),
    `Fecha_Hora` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `Usuario` VARCHAR(255) NOT NULL,
    `Detalles` TEXT,
    PRIMARY KEY (`ID_Auditoria`)
);

