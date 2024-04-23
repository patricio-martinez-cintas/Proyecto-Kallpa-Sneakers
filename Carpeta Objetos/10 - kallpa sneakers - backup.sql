CREATE DATABASE  IF NOT EXISTS `kallpa_sneakers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kallpa_sneakers`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: kallpa_sneakers
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `ID_Articulo` int NOT NULL AUTO_INCREMENT,
  `Articulo` varchar(10) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Talles` varchar(30) DEFAULT NULL,
  `Genero` enum('Masculino','Femenino','Unisex') DEFAULT NULL,
  `Ultima_Modificacion` date DEFAULT NULL,
  PRIMARY KEY (`ID_Articulo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'Huayra','Calzado urbano unisex base baja de P.V.C. de cuero ecologico blanca o negra',15500.00,'35 al 45','Unisex','2024-03-05'),(2,'Condor','Pancha hombre base baja de P.V.C. de cuero ecologico',14000.00,'39 al 45','Masculino','2024-03-05'),(3,'New Huyra','Calzado urbano unisex base baja de P.V.C. de cuero ecologico con lona beige, blanco y negro',15500.00,'35 al 45','Unisex','2024-03-05'),(4,'New Condor','Pancha hombre base baja de P.V.C. de cuero ecologico con lona',14000.00,'39 al 45','Masculino','2024-03-05'),(5,'New Nova','Calzado urbano hombre negro, blanco o gris de base media expanso de cuero ecologico con aplique de color marrón',17000.00,'39 al 44','Masculino','2024-03-05'),(6,'Nova','Calzado urbano hombre negro, blanco o gris de base media expanso de cuero ecologico',17000.00,'39 al 44','Masculino','2024-03-05'),(7,'Tinku','Calzado urbano hombre negro o blanco de base baja T.R. de cuero ecologico y apliques marrón',21000.00,'39 al 44','Masculino','2024-03-05'),(8,'Lisa','Calzado deportivo-urbano dama negro, blanco o gris de base media expanso de cuero ecologico y tela',18000.00,'35 al 40','Femenino','2024-03-05'),(9,'Kalla','Calzado  urbano de dama base alta  T.R. de cuero ecológico blanca, celeste, rosa o violeta',22500.00,'35 al 40','Femenino','2024-03-05'),(10,'New Pucara','Bota hombre base mediana de expanso de cuero ecológico negra o azul con apliques',18000.00,'39 al 44','Masculino','2024-03-05'),(11,'Pucara','Bota hombre base mediana de expanso de cuero ecológico negra o azul',18000.00,'39 al 44','Masculino','2024-03-05');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_materia_prima`
--

DROP TABLE IF EXISTS `articulo_materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo_materia_prima` (
  `ID_Articulo` int NOT NULL,
  `ID_Materia_Prima` int NOT NULL,
  PRIMARY KEY (`ID_Articulo`,`ID_Materia_Prima`),
  KEY `ID_Materia_Prima` (`ID_Materia_Prima`),
  CONSTRAINT `articulo_materia_prima_ibfk_1` FOREIGN KEY (`ID_Articulo`) REFERENCES `articulo` (`ID_Articulo`),
  CONSTRAINT `articulo_materia_prima_ibfk_2` FOREIGN KEY (`ID_Materia_Prima`) REFERENCES `materia_prima` (`ID_Materia_Prima`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_materia_prima`
--

LOCK TABLES `articulo_materia_prima` WRITE;
/*!40000 ALTER TABLE `articulo_materia_prima` DISABLE KEYS */;
INSERT INTO `articulo_materia_prima` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(9,1),(10,1),(11,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(1,4),(3,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(1,5),(3,5),(9,5),(10,5),(11,5),(1,6),(3,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(8,7),(9,7),(10,7),(11,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(11,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(11,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(8,10),(9,10),(10,10),(11,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(8,11),(9,11),(10,11),(11,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(8,12),(9,12),(10,12),(11,12),(9,13),(1,14),(2,14),(3,14),(4,14),(5,15),(6,15),(10,15),(11,15),(7,16),(1,17),(2,17),(3,17),(4,17),(5,17),(6,17),(7,17),(8,17),(9,17),(10,17),(11,17),(1,18),(2,18),(3,18),(4,18),(5,18),(6,18),(7,18),(8,18),(9,18),(10,18),(11,18),(8,19),(3,20),(4,20),(8,22);
/*!40000 ALTER TABLE `articulo_materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_general`
--

DROP TABLE IF EXISTS `auditoria_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_general` (
  `ID_Auditoria` int NOT NULL AUTO_INCREMENT,
  `Tabla_Afectada` varchar(255) NOT NULL,
  `Accion_Realizada` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `Periodo_Accion` enum('AFTER','BEFORE') DEFAULT NULL,
  `Fecha_Hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Usuario` varchar(255) NOT NULL,
  `Detalles` text,
  PRIMARY KEY (`ID_Auditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_general`
--

LOCK TABLES `auditoria_general` WRITE;
/*!40000 ALTER TABLE `auditoria_general` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Arco Iris (Milba)','Buenos Aires 1951','Monte Maiz','Córdoba','S/D','3468525603',0.00,'2024-03-04'),(2,'Gustavo Garcia','Congresales de Tucumán 262','Ballesteros','Córdoba','S/D','S/D',0.00,'2024-03-04'),(3,'Amatista Calzados (Sandra)','25 de Mayo & Presidente Roca','Justiniano Posse','Córdoba','S/D','3537583805',0.00,'2024-03-04'),(4,'Calzados Noe','Juan Domingo Perón 101','Tio Pujio','Córdoba','S/D','S/D',0.00,'2024-03-04'),(5,'Calzados AIDE (Maria Mercedes)','Córdoba 108','Inriville','Córdoba','S/D','346439561',0.00,'2024-03-04'),(6,'Calzados Chiru (Milena-Graciela Zamponi)','Sarmiento 845','Las Rosas','Santa Fe','S/D','3471676394',0.00,'2024-03-04'),(7,'Beatriz','S/D','Laguna Larga','Córdoba','S/D','S/D',0.00,'2024-03-04'),(8,'El Golazo (Maria Florencia)','Lavalle 992','Cañada de Gomez','Santa Fe','S/D','3471427339 / 3471524387',0.00,'2024-03-04'),(9,'Graciela','Virginia Manfredi Yaniz 214','Manfredi','Córdoba','S/D','17259350',0.00,'2024-03-04'),(10,'Pert Pieri (Liliana Mengolini)','Pedro Ferrero y San Luis','Amstrong','Santa Fe','S/D','3471156611002',0.00,'2024-03-04'),(11,'Calzados Mia','Blvd. América 984','El Trebol','Santa Fe','S/D','3401415151 / 3401503997',0.00,'2024-03-04'),(12,'Mariana Dietchi (Diego)','W. L. Rey 527','Tortugas','Santa Fe','S/D','3471618545',0.00,'2024-03-04'),(13,'Calzados Hugo','Snata Fe 85','Arteaga','Santa Fe','S/D','467450299',0.00,'2024-03-04'),(14,'Calzados IC (Ines)','J. V. González 822','Leones','Córdoba','S/D','3472155509710',0.00,'2024-03-04'),(15,'Cuesta arriba (Liliana y Ana)','Av. 17 1222','Las Parejas','Santa Fe','S/D','3471509994 / 3471577988',0.00,'2024-03-04'),(16,'Mattiacci','25 de Mayo 238','Marco Juarez','Córdoba','S/D','3472550628',0.00,'2024-03-04'),(17,'La Raza SA (Sabrina)','9 de Julio 1090','Camilo Aldao','Córdoba','S/D','3468546176',0.00,'2024-03-04'),(18,'Claudio Aragno','Hipólito Irigoyen 1301','San Jorge','Santa Fe','S/D','3406461399 / 3406441345',0.00,'2024-03-04'),(19,'Lidia','S/D','Monte Leña','Córdoba','S/D','S/D',0.00,'2024-03-04'),(20,'Gallotti Calzados','Av. Rivadavia 255','Laborde','Córdoba','S/D','3537583177',0.00,'2024-03-04'),(21,'Alhaurin (Atencio)','España 468','Rawson','San Juan','S/D','S/D',0.00,'2024-03-04'),(22,'Tienda los vascos (Silvina y Mariela)','uruguay y 25 de Mayo','Isla Verde','Córdoba','S/D','3468648071 / 3468596243',0.00,'2024-03-04'),(23,'Ciabattoni(Sofia)','Pío Angulo 581','Bell Ville','Córdoba','S/D','3537558755',0.00,'2024-03-04'),(24,'Zapateria Melody (Claudia)','San Martin 1687','Carcaraña','Santa Fe','S/D','341156181280 / 3414940138',0.00,'2024-03-04'),(25,'Pilcheria Cachorro (Ricardo)','Sta. Fe 69','Bouquet','Santa Fe','S/D','3471566107',0.00,'2024-03-04'),(26,'Zapateria Amatti','9 de Julio 970','Camilo Aldao','Córdoba','S/D','3468641390',0.00,'2024-03-04'),(27,'Yeska Calzados','Leandro Alem 1435','Sastre y Ortiz','Santa Fe','S/D','3404525012 / 3406404513',0.00,'2024-03-04'),(28,'Lupeco Calzados','Buenos Aires 2502','Casilda','Santa Fe','S/D','341550522',0.00,'2024-03-04'),(29,'Zapateria Yuli (Silvina-Agustin Sandonadi)','Av. Vélez Sarsfield 1065','La Carlota','Córdoba','S/D','3584407187 / 3584403961',0.00,'2024-03-04'),(30,'Nestor Lopez','Maipú 765','Monte Buey','Córdoba','S/D','3467415717',0.00,'2024-03-04'),(31,'Moine Humberto','Av. San Martín 180','Devoto','Córdoba','S/D','3564411311',0.00,'2024-03-04'),(32,'El Cordobé','Bv. 25 de Mayo 124','Morteros','Córdoba','S/D','S/D',0.00,'2024-03-04'),(33,'Anastacia (Julieta)','Hipolito Yrigoyen 148','Brinkmann','Córdoba','S/D','356215443568',0.00,'2024-03-04'),(34,'Esteban','S/D','Monte Cristo','Córdoba','S/D','S/D',0.00,'2024-03-04'),(35,'Manolo (Julieta)','9 de Julio 963','Pilar','Córdoba','S/D','S/D',0.00,'2024-03-04'),(36,'Zapateria Miria (Hector)','José Foresto 575','Chañar Ladeado','Santa Fe','S/D','3468544026 / 3468521633',0.00,'2024-03-04'),(37,'Donato (Pablo)','1º de Mayo 593','San Genaro','Santa Fe','S/D','3471517822',0.00,'2024-03-04'),(38,'ISAIA Evelin (Miguel)','Gdor Maneul de la Sota 255','Los Surgentes','Córdoba','S/D','3467640147',0.00,'2024-03-04'),(39,'Colorin Colorado (Noelia Correa)','Blvd. Ascasubi 446','Bell Ville','Córdoba','S/D','3537584616',0.00,'2024-03-04'),(40,'Mussa Calzados (Alejandro)','C. 10 100','Ordóñez','Córdoba','S/D','3537483517 / 3537582511',0.00,'2024-03-04'),(41,'Run (Miguel)','Moreno 1031','San José de la Esquina','Santa Fe','S/D','3467418847 / 3467418773',0.00,'2024-03-04'),(42,'Tienda Benedetti (Rodolfo)','Rioja 1227','Cruz Alta','Córdoba','S/D','3467629456',0.00,'2024-03-04'),(43,'Mourro (Marcela)','Pueyrredón M 1347','Totoras','Santa Fe','S/D','347635404',0.00,'2024-03-04'),(44,'Tienda Sachi','S/D','Bustinza','Santa Fe','S/D','S/D',0.00,'2024-03-04'),(45,'Tony calzados','Lisandro de la Torre 1241','Correa','Santa Fe','S/D','3471359909',0.00,'2024-03-04'),(46,'Calzados Koket (Fernanda)','Gral. Paz 328','Justiniano Posse','Córdoba','S/D','3537514027',0.00,'2024-03-04'),(47,'Ignacio Hetrea','S/D','Rosario','Santa Fe','S/D','3415022868',0.00,'2024-03-04'),(48,'Hugo Mansilla','Av. Vélez Sarsfield 824','La Carlota','Córdoba','S/D','3584435634',0.00,'2024-03-04'),(49,'Noris Farroni','S/D','Monte Cristo','Córdoba','S/D','S/D',0.00,'2024-03-04'),(50,'Beatriz Eleno','25 de Mayo 1014','Correa','Santa Fe','S/D','S/D',0.00,'2024-03-04'),(51,'Calzados India (Yamila y Liliana)','Antártida Argentina 131','Roldán','Santa Fe','S/D','3416905147',0.00,'2024-03-04'),(52,'Calzados Puchi (Pablo Bertoni)','Eva Perón 1684','San Jorge','Santa Fe','S/D','3046443484',0.00,'2024-03-04'),(53,'Estevez Jaime','S/D','Pilar','Córdoba','S/D','S/D',0.00,'2024-03-04'),(54,'Jorge Turro','Barrio Villa Libertador','Córdoba','Córdoba','S/D','S/D',0.00,'2024-03-04'),(55,'Oscar','S/D','La Calera','Córdoba','S/D','S/D',0.00,'2024-03-04'),(56,'Antoni','Barrio Patricios','Córdoba','Córdoba','S/D','S/D',0.00,'2024-03-04'),(57,'Boschetti','S/D','Las Varillas','Córdoba','S/D','S/D',0.00,'2024-03-04'),(58,'Pablo Cabrera','S/D','Córdoba','Córdoba','S/D','S/D',0.00,'2024-03-04'),(59,'Rodolfo sport','Rogelio Martinez 170','Berrotarán','Córdoba','S/D','3584940006 / 3584940658',0.00,'2024-03-04'),(60,'Estilo Calzados (Celina)','S/D','San Agustin','Santa Fe','S/D','3547455600',0.00,'2024-03-04'),(61,'Calzado Alberto (Alberto Gonzales)','Mendoza 350','Chimbas','San Juan','S/D','S/D',0.00,'2024-03-04'),(62,'Casa Mirian(Juan)','Int. Moya 140','James Craik','Córdoba','S/D','3517079700',0.00,'2024-03-04'),(63,'Ver Mar(Veronica)','Rosario de Sta. Fe 438','Marco Juarez','Córdoba','S/D','346841106',0.00,'2024-03-04'),(64,'Club Pie Calzados (Alexis)','Av. Belgrano & Gral. Paz','Leones','Córdoba','S/D','3472523516',0.00,'2024-03-04'),(65,'Zapateria Luli (Stella)','Sta. Fe 131','Noetinger','Córdoba','S/D','3472501687',0.00,'2024-03-04'),(66,'Favia Delgiudice','S/D','General Baldissera','Córdoba','S/D','3468434272',0.00,'2024-03-04');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_prima`
--

DROP TABLE IF EXISTS `materia_prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_prima`
--

LOCK TABLES `materia_prima` WRITE;
/*!40000 ALTER TABLE `materia_prima` DISABLE KEYS */;
INSERT INTO `materia_prima` VALUES (1,'capellada (P.U.)','Tela sintetica tambien conocida como cuero sintetico que es usada en el exterior de la calzado',4,1200.00,101,'2024-03-05'),(2,'Forro','Tela interior que se usa para la capa interna o revestimiento interior del calzado',12,538.46,101,'2024-03-05'),(3,'no tejido','Tela utilizada en el interior del calzado y que se produce sin la necesidad de tejer o hilar fibras',20,60.00,101,'2024-03-05'),(4,'etiquetas','Etiquetas que se cocen en la lengua o laterales del calzado',1,100.00,105,'2024-03-05'),(5,'hojalillos','Pequeños anillos metálicos utilizados en la confección del calzado donde van los cordones',1,30.00,104,'2024-03-05'),(6,'cordones','Tiras alargadas y flexibles que generalmente están hechas de diversos materiales',1,200.00,103,'2024-03-05'),(7,'plantilla vista','Plancha que es utilizada para hacer las plantillas en las zapatillas',30,160.00,101,'2024-03-05'),(8,'plantilla armado','Carton duro que se utiliza con la plantilla para reforzar la base de la zapatilla',30,133.33,102,'2024-03-05'),(9,'tela bostik','Tela dura que se flixibiliza al ser humedecida con pegamento para el armado con zapatillas.',30,150.00,102,'2024-03-05'),(10,'pegamento (p.v.c)','adhesivos específicamente diseñados para unir materiale como calzados',350,328.57,102,'2024-03-05'),(11,'neoprene','caucho sintético',250,396.00,102,'2024-03-05'),(12,'diluyentes','sustancias que se utilizan para reducir la viscosidad o espesor de ciertos productos químicos como adhesivo y facilitar el manejo del mismo',1,14.00,102,'2024-03-05'),(13,'base TR Kala','Bases de calzados T.R (Termoplástico Reforzado) de dama del articulo Kala',1,2700.00,107,'2024-03-05'),(14,'base P.V.C 5442','Base de calzado hecho con  policloruro de vinilo del articulo 5442',1,1500.00,107,'2024-03-05'),(15,'base expanso Jordan','Base calzado Jordan expanso blanca con base negra',1,1800.00,107,'2024-03-05'),(16,'base TR 5442','Bases de calzados T.R. (Termoplástico Reforzado) de hombre del articulo 5442',1,2500.00,107,'2024-03-05'),(17,'caja','Recipiente de carton donde van almacenadas los calzados',1,350.00,106,'2024-03-05'),(18,'papel sulfito','Papel finito que se usa en el emboltorio las zapatilla dentro de las cajas',1,14.00,106,'2024-03-05'),(19,'base lisa expanso','Base de calzado expanso articulo lisa blanca',1,1900.00,108,'2024-03-05'),(20,'lona tela','tela lona para zapatillas de diversos colores',1,1100.00,101,'2024-03-05'),(21,'microfibra','tela microfibra para azapatillas varios colores 1.5 diámetro',1,1150.00,101,'2024-03-05'),(22,'doble frontura','tela con microperforaciones de diferentes colores',1,1100.00,101,'2024-03-05');
/*!40000 ALTER TABLE `materia_prima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `ID_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Proveedor` varchar(30) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Localidad` varchar(30) DEFAULT NULL,
  `Provincia` varchar(30) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (101,'Simonian Textil','Roma 1087','Córdoba','Córdoba','S/D','3514527190'),(102,'Betty Insumos','Antonio Machoni 1809','Córdoba','Córdoba','S/D','3516809266'),(103,'Mario Milano Insumos','Av Eduardo Bulnes 1362','Córdoba','Córdoba','mariomilano06@gmail.com','3515209974'),(104,'Ianoda','Roma 1500','Córdoba','Córdoba','info@casaianoda.com.ar','3514246340'),(105,'Julio Etiquetas','S/D','Córdoba','Córdoba','S/D','3512921428'),(106,'Totalpack Embalajes','Guido Spano 2532','Córdoba','Córdoba','S/D','3514553223'),(107,'Corplast','Álvarez Condarco 2357','Córdoba','Córdoba','S/D','3512306308'),(108,'Gonzales bases','S/D','Córdoba','Córdoba','S/D','3513737634');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `ID_Transporte` int NOT NULL AUTO_INCREMENT,
  `Transporte` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Telefono` varchar(30) DEFAULT NULL,
  `Localidad` varchar(50) DEFAULT NULL,
  `Provincia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'Integral Pack','Gral. Juan José Viamonte 1123','clientes@integralexpress.com','8108107225','Córdoba','Córdoba'),(2,'Astutti(Alpha Transportes)','Piero Astori 1300','cordoba@alphatransportes.com.ar','3515738046','Córdoba','Córdoba'),(3,'Transporte Carolo(Victor Gelabert)','Buchardo 1039','S/D','3514239555','Córdoba','Córdoba'),(4,'Transporte Arango','Rincón 1257','S/D','3517278393','Córdoba','Córdoba'),(5,'Credifin','Avda Circunvalación Sur entre Camino 60','operacionescordoba@credifinexpress.com.ar','8108880738','Córdoba','Córdoba'),(6,'El Matete','Rincón 1257','S/D','S/D','Córdoba','Córdoba'),(7,'Cooptrab','Rincón 1257','S/D','S/D','Córdoba','Córdoba'),(8,'Transporte Martinez','Alejandro Magariños Cervantes 849','S/D','S/D','Córdoba','Córdoba'),(9,'Transporte Calderon','Rincón 1257','S/D','3472620628','Córdoba','Córdoba'),(10,'Transporte Miguel','Mendoza 2160','S/D','3514450113','Córdoba','Córdoba'),(11,'Transporte El Prado','Mendoza 2160','S/D','S/D','Córdoba','Córdoba'),(12,'Carlos Rodriguez (viajante)','La Ramada 2917','S/D','3517079700','Córdoba','Córdoba'),(13,'Brio','María Lastenia 250','atencionalcliente@brio.com.ar','8103452746','Córdoba','Córdoba'),(14,'Transporte Carlos','Rincón 1459','S/D','S/D','Córdoba','Córdoba'),(15,'Carossio, Vairolatti y Cía','Celso Barrios 3778','central@carossiovairolatti.com.ar','3515303867','Córdoba','Córdoba'),(16,'Servi-Pack','Rincón 1075','S/D','S/D','Córdoba','Córdoba'),(17,'Horizonte Transportes(Alpha Transportes)','Piero Astori 1300','logística@horizontetransportes.com.ar','3514961001','Córdoba','Córdoba'),(18,'Transporte Conte Hnos Y Cia','Gral. Manuel Savio 6150','info@transportesconte.com','3512454875','Córdoba','Córdoba'),(19,'Transporte Becher Logística','C. 3 45, Córdoba','S/D','3514922650','Córdoba','Córdoba'),(20,'La Camionera Mendocina','Av. de Circunvalación Agustín Tosco 4245','cordoba@camionera.com.ar','3515171553 / 3514568547','Córdoba','Córdoba'),(21,'Transporte Bobeta','S/D','S/D','3584494723','Córdoba','Córdoba');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,9,10,19,'Surtidas',22000.00,'2022-03-03',12),(2,9,10,7,'Blanco',22000.00,'2022-03-03',12),(3,4,10,23,'Chocolate',19500.00,'2022-03-03',4),(4,4,7,22,'Azul',13650.00,'2022-03-04',10),(5,4,7,22,'Chocolate',13650.00,'2022-03-04',10),(6,9,7,22,'Negro',15400.00,'2022-03-04',10),(7,9,7,3,'Bco/lila',15400.00,'2022-03-04',10),(8,4,10,66,'Negra',19500.00,'2022-03-04',10),(9,9,7,66,'Bco/Rosa',15400.00,'2022-03-04',10),(10,9,10,2,'Bco/Rosa',22000.00,'2022-03-04',14),(11,9,8,1,'Bco/lila',17600.00,'2022-03-04',12),(12,9,8,1,'Bco/Cel',17600.00,'2022-03-04',12),(13,9,16,5,'Bco/Rosa',35200.00,'2022-03-03',7),(14,9,16,5,'Negra',35200.00,'2022-03-03',7),(15,4,30,21,'Blanco',58500.00,'2022-03-02',20),(16,4,50,21,'Suela',97500.00,'2022-03-02',20),(17,4,70,21,'Negro',136500.00,'2022-03-02',20),(18,7,18,30,'Negra',39600.00,'2022-03-09',11),(19,4,7,30,'Blanca',13650.00,'2022-03-09',11),(20,7,18,5,'Negra',39600.00,'2022-03-09',7),(21,7,10,7,'Blanca',22000.00,'2022-03-09',12),(22,7,10,7,'Negra',22000.00,'2022-03-09',12),(23,7,12,1,'Blanca',26400.00,'2022-03-09',12),(24,7,12,1,'Negra',26400.00,'2022-03-09',12),(25,7,7,14,'Blanca',15400.00,'2022-03-09',7),(26,7,7,14,'Negra',15400.00,'2022-03-09',7),(27,4,60,21,'Blanca',117000.00,'2022-03-17',20),(28,4,30,21,'Negra',58500.00,'2022-03-17',20),(29,4,44,21,'Suela',85800.00,'2022-03-17',20),(30,2,7,9,'Negra',13650.00,'2022-03-21',6),(31,4,7,10,'Negra ',13650.00,'2022-03-21',10),(32,4,7,10,'Blanca',13650.00,'2022-03-21',10),(33,7,7,10,'Negra',15400.00,'2022-03-21',10),(34,7,7,10,'Blanca',15400.00,'2022-03-21',10),(35,4,7,4,'Negro',13650.00,'2022-03-23',8),(36,4,7,27,'Blanco',13650.00,'2022-03-23',2),(37,7,7,27,'Negro',15400.00,'2022-03-23',2),(38,7,7,27,'Blanco',15400.00,'2022-03-23',2),(39,4,7,11,'Negro',13650.00,'2022-03-25',10),(40,4,7,11,'Suela',13650.00,'2022-03-25',10),(41,4,7,11,'Blanco',13650.00,'2022-03-25',10),(42,7,7,11,'Negro',15400.00,'2022-03-25',10),(43,7,10,25,'Negro',22000.00,'2022-03-25',12),(44,4,3,25,'Bco/Azul',5850.00,'2022-03-25',12),(45,4,3,25,'Negro',5850.00,'2022-03-25',12),(46,7,7,12,'Negra',15400.00,'2022-03-25',10),(47,7,5,12,'Blanco',11000.00,'2022-03-25',10),(48,7,10,6,'Blanco',22000.00,'2022-03-25',11),(49,7,10,6,'Negra',22000.00,'2022-03-25',11),(50,7,10,8,'Blanca',22000.00,'2022-03-25',2),(51,7,10,8,'Negra',22000.00,'2022-03-25',2),(52,7,10,13,'Blanca',22000.00,'2022-03-25',10),(53,7,7,28,'Blanca',15400.00,'2022-03-25',5),(54,7,7,28,'Negra',15400.00,'2022-03-25',5),(55,4,7,28,'Negra',13650.00,'2022-03-25',5),(56,7,7,18,'blanco',15400.00,'2022-03-25',12),(57,7,7,18,'negro',15400.00,'2022-03-25',12),(58,7,7,26,'Blanco',15400.00,'2022-03-25',12),(59,7,7,20,'Blanco',16450.00,'2022-03-25',10),(60,4,10,17,'negras',21500.00,'2022-03-25',10),(61,2,7,14,'negra',13650.00,'2022-03-29',7),(62,2,10,7,'Negra',19500.00,'2022-03-29',12),(63,2,10,2,'negra ',19500.00,'2022-03-29',14),(64,2,11,30,'Blanca',21450.00,'2022-03-29',11),(65,2,10,23,'Blanca',19500.00,'2022-03-29',4),(66,2,5,4,'Blanca',9750.00,'2022-03-29',8),(67,2,5,4,'Negra',9750.00,'2022-03-29',8),(68,2,7,24,'Negra ',13650.00,'2022-03-29',12),(69,2,7,24,'Blanca',13650.00,'2022-03-29',12),(70,2,7,15,'Negra ',13650.00,'2022-03-29',11),(71,2,7,15,'Blanca',13650.00,'2022-03-29',11),(72,2,14,8,'Suela ',27300.00,'2022-04-06',2),(73,2,14,8,'Negro',27300.00,'2022-04-06',2),(74,2,60,21,'Suela ',117000.00,'2022-04-06',20),(75,2,60,21,'Negro',117000.00,'2022-04-06',20),(76,2,30,21,'Blanco',58500.00,'2022-04-06',20),(77,11,10,30,'Negro',22000.00,'2022-04-13',11),(78,11,7,15,'Negro',15400.00,'2022-04-13',11),(79,11,7,15,'Suela',15400.00,'2022-04-13',11),(80,11,7,4,'Negro ',15400.00,'2022-04-13',8),(81,11,7,4,'Azul',15400.00,'2022-04-13',8),(82,11,10,16,'Negro',22000.00,'2022-04-13',7),(83,11,10,7,'negro',22000.00,'2022-04-13',12),(84,11,10,19,'Surtido',22000.00,'2022-04-13',12),(85,11,7,11,'Suela',15400.00,'2022-04-13',10),(86,11,10,2,'Azul',22000.00,'2022-04-13',14),(87,11,10,23,'Negro',22000.00,'2022-04-20',4),(88,11,10,23,'Azul',22000.00,'2022-04-20',4),(89,11,10,23,'Suela',22000.00,'2022-04-20',4),(90,4,3,23,'Negro',6210.00,'2022-04-20',4),(91,11,14,8,'Negro',30800.00,'2022-04-20',2),(92,11,14,8,'Suela',30800.00,'2022-04-20',2),(93,7,7,31,'Bco',15400.00,'2022-04-26',15),(94,9,8,31,'Bco/Rosa',17600.00,'2022-04-26',15),(95,4,12,32,'Bco/Rosa',23400.00,'2022-04-26',16),(96,4,12,32,'Bco/Lila',23400.00,'2022-04-26',16),(97,9,7,4,'Surtidos',15400.00,'2022-04-27',8),(98,9,7,4,'Negro',15400.00,'2022-04-27',8),(99,9,6,12,'Bco',13200.00,'2022-04-27',10),(100,9,2,12,'Bco/Cel',4400.00,'2022-04-27',10),(101,9,2,12,'Bco/Lila',4400.00,'2022-04-27',10),(102,9,28,15,'Surtidos',61600.00,'2022-04-27',11),(103,9,6,33,'Bco/lila',14400.00,'2022-04-27',12),(104,9,6,33,'Bco/Rosa',14400.00,'2022-04-27',12),(105,11,7,34,'Negro',16030.00,'2022-04-27',12),(106,4,12,34,'bco',24840.00,'2022-04-27',12),(107,4,12,34,'negro',24840.00,'2022-04-27',12),(108,4,12,34,'suela',24840.00,'2022-04-27',12),(109,4,10,35,'Bco',20700.00,'2022-04-27',12),(110,9,8,35,'Bco',19200.00,'2022-04-27',12),(111,9,8,35,'Bco/Cele',19200.00,'2022-04-27',12),(112,2,8,30,'Negra',16240.00,'2022-05-02',11),(113,9,36,61,'Negro',82800.00,'2022-05-02',19),(114,9,36,61,'Bco/Rosa',82800.00,'2022-05-02',19),(115,7,40,61,'Bco/Suela',92000.00,'2022-05-02',19),(116,11,40,61,'Negro',91600.00,'2022-05-05',19),(117,9,7,29,'Negro',17500.00,'2022-05-06',21),(118,2,7,29,'Negro',14210.00,'2022-05-06',21),(119,11,7,29,'Negro',16030.00,'2022-05-06',21),(120,4,7,29,'Negro',14490.00,'2022-05-06',21),(121,4,7,29,'Blanco',14490.00,'2022-05-06',21),(122,4,40,61,'Blanco',82800.00,'2022-05-12',19),(123,4,40,61,'Negro',82800.00,'2022-05-12',19),(124,4,40,61,'Suela',82800.00,'2022-05-12',19),(125,9,7,6,'Negro',16100.00,'2022-05-16',11),(126,9,10,25,'Bco/Celeste',23000.00,'2022-05-16',12),(127,4,7,28,'Blanco',14490.00,'2022-05-17',5),(128,4,7,28,'Suela',14490.00,'2022-05-17',5),(129,4,4,23,'Negro',8280.00,'2022-05-19',4),(130,9,7,18,'Bco',16100.00,'2022-05-20',12),(131,9,7,11,'Bco/Rosa',16100.00,'2022-05-20',10),(132,9,7,11,'Negro',16100.00,'2022-05-20',10),(133,9,7,13,'Bco',16100.00,'2022-05-20',10),(134,9,7,13,'Negro',16100.00,'2022-05-20',10),(135,4,10,13,'Suela',20700.00,'2022-05-20',10),(136,9,8,36,'Negro',19600.00,'2022-06-02',10),(137,4,11,37,'Negro',22770.00,'2022-06-02',2),(138,11,75,21,'Negro',171750.00,'2022-06-02',20),(139,11,10,38,'negro',23400.00,'2022-06-03',10),(140,4,10,38,'negro',20700.00,'2022-06-03',10),(141,4,10,39,'negro',20700.00,'2022-06-06',4),(142,11,7,40,'negro',16030.00,'2022-06-06',10),(143,9,7,40,'Negro',16800.00,'2022-06-06',10),(144,4,7,9,'negro',14490.00,'2022-06-06',6),(145,11,75,21,'Azul',171750.00,'2022-06-08',20),(146,11,7,20,'Azul',16030.00,'2022-06-14',10),(147,11,7,41,'azul',16030.00,'2022-06-14',10),(148,9,7,42,'negro',16800.00,'2022-06-16',10),(149,4,10,43,'negro ',20700.00,'2022-06-21',17),(150,4,10,43,'blanco',20700.00,'2022-06-21',17),(151,4,10,43,'suela',20700.00,'2022-06-21',17),(152,7,10,44,'negra',25000.00,'2022-06-21',12),(153,9,10,44,'negra',25000.00,'2022-06-21',12),(154,4,2,23,'blanco',4280.00,'2022-06-21',4),(155,4,18,9,'Surtidas',38520.00,'2022-06-22',6),(156,4,7,41,'bco/Rosa',14490.00,'2022-06-22',10),(157,7,7,41,'Negro',17500.00,'2022-06-22',10),(158,7,7,31,'negra',16100.00,'2022-06-22',15),(159,9,7,42,'Bco/Celeste',17500.00,'2022-06-22',10),(160,9,7,42,'Bco/rosa',17500.00,'2022-06-22',10),(161,9,7,3,'Bco/lila',17500.00,'2022-06-22',10),(162,7,7,45,'negro',17220.00,'2022-06-23',10),(163,7,7,45,'blanco',17220.00,'2022-06-23',10),(164,4,7,39,'suela',14980.00,'2022-06-28',4),(165,4,7,39,'blanco',14980.00,'2022-06-28',4),(166,4,8,16,'negro',17120.00,'2022-06-28',7),(167,7,7,46,'negro',17220.00,'2022-06-28',10),(168,7,7,46,'blanco',17220.00,'2022-06-28',10),(169,9,7,4,'surtidas',16800.00,'2022-06-28',8),(170,7,10,37,'blanca',24600.00,'2022-06-28',2),(171,7,7,29,'blanco',17500.00,'2022-06-28',21),(172,7,7,29,'negra',17500.00,'2022-06-28',21),(173,4,2,47,'negro',4500.00,'2022-07-01',1),(174,4,2,47,'tierra',4500.00,'2022-07-01',1),(175,4,2,47,'blanco',4500.00,'2022-07-01',1),(176,4,4,47,'negro',9000.00,'2022-07-01',1),(177,4,4,47,'blanco',9000.00,'2022-07-01',1),(178,4,5,47,'tierra',11250.00,'2022-07-01',1),(179,4,5,47,'suela',11250.00,'2022-07-01',1),(180,4,5,47,'choco',11250.00,'2022-07-01',1),(181,4,10,34,'blanco',22500.00,'2022-07-01',12),(182,4,10,34,'negro',22500.00,'2022-07-01',12),(183,11,5,34,'negro',12000.00,'2022-07-01',12),(184,4,4,34,'blanco',9000.00,'2022-07-01',12),(185,4,4,34,'negro',9000.00,'2022-07-01',12),(186,7,154,21,'varios ',454300.00,'2022-07-13',20),(187,3,17,38,'S/D',47430.00,'2022-08-26',10),(188,3,11,24,'S/D',30690.00,'2022-08-26',12),(189,3,24,8,'S/D',66960.00,'2022-08-26',2),(190,3,21,30,'S/D',58590.00,'2022-08-26',11),(191,3,20,27,'S/D',55800.00,'2022-08-26',2),(192,3,20,23,'S/D',55800.00,'2022-08-26',4),(193,3,24,28,'S/D',66960.00,'2022-09-01',5),(194,3,9,12,'S/D',25110.00,'2022-09-01',10),(195,3,16,10,'S/D',44640.00,'2022-09-01',10),(196,3,20,20,'S/D',55800.00,'2022-09-09',10),(197,3,12,8,'S/D',33480.00,'2022-09-09',2),(198,3,20,1,'S/D',55800.00,'2022-09-09',12),(199,3,11,30,'S/D',30690.00,'2022-09-09',11),(200,3,14,46,'S/D',39060.00,'2022-09-09',10),(201,3,12,28,'S/D',33480.00,'2022-09-09',5),(202,3,8,12,'S/D',22320.00,'2022-09-09',10),(203,3,3,23,'S/D',8370.00,'2022-09-14',4),(204,3,10,7,'S/D',27900.00,'2022-09-14',12),(205,3,20,6,'S/D',55800.00,'2022-09-14',11),(206,7,5,6,'S/D',13950.00,'2022-09-14',11),(207,8,12,34,'S/D',39600.00,'2022-09-15',12),(208,8,7,50,'S/D',23100.00,'2022-09-16',4),(209,8,20,51,'S/D',66000.00,'2022-09-16',13),(210,8,20,7,'S/D',66000.00,'2022-09-20',12),(211,8,10,19,'S/D',33000.00,'2022-09-19',12),(212,3,10,20,'S/D',28500.00,'2022-09-23',10),(213,1,10,20,'S/D',27500.00,'2022-09-23',10),(214,8,10,51,'gris',33000.00,'2022-09-23',13),(215,3,7,52,'ngro',19950.00,'2022-09-23',12),(216,3,7,52,'azul',19950.00,'2022-09-23',12),(217,3,10,15,'bco',28500.00,'2022-09-23',11),(218,3,10,15,'tierra',28500.00,'2022-09-23',11),(219,8,7,46,'negra',23100.00,'2022-09-23',10),(220,4,9,34,'Blanco ',25650.00,'2022-09-28',12),(221,4,7,53,'Blanco ',19950.00,'2022-09-28',12),(222,4,7,53,'negro',19950.00,'2022-09-28',12),(223,4,13,53,'negro',37050.00,'2022-09-28',12),(224,1,13,53,'casel',35750.00,'2022-09-28',12),(225,1,13,53,'negro',35750.00,'2022-09-28',12),(226,8,12,53,'negro',39600.00,'2022-09-28',12),(227,4,7,4,'negro',19950.00,'2022-10-03',8),(228,8,6,14,'negra',19800.00,'2022-10-03',7),(229,3,10,1,'negro',28500.00,'2022-10-03',12),(230,4,10,1,'negro',28500.00,'2022-10-03',12),(231,4,10,1,'Blanco ',28500.00,'2022-10-03',12),(232,4,10,16,'negro',28500.00,'2022-10-03',7),(233,3,10,16,'tierra',28500.00,'2022-10-03',7),(234,3,9,49,'negro',25650.00,'2022-10-05',12),(235,8,10,49,'negro',33000.00,'2022-10-05',12),(236,3,25,21,'azul ',71250.00,'2022-10-11',20),(237,3,75,21,'Blanco ',213750.00,'2022-10-11',20),(238,3,60,21,'negro',171000.00,'2022-10-11',20),(239,4,8,35,'Blanco ',22800.00,'2022-10-14',12),(240,4,6,35,'Blanco ',17100.00,'2022-10-14',12),(241,4,6,35,'negro',17100.00,'2022-10-14',12),(242,8,6,35,'negro ',19200.00,'2022-10-14',12),(243,4,44,61,'Blanco ',125400.00,'2022-04-19',19),(244,1,32,61,'negro',88000.00,'2022-04-19',19),(245,4,44,61,'negro',125400.00,'2022-10-24',19),(246,3,8,47,'tierra',23600.00,'2022-10-25',1),(247,4,6,47,'suela',17700.00,'2022-10-25',1),(248,3,10,47,'Blanco ',29500.00,'2022-10-25',1),(249,8,10,47,'bco/rosa',33000.00,'2022-10-25',1),(250,8,6,47,'negro/rosa',19800.00,'2022-10-25',1),(251,4,16,54,'negro',45600.00,'2022-10-27',12),(252,3,13,54,'bco',37050.00,'2022-10-27',12),(253,1,16,54,'negro',44000.00,'2022-10-27',12),(254,4,14,6,'negro',41300.00,'2022-10-31',11),(255,4,14,6,'bco',41300.00,'2022-10-31',11),(256,4,88,61,'bco',259600.00,'2022-11-11',19),(257,4,48,61,'Negro',133920.00,'2022-11-17',19),(258,4,10,23,'Blanco',29500.00,'2022-11-23',4),(259,4,6,23,'negra',17700.00,'2022-11-24',4),(260,7,4,23,'negra',11800.00,'2022-11-24',4),(261,6,48,61,'negra',158400.00,'2022-11-25',19),(262,3,10,39,'tierra',29500.00,'2022-11-30',4),(263,4,10,39,'blanco',29500.00,'2022-11-30',4),(264,3,9,2,'negro',26550.00,'2022-11-30',14),(265,4,6,53,'blanca',17700.00,'2022-12-01',12),(266,4,7,53,'negra',20650.00,'2022-12-01',12),(267,4,10,17,'negro',29500.00,'2022-12-06',10),(268,4,10,17,'bco',29500.00,'2022-12-06',10),(269,6,48,61,'bco',158400.00,'2022-12-07',19),(270,4,10,55,'bco ',29500.00,'2022-12-12',12),(271,4,10,16,'negro',29500.00,'2022-12-14',7),(272,4,10,2,'negro',29500.00,'2022-12-15',14),(273,4,20,34,'negro',59000.00,'2022-12-15',12),(274,6,10,56,'negro',32000.00,'2022-12-15',12),(275,4,70,21,'negro',269500.00,'2022-02-22',20),(276,4,50,21,'varios ',192500.00,'2023-03-07',20),(277,4,12,2,'bco',46200.00,'2023-03-10',14),(278,4,10,23,'bco',38500.00,'2023-03-10',4),(279,4,22,8,'ngo',84700.00,'2023-03-10',2),(280,4,14,46,'bco y ngo',53900.00,'2023-03-10',10),(281,4,10,38,'ngo',38500.00,'2023-03-10',10),(282,4,94,61,'Bco ',361900.00,'2023-03-13',19),(283,4,64,61,'Negro',246400.00,'2023-03-22',19),(284,4,14,23,'negro',55300.00,'2023-04-03',4),(285,6,10,7,'Negro ',35000.00,'2023-04-03',12),(286,8,10,2,'gris',38700.00,'2023-04-05',14),(287,6,20,2,'negro',80000.00,'2023-04-05',14),(288,6,8,16,'negro',32000.00,'2023-04-05',7),(289,11,8,16,'negro',34400.00,'2023-04-05',7),(290,6,12,1,'negro ',48000.00,'2023-04-05',12),(291,8,10,49,'bco/Rosa',35000.00,'2023-04-17',12),(292,5,10,34,'negra',44900.00,'2023-04-17',12),(293,5,10,34,'negra',44900.00,'2023-04-17',12),(294,8,32,61,'bco rosa',140160.00,'2023-04-21',19),(295,5,20,53,'negro',107600.00,'2023-04-26',12),(296,11,10,53,'negro',55500.00,'2023-04-26',12),(297,8,11,53,'blanco',57860.00,'2023-04-26',12),(298,8,11,53,'negro',57860.00,'2023-04-26',12),(299,11,16,5,'negro',75520.00,'2023-05-02',7),(300,5,6,42,'negro',27540.00,'2023-05-02',10),(301,5,6,42,'bco',27540.00,'2023-05-02',10),(302,5,6,42,'azul',27540.00,'2023-05-02',10),(303,5,20,53,'blanco',91800.00,'2023-05-02',12),(304,5,10,53,'azul',45900.00,'2023-05-02',12),(305,8,11,2,'bco/rosa',49280.00,'2023-05-02',14),(306,4,8,38,'blanco',34320.00,'2023-05-15',10),(307,4,65,21,'suela',337408.50,'2023-05-16',20),(308,4,14,30,'negro',60060.00,'2023-05-16',11),(309,4,14,30,'blanco',60060.00,'2023-05-16',11),(310,4,12,23,'Suela',51480.00,'2023-05-16',4),(311,4,6,15,'blanco ',25740.00,'2023-05-18',11),(312,4,6,15,'negro',25740.00,'2023-05-18',11),(313,4,5,10,'negro ',21450.00,'2023-05-18',10),(314,4,3,10,'blanco',12870.00,'2023-05-18',10),(315,5,11,2,'blanco',50490.00,'2023-05-18',14),(316,4,10,57,'blanco',42900.00,'2023-05-18',12),(317,7,12,1,'blanco',72000.00,'2023-05-30',12),(318,7,12,1,'negro',72000.00,'2023-05-30',12),(319,7,5,46,'negro',30000.00,'2023-05-30',10),(320,11,6,46,'negro ',33120.00,'2023-06-09',10),(321,4,20,59,'negro ',103000.00,'2023-06-21',12),(322,4,20,59,'blanco',103000.00,'2023-06-21',12),(323,2,10,23,'negra',51000.00,'2023-08-04',4),(324,4,6,23,'negra',32400.00,'2023-08-04',4),(325,4,4,23,'blanca',21600.00,'2023-08-04',4),(326,4,10,7,'negra',54000.00,'2023-08-07',12),(327,4,23,53,'blanca ',124200.00,'2023-08-08',12),(328,4,15,53,'negra',81000.00,'2023-08-08',12),(329,4,10,23,'Suela ',61500.00,'2023-09-05',4),(330,4,4,23,'suela ',26000.00,'2023-09-05',4),(331,4,2,23,'bco',13000.00,'2023-09-05',4),(332,4,23,53,'suela ',149500.00,'2023-09-05',12),(333,6,15,53,'negro ',102750.00,'2023-09-05',12),(334,4,10,46,'negro ',77500.00,'2023-10-27',10),(335,4,10,16,'blanco',77500.00,'2023-10-27',7),(336,4,10,38,'suela ',77500.00,'2023-10-27',10),(337,4,20,38,'negro ',155000.00,'2023-10-27',10),(338,4,10,7,'negra',77500.00,'2023-10-30',12),(339,4,10,23,'negro ',77500.00,'2023-11-06',4),(340,4,10,23,'Blanco',95000.00,'2023-12-12',4);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_articulos_vendidos_mas_quinientos`
--

DROP TABLE IF EXISTS `vw_articulos_vendidos_mas_quinientos`;
/*!50001 DROP VIEW IF EXISTS `vw_articulos_vendidos_mas_quinientos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_articulos_vendidos_mas_quinientos` AS SELECT 
 1 AS `Articulo`,
 1 AS `total_vendido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cantidad_de_articulos_por_año`
--

DROP TABLE IF EXISTS `vw_cantidad_de_articulos_por_año`;
/*!50001 DROP VIEW IF EXISTS `vw_cantidad_de_articulos_por_año`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cantidad_de_articulos_por_año` AS SELECT 
 1 AS `Año`,
 1 AS `Articulo`,
 1 AS `Cantidad de pares vendidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_clientes_cordoba`
--

DROP TABLE IF EXISTS `vw_clientes_cordoba`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_cordoba`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_cordoba` AS SELECT 
 1 AS `ID_Cliente`,
 1 AS `Cliente`,
 1 AS `Dirreccion`,
 1 AS `Localidad`,
 1 AS `Provincia`,
 1 AS `Mail`,
 1 AS `Telefono`,
 1 AS `Saldo`,
 1 AS `Ultima_Modificacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_costo_a_provedor_por_par`
--

DROP TABLE IF EXISTS `vw_costo_a_provedor_por_par`;
/*!50001 DROP VIEW IF EXISTS `vw_costo_a_provedor_por_par`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_costo_a_provedor_por_par` AS SELECT 
 1 AS `Proveedor`,
 1 AS `Precio por par`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_costo_articulo_segun_materia_prima`
--

DROP TABLE IF EXISTS `vw_costo_articulo_segun_materia_prima`;
/*!50001 DROP VIEW IF EXISTS `vw_costo_articulo_segun_materia_prima`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_costo_articulo_segun_materia_prima` AS SELECT 
 1 AS `Articulo`,
 1 AS `SUM(mp.Precio_por_par)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_total_gastado_por_cliente`
--

DROP TABLE IF EXISTS `vw_total_gastado_por_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_total_gastado_por_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_total_gastado_por_cliente` AS SELECT 
 1 AS `cliente`,
 1 AS `Total_Comprado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_transporte_clientes`
--

DROP TABLE IF EXISTS `vw_transporte_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_transporte_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_transporte_clientes` AS SELECT 
 1 AS `Transporte`,
 1 AS `Cantidad clientes que usan este transporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_articulos_vendidos_mas_quinientos`
--

/*!50001 DROP VIEW IF EXISTS `vw_articulos_vendidos_mas_quinientos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_articulos_vendidos_mas_quinientos` AS select `subconsulta`.`Articulo` AS `Articulo`,sum(`subconsulta`.`cantidad`) AS `total_vendido` from (select `v`.`Cantidad` AS `cantidad`,`a`.`Articulo` AS `Articulo` from (`articulo` `a` join `venta` `v` on((`a`.`ID_Articulo` = `v`.`ID_Articulo`)))) `subconsulta` group by `subconsulta`.`Articulo` having (sum(`subconsulta`.`cantidad`) > 500) order by sum(`subconsulta`.`cantidad`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cantidad_de_articulos_por_año`
--

/*!50001 DROP VIEW IF EXISTS `vw_cantidad_de_articulos_por_año`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cantidad_de_articulos_por_año` AS select year(`v`.`Fecha`) AS `Año`,`a`.`Articulo` AS `Articulo`,sum(`v`.`Cantidad`) AS `Cantidad de pares vendidos` from (`venta` `v` join `articulo` `a` on((`v`.`ID_Articulo` = `a`.`ID_Articulo`))) group by `a`.`Articulo`,year(`v`.`Fecha`) order by `a`.`Articulo`,year(`v`.`Fecha`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_clientes_cordoba`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_cordoba`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_cordoba` AS select `cliente`.`ID_Cliente` AS `ID_Cliente`,`cliente`.`Cliente` AS `Cliente`,`cliente`.`Dirreccion` AS `Dirreccion`,`cliente`.`Localidad` AS `Localidad`,`cliente`.`Provincia` AS `Provincia`,`cliente`.`Mail` AS `Mail`,`cliente`.`Telefono` AS `Telefono`,`cliente`.`Saldo` AS `Saldo`,`cliente`.`Ultima_Modificacion` AS `Ultima_Modificacion` from `cliente` where (`cliente`.`Provincia` like 'Córdoba') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_costo_a_provedor_por_par`
--

/*!50001 DROP VIEW IF EXISTS `vw_costo_a_provedor_por_par`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_costo_a_provedor_por_par` AS select `p`.`Proveedor` AS `Proveedor`,sum(`mp`.`Precio_por_par`) AS `Precio por par` from (`proveedor` `p` join `materia_prima` `mp` on((`p`.`ID_Proveedor` = `mp`.`ID_Proveedor`))) group by `p`.`Proveedor` order by sum(`mp`.`Precio_por_par`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_costo_articulo_segun_materia_prima`
--

/*!50001 DROP VIEW IF EXISTS `vw_costo_articulo_segun_materia_prima`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_costo_articulo_segun_materia_prima` AS select `a`.`Articulo` AS `Articulo`,sum(`mp`.`Precio_por_par`) AS `SUM(mp.Precio_por_par)` from ((`articulo` `a` join `articulo_materia_prima` `amt` on((`a`.`ID_Articulo` = `amt`.`ID_Articulo`))) join `materia_prima` `mp` on((`amt`.`ID_Materia_Prima` = `mp`.`ID_Materia_Prima`))) group by `a`.`Articulo` order by sum(`mp`.`Precio_por_par`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_total_gastado_por_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vw_total_gastado_por_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_total_gastado_por_cliente` AS select `c`.`Cliente` AS `cliente`,sum(`v`.`Total`) AS `Total_Comprado` from (`venta` `v` join `cliente` `c` on((`v`.`ID_Cliente` = `c`.`ID_Cliente`))) group by `c`.`Cliente` order by sum(`v`.`Total`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_transporte_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_transporte_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_transporte_clientes` AS select `t`.`Transporte` AS `Transporte`,count(distinct `v`.`ID_Cliente`) AS `Cantidad clientes que usan este transporte` from (`transporte` `t` join `venta` `v` on((`t`.`ID_Transporte` = `v`.`ID_Transporte`))) group by `t`.`Transporte` having (2 > 0) order by count(distinct `v`.`ID_Cliente`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 18:50:09
