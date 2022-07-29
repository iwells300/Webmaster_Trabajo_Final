-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: concesionaria
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `clientestaller`
--

DROP TABLE IF EXISTS `clientestaller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientestaller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `telefono` varchar(250) NOT NULL,
  `modelo` varchar(250) NOT NULL,
  `anio` int NOT NULL,
  `nverif` varchar(250) NOT NULL,
  `verifi` tinyint(1) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientestaller`
--

LOCK TABLES `clientestaller` WRITE;
/*!40000 ALTER TABLE `clientestaller` DISABLE KEYS */;
INSERT INTO `clientestaller` VALUES (1,'Ivan','Hellwig','Av. de Mayo','ivan@gmail.com','45464378999','Focus',2002,'128597',0,'elpepe'),(2,'ivan','Hellwig','dfsdf','sdfsdf@gmail.com','34531221','Focus',2008,'157465',0,'2c42e5cf1cdbafea04ed267018ef1511'),(3,'ivan','hellwig','sdfsadf','ivan@gmail.com','43544787886','Fiesta',2018,'0cda9c13d85add30ad4013c986e9affe',0,'2d7cc67c4c1366b7d80c850b03a9bbe8'),(4,'ivan','hellwig','San Martin','sdf@gmail.com','123456','Ranger',2002,'285dfc167b19f8e659c0209b2db0a1a3',0,'926e27eecdbc7a18858b3798ba99bddd'),(5,'dfasdf','dfasd','sdfasdfs','sdfsdf','1231546','Ranger',2019,'0acaa0e17041dffe744a2dd67bb5c65f',1,'926e27eecdbc7a18858b3798ba99bddd'),(6,'Ivan','Hellwig','sdfasdf','ivan@gmail.com','12345689','Mustang',2022,'a6b1414ae2deac6f7c7a55edafc5ce38',0,'926e27eecdbc7a18858b3798ba99bddd'),(7,'sdfasd','sdfasfd','sdfasdf','elpepe@gmail.com','123456','Ranger',2017,'f5d14175f0112430b2bdaba2c5ce128d',0,'2d7cc67c4c1366b7d80c850b03a9bbe8'),(8,'Ivan','Hellwig','asdfasdf','elpepe@gmail.com','123456','Focus',2017,'1f36151b99556cc33ab69b7d1ee8de90',0,'2d7cc67c4c1366b7d80c850b03a9bbe8'),(9,'Ivan','Hellwig','fasdf','ivan@gmail.com','123154687','Focus',2006,'9f7ff1899d7fe81961c72f291142196f',0,'e10adc3949ba59abbe56e057f20f883e'),(10,'sdfasd','fsdfs','sfdsaf','elpepelazo@gmail.com','13212478798','Focus',2008,'bac7e05fb553d82a72234b177f3d2d39',0,'926e27eecdbc7a18858b3798ba99bddd'),(11,'Ivan','Hellwig','Dorrego 233','ivan@gmail.com','12345497','Mustang',2009,'8376ca7bcb251b76096cd66e28da1651',0,'2c42e5cf1cdbafea04ed267018ef1511'),(12,'Ivan','Hellwig','pepe 335','ivanh@gmail.com','1314454678','Focus',2001,'6fde9ae81d6c41c435d5ba75b15c8698',0,'3641478eee179aad36ffbb33859b9300'),(13,'sdfs','sdfsaf','sdfsaf','fsd@sdfasdf.con','23215446','fsfasdf',2011,'a5539519de7c82425569c1f331acb8c8',0,'06564e8c469c0af9f53cb53037e45001'),(14,'innsdf','sdfasf','sdfasdf','sdf@sdfasf.con','12315','SDFSDF',2002,'94dfe71d4850309877b278e02158a0cc',0,'d258400afa1b2446ddc3ac5711de0922'),(15,'fsdf','dfsf','dfsf','fdf@sdf.com','12345sdf','dfsdf',213,'79cbaf2caba9e12975f43cd350b88ae8',0,'d58e3582afa99040e27b92b13c8f2280'),(16,'sdfa','f','f','iva@sdfasd.com','2134','sdf',22,'a45b9fd10241abee7726d8bc02f59345',0,'7d70663568cac5af684503681e3a4d41'),(17,'Ivan','Hellwig','sdfasdf','sdfasfd@gmail.com','13154sd','fs',2013,'ef46e403cbfc3c3cce88dee81d551dbe',1,'926e27eecdbc7a18858b3798ba99bddd'),(18,'Ivan','Hellwig','sdfsdf','ivan@hotmail.com.ar','231231231','Ranger',2022,'598e6222930db9092b555b4040772148',0,'b3a91fdeeff141eede04fb67686bac76'),(19,'dfas','sadfasdf','sdfasdf','sdaf@hotmail.com','12121','sdfasd',2113,'da4a7eaf456615eabf90ec1e854027f1',0,'d417dd9ba8122727d60ac3a79d403fc6'),(20,'zzz','zzz','zzz','zzz@hotmail.com','211345','fsdf',2022,'d193eb42fea169ab690a811db48bdd8b',0,'5e64fe04bfd8363b6c74ea86f5c867f1'),(21,'fff','fff','fff','fff@gmail.com','2323232','fdsf',2022,'8ae489b887bd035ad91dfd3fbac0ec1d',0,'a9bc7598d790699fec60b826441b9078'),(22,'qqq','qqq','qqq','qqq@gmail.com','12313211','FOCUS',2002,'6d58893520bf62622f29c77c99fc8431',0,'04f16cb923a8aadbb2dfda1e9b2c3f32'),(23,'vvv','vvv','vvv','pe@gmail.com','1324564','Focus',1999,'1abdd1363896305b867bff7bbd5b9efd',0,'8f9091ab452b3613a295459b9ce0738b'),(24,'asd','sdf','sdf','fff@gmail.com','13151648','sdfsdsd',1980,'e75e74ad8849d195c6f2b1ead06778c9',1,'ae7268a515c971a7f2813d7c008cc92a'),(25,'fsd','sdasf','sdfsaf','fsasd@fsd.com','21311','dsfsdf',2033,'04363195808309f4b3b44d381d421cba',0,'01af7d36c2832908fd4c92661f041af2'),(26,'fsdf','sdfsdf','sdfasf','dfsdf@sfsdf.com','fsdfsfsd','1231645',121311,'110a3f365d26e83a542c5cc4ecb04199',1,'2d4900ddcc4ccc9a1ba0702991b7133b'),(27,'Jorge','Flores','Corrientes 232','jorgeflores@gmail.com','123456','Focus',2002,'ded7751f791d09ac9e358057e66dc408',1,'e10adc3949ba59abbe56e057f20f883e'),(28,'Flavia','Ursino','Corrientes 722','flaviaursino@gmail.com','115469856','Fiesta',2014,'d461748b270236123494f0f35ed53f96',1,'81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `clientestaller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (12,'Mario','mario@gmail.com','Hola\r\nQuisiera información sobre un plan para comprar un Ford Focus.\r\n\r\nGracias\r\n\r\nMario\r\n\r\n','julio 24º 2022, 10:30 pm'),(13,'Florencia','florencia@hotmail.com','Hola\r\nPodrian ponerse en contacto conmigo? Quisiera vender un Ford fiesta modelo 96.\r\n\r\nSaludos\r\n\r\nFlorencia','julio 24º 2022, 10:33 pm'),(14,'Ivan','ivan@gmail.com','Esto es un mensaje de prueba \r\ndel formulario de contacto','julio 24º 2022, 10:48 pm');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_emp` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `trabajo` varchar(50) NOT NULL,
  `edad` int NOT NULL,
  `salario` int NOT NULL,
  `mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan','Hagan','Mecanico',32,120000,'juan_hagan@bignet.com'),(2,'Gonzalo','Pillai','Jefe Mecanico',32,110000,'g_pillai@bignet.com'),(3,'Ana','Dharma','Mecanico',27,90000,'ana@bignet.com'),(4,'Maria','Anchor','Administrativo',26,85000,'mary@bignet.com'),(5,'Alfred','Fernandez','Mecanico',31,75000,'af@bignet.com'),(6,'Juan','Agüero','Mecanico',36,85000,'juan@bignet.com'),(7,'Eduardo','Sacan','Administrativo',25,85000,'eddi@bignet.com'),(8,'Alejandro','Nanda','Mecanico',32,70000,'alenanda@bignet.com'),(9,'Hernan','Rosso','Mecanico',33,90000,'hernan@bignet.com'),(10,'Pablo','Simon','Administrativo',43,85000,'ps@bignet.com'),(11,'Arturo','Hernandez','Mecanico',32,75000,'arturo@bignet.com'),(12,'Jimena','Cazado','Jefe Mecanico',32,110000,'jimena@bignet.com'),(13,'Roberto','Luis','Mecanico',35,100000,'roberto@bignet.com'),(14,'Daniel','Gutierrez','Mecanico',34,900000,'daniel@bignet.com'),(15,'Miguel','Harper','Ejecutivo de ventas',36,120000,'miguel@bignet.com'),(16,'Monica','Sanchez','Ejecutivo de ventas',30,90000,'monica@bignet.com'),(17,'Alicia','Simlai','Ejecutivo de ventas',27,70000,'alicia@bignet.com'),(18,'Jose','Iriarte','Ejecutivo de ventas',27,72000,'jose@bignet.com'),(19,'Sabrina','Allende','Gerente de Sucursal',32,200000,'sabrina@bignet.com'),(21,'Mariano','Dharma','Presidente',28,300000,'mariano@bignet.com');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL,
  `boton` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedades`
--

LOCK TABLES `novedades` WRITE;
/*!40000 ALTER TABLE `novedades` DISABLE KEYS */;
INSERT INTO `novedades` VALUES (43,'Nueva Ford Ranger','Pedí la tuya','Llega a nuestros concesionarios la nueva Pick up del país.\r\nMotor nuevo 4.6 e inyección multipunto.\r\nSistema onboard.\r\nDigitación neumática en las cuatro ruedas.\r\nY mucho mas...\r\nVeni a conocerla, tenemos promociones para las primeras unidades.',1),(44,'Nueva sucursal Cordoba','Abre en Agosto','En Agosto abrimos una nueva sucursal de concesionarias Silver s.a. en la ciudad de Córdoba.\r\nCerca de 800 m2 de showroom, servicio de usados y playa exclusiva para Test Drive.\r\nNo te la pierdas.\r\nDesde Septiembre en Av. Figueroa Alcorta 246.\r\nTe esperamos!',0),(45,'3 y 6 cuotas sin interes. Solo con Mastercad.','Nuevo!	','Desde Agosto llévate tu 0k en cuotas a sola firma, en 3 y 6 cuotas sin interés. Solo con Mastercad.',1);
/*!40000 ALTER TABLE `novedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnostaller`
--

DROP TABLE IF EXISTS `turnostaller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnostaller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dia` varchar(250) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFinal` time NOT NULL,
  `auto` varchar(250) NOT NULL,
  `servicio` varchar(250) NOT NULL,
  `motor` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnostaller`
--

LOCK TABLES `turnostaller` WRITE;
/*!40000 ALTER TABLE `turnostaller` DISABLE KEYS */;
INSERT INTO `turnostaller` VALUES (3,'Jorge','Flores','jorgeflores@gmail.com','2022-08-01','10:00:00','10:30:00','Focus','65000','Nafta'),(4,'Jorge','Flores','jorgeflores@gmail.com','2022-08-03','12:00:00','13:00:00','Focus','20000','Nafta'),(6,'Flavia','Ursino','flaviaursino@gmail.com','2022-07-27','12:00:00','14:00:00','Fiesta','30000','Nafta'),(7,'Flavia','Ursino','flaviaursino@gmail.com','2022-07-29','14:00:00','15:00:00','Fiesta','40000','Diesel');
/*!40000 ALTER TABLE `turnostaller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'ivan','e10adc3949ba59abbe56e057f20f883e'),(2,'flavia','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'concesionaria'
--

--
-- Dumping routines for database 'concesionaria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 23:24:40
