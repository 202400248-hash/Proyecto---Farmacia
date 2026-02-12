-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: farmacia
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT 0,
  `precio` decimal(10,2) DEFAULT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  `actualizado_en` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_medicamento_proveedor` (`proveedor_id`),
  CONSTRAINT `fk_medicamento_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Amoxicilina 500 mg cápsulas','Antibiótico',120,85.00,1,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(2,'Ibuprofeno 400 mg tabletas','Analgésico',200,65.50,2,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(3,'Paracetamol 500 mg tabletas','Analgésico',250,48.00,2,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(4,'Omeprazol 20 mg cápsulas','Gastrointestinal',180,92.00,3,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(5,'Losartán 50 mg tabletas','Antihipertensivo',140,130.00,4,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(6,'Metformina 850 mg tabletas','Antidiabético',160,115.00,5,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(7,'Diclofenaco 100 mg tabletas','Antiinflamatorio',190,72.00,1,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(8,'Loratadina 10 mg tabletas','Antialérgico',150,58.50,6,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(9,'Salbutamol inhalador 100 mcg','Respiratorio',80,210.00,7,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(10,'Vitamina C 1 g efervescente','Vitamina',130,55.00,8,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(11,'Azitromicina 500 mg tabletas','Antibiótico',50,185.00,3,'2025-11-29 17:44:33','2025-11-29 19:42:24'),(12,'Naproxeno 500 mg tabletas','Antiinflamatorio',170,78.00,9,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(13,'Ranitidina 150 mg tabletas','Gastrointestinal',110,66.00,10,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(14,'Insulina NPH frasco 10 ml','Antidiabético',60,320.00,5,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(15,'Suero oral pediátrico 500 ml','Hidratación',140,40.00,6,'2025-11-29 17:44:33','2025-11-29 17:44:33'),(17,'Rosario','Antibiótico',65,58.00,3,'2025-11-29 19:42:49','2025-11-30 17:27:52');
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Distribuidora Médica del Caribe','9981234567','Av. Kabah 120, Cancún, Q. Roo','2025-11-29 17:44:07'),(2,'Farmacéuticos del Sureste','9982345678','Av. Tulum 350, Cancún, Q. Roo','2025-11-29 17:44:07'),(3,'Suministros Hospitalarios MX','5551238090','Calz. de Tlalpan 4560, CDMX','2025-11-29 17:44:07'),(4,'Medicamentos del Norte','8184456677','Av. Gonzalitos 2040, Monterrey, NL','2025-11-29 17:44:07'),(5,'Proveedor Salud Total','3339987766','Av. Vallarta 1500, Guadalajara, Jal.','2025-11-29 17:44:07'),(6,'Distribuidora FarmaPlus','5578901234','Eje Central 89, CDMX','2025-11-29 17:44:07'),(7,'Logística Farmacéutica Peninsular','9993456789','Col. Centro 210, Mérida, Yuc.','2025-11-29 17:44:07'),(8,'Comercializadora BioSalud','4426789988','Blvd. Bernardo Quintana 300, Qro.','2025-11-29 17:44:07'),(9,'Alianza Médica Nacional','5567890123','Insurgentes Sur 1000, CDMX','2025-11-29 17:44:07'),(10,'FarmaExpress Proveedores','5543216789','Av. Revolución 890, CDMX','2025-11-29 17:44:07'),(11,'Medicenter Distribuciones','2294456677','Blvd. Ruiz Cortines 200, Veracruz, Ver.','2025-11-29 17:44:07'),(12,'Grupo Farmacéutico Pacífico','6625678899','Blvd. Navarrete 55, Hermosillo, Son.','2025-11-29 17:44:07'),(13,'Soluciones Médicas Bajío','4773345566','Blvd. López Mateos 600, León, Gto.','2025-11-29 17:44:07'),(14,'Red Farma Corporativo','8134452211','Av. Universidad 1300, Monterrey, NL','2025-11-29 17:44:07'),(15,'FarmaLogística Integral','5512347788','Av. Constituyentes 250, CDMX','2025-11-29 17:44:07');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `rol` enum('admin','empleado') DEFAULT 'empleado',
  `creado_en` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rosario','202400248@farmacia.com','123456','admin','0000-00-00 00:00:00'),(2,'marcos','admin@farmacia.com','$2y$10$oWBmBh6JeGbBI3eRCMQpQOWWOlW7iG7GbqaNSN4EJguSFC15LUidG','admin','2025-11-13 21:23:00'),(3,'Tocino Master','tocino@farmacia.com','$2y$10$z8k9vL5mPqRtY6uI7oP.aS3dF2gH1jK0lM9n8oP7qR6sT5uV4wXyZ','admin','2025-11-29 19:08:04'),(6,'empleado','empleado@farmacia.com','$2y$10$wCXebYHJQmNVp4a6atvR9uPHXt/vlNYSYDrsZ2.nh9Eo6jXTU.3uy','empleado','2025-11-29 19:46:46');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-11 10:09:14
