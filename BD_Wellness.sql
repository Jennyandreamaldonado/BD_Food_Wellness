CREATE DATABASE  IF NOT EXISTS `credicel_Food_Wellness` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `credicel_Food_Wellness`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_Food_Wellness
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.19-MariaDB-cll-lve

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
-- Table structure for table `Categoria`
--

DROP TABLE IF EXISTS `Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categoria` (
  `idCategoria` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria`
--

LOCK TABLES `Categoria` WRITE;
/*!40000 ALTER TABLE `Categoria` DISABLE KEYS */;
INSERT INTO `Categoria` VALUES (1,'Semillas'),(2,'Cereales'),(3,'Frutos Secos'),(4,'Chocolates'),(5,'Harinas'),(6,'Condimentos'),(7,'Frutas Deshidratadas'),(8,'Tes'),(9,'Mantequillas'),(10,'Otros');
/*!40000 ALTER TABLE `Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `idProductos` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Categoriaid` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProductos`),
  UNIQUE KEY `idProductos_UNIQUE` (`idProductos`),
  KEY `FK_Categoria_idx` (`Categoriaid`),
  CONSTRAINT `FK_Categoria` FOREIGN KEY (`Categoriaid`) REFERENCES `Categoria` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (1,'Almendra',3),(2,'Almendra laminada',3),(3,'Ajonjoli blanco',1),(4,'Ajonjoli negro',1),(5,'Amaranto',1),(6,'Avena',2),(7,'Cereal quinoa natural',2),(8,'Cereal quinoa chocolate',2),(9,'Garbanzo frito',2),(10,'Linaza en pepa',2),(11,'Linaza molida',2),(12,'Quinoa',2),(13,'Quinoa roja',2),(14,'Quinoa mix colores',2),(15,'Semillas de amapola',1),(16,'Semillas de calabza',1),(17,'Semillas de chia',1),(18,'Semillas de girasol',1),(19,'Arandano',7),(20,'Ciruela',7),(21,'Coco cabello',7),(22,'Coco caramelizado',7),(23,'Coco laminado',7),(24,'Datiles',7),(25,'Naranja deshidratada',7),(26,'Uva pasa',7),(27,'Uva pasa rubia',7);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `idProveedores` int(11) NOT NULL AUTO_INCREMENT,
  `NombreProveedor` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Correo Electronico` varchar(45) DEFAULT NULL,
  `Asesor` varchar(45) DEFAULT NULL,
  UNIQUE KEY `idProveedores_UNIQUE` (`idProveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (1,'Semilas Naturales','Medellin','El Poblado','50214532','semillas@gmail.com','Camila Perez'),(2,'Proveedor 1','Ciudad 1','Dirección 1','123456789','proveedor1@mail.com','Asesor 1'),(3,'Proveedor 2','Ciudad 2','Dirección 2','987654321','proveedor2@mail.com','Asesor 2'),(4,'Proveedor 3','Ciudad 3','Dirección 3','1122334455','proveedor3@mail.com','Asesor 3'),(5,'Proveedor 4','Ciudad 4','Dirección 4','5566778899','proveedor4@mail.com','Asesor 4'),(6,'Proveedor 5','Ciudad 5','Dirección 5','6677889900','proveedor5@mail.com','Asesor 5'),(7,'Proveedor 6','Ciudad 6','Dirección 6','7788990011','proveedor6@mail.com','Asesor 6'),(8,'Proveedor 7','Ciudad 7','Dirección 7','8899001122','proveedor7@mail.com','Asesor 7'),(9,'Proveedor 8','Ciudad 8','Dirección 8','9900112233','proveedor8@mail.com','Asesor 8'),(10,'Proveedor 9','Ciudad 9','Dirección 9','0011223344','proveedor9@mail.com','Asesor 9'),(11,'Proveedor 10','Ciudad 10','Dirección 10','2233445566','proveedor10@mail.com','Asesor 10'),(12,'Proveedor 11','Ciudad 11','Dirección 11','3344556677','proveedor11@mail.com','Asesor 11'),(13,'Proveedor 12','Ciudad 12','Dirección 12','4455667788','proveedor12@mail.com','Asesor 12'),(14,'Proveedor 13','Ciudad 13','Dirección 13','5566778899','proveedor13@mail.com','Asesor 13'),(15,'Proveedor 14','Ciudad 14','Dirección 14','6677889900','proveedor14@mail.com','Asesor 14'),(16,'Proveedor 15','Ciudad 15','Dirección 15','7788990011','proveedor15@mail.com','Asesor 15');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiendas`
--

DROP TABLE IF EXISTS `Tiendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tiendas` (
  `idTiendas` int(11) NOT NULL AUTO_INCREMENT,
  `NombreTienda` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTiendas`),
  UNIQUE KEY `idTiendasAMB_UNIQUE` (`idTiendas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tiendas`
--

LOCK TABLES `Tiendas` WRITE;
/*!40000 ALTER TABLE `Tiendas` DISABLE KEYS */;
INSERT INTO `Tiendas` VALUES (1,'Salvaje Granel','La Floresta','3196105162'),(2,'A Granel','Cabecera','3006872514');
/*!40000 ALTER TABLE `Tiendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ventas`
--

DROP TABLE IF EXISTS `Ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ventas` (
  `idVentas` int(11) NOT NULL AUTO_INCREMENT,
  `idProductos` int(11) NOT NULL,
  `idTiendas` int(11) NOT NULL,
  `FechaVenta` datetime NOT NULL,
  UNIQUE KEY `idVentas_UNIQUE` (`idVentas`),
  KEY `FK_Prod_Venta_idx` (`idProductos`),
  KEY `FK_Tienda_Venta_idx` (`idTiendas`),
  CONSTRAINT `FK_Prod_Venta` FOREIGN KEY (`idProductos`) REFERENCES `Productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Tienda_Venta` FOREIGN KEY (`idTiendas`) REFERENCES `Tiendas` (`idTiendas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ventas`
--

LOCK TABLES `Ventas` WRITE;
/*!40000 ALTER TABLE `Ventas` DISABLE KEYS */;
INSERT INTO `Ventas` VALUES (1,3,2,'0000-00-00 00:00:00'),(2,4,1,'2024-11-01 09:00:00'),(3,7,1,'2024-11-04 08:00:00'),(4,19,1,'2024-11-05 12:00:00'),(5,16,2,'2024-11-06 16:00:00');
/*!40000 ALTER TABLE `Ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zonas`
--

DROP TABLE IF EXISTS `Zonas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zonas` (
  `idZonas` int(11) NOT NULL,
  `Nombre Zona` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idZonas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zonas`
--

LOCK TABLES `Zonas` WRITE;
/*!40000 ALTER TABLE `Zonas` DISABLE KEYS */;
INSERT INTO `Zonas` VALUES (1,'Bucaramanga'),(2,'Floridablanca'),(3,'Giron'),(4,'Piedecuesta'),(5,'San Gil'),(6,'Barrancabermeja');
/*!40000 ALTER TABLE `Zonas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resumen_productos`
--

DROP TABLE IF EXISTS `resumen_productos`;
/*!50001 DROP VIEW IF EXISTS `resumen_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumen_productos` AS SELECT 
 1 AS `Nombre`,
 1 AS `Categoriaid`,
 1 AS `Ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'credicel_Food_Wellness'
--

--
-- Dumping routines for database 'credicel_Food_Wellness'
--
/*!50003 DROP FUNCTION IF EXISTS `proveedor_mas_frecuente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` FUNCTION `proveedor_mas_frecuente`(idProductos INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE idProveedores INT;
    SELECT idProveedores
    INTO idProveedores
    FROM Productos
    WHERE idProductos = producto_id
    GROUP BY idProveedores
    ORDER BY COUNT(idProveedores) DESC
    LIMIT 1;
    RETURN idProveedores;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `resumen_productos`
--

/*!50001 DROP VIEW IF EXISTS `resumen_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_productos` AS select `p`.`Nombre` AS `Nombre`,`p`.`Categoriaid` AS `Categoriaid`,sum(`v`.`idTiendas`) AS `Ventas` from (`Productos` `p` left join `Ventas` `v` on(`p`.`idProductos` = `v`.`idProductos`)) group by `p`.`idProductos` */;
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

-- Dump completed on 2024-11-06 19:51:20
