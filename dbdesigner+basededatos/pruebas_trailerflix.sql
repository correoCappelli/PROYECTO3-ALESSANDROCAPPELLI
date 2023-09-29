CREATE DATABASE  IF NOT EXISTS `pruebas_trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pruebas_trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebas_trailerflix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `actorpeliculas`
--

DROP TABLE IF EXISTS `actorpeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actorpeliculas` (
  `idActor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idActor`),
  UNIQUE KEY `actor_peliculas_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorpeliculas`
--

LOCK TABLES `actorpeliculas` WRITE;
/*!40000 ALTER TABLE `actorpeliculas` DISABLE KEYS */;
INSERT INTO `actorpeliculas` VALUES (14,' Actor 6'),(7,' ActorNuvo 1'),(9,' ActorNuvo 3'),(11,' ActorNuvo 4'),(102,' Adam Nagaitis'),(47,' Adeel Akhtar'),(35,' Aidan Gallagher'),(114,' Alana Cavanaugh'),(207,' Alice Braga'),(142,' Angus Macfadyen'),(137,' Awkwafina'),(165,' Benjamin Sokolow'),(147,' Bill Hader'),(52,' Brett Cullen'),(96,' Bruce Harwood'),(224,' Burn Gorman'),(221,' Cailee Spaeny'),(159,' Caitriona Balfe'),(21,' Camila Mendes'),(69,' Candice Patton'),(26,' Carl Weathers'),(67,' Carlos Valdes'),(20,' Casey Cott'),(208,' Charlie Tahan'),(41,' Chloe Pirrie'),(28,' Chris Bartlett'),(55,' Chris Evans'),(57,' Chris Hemsworth'),(126,' Chris Messina'),(200,' Chris Pratt'),(214,' Claire Foy'),(197,' Claire Selby'),(117,' Colin Farrell'),(118,' Common'),(196,' Corey Johnson'),(217,' Corey Stoll'),(88,' Corrine Koslo'),(80,' Courteney Cox'),(89,' Dalila Bela'),(154,' Danai Gurira'),(156,' Daniel Kaluuya'),(68,' Danielle Panabaker'),(209,' Dash Mihok'),(32,' David Castañeda'),(92,' David Duchovny'),(181,' David Harbour'),(82,' David Schwimmer'),(193,' Domhnall Gleeson'),(170,' Dominic Mafham'),(107,' Ed Harris'),(36,' Elliot Page'),(166,' Emily Bayiokos'),(99,' Emily Watson'),(212,' Emma Thompson'),(33,' Emmy Raver-Lampman'),(144,' Enver Gjokaj'),(122,' Ewan McGregor'),(180,' Florence Pugh'),(51,' Frances Conroy'),(198,' Gana Bayarsaikhan'),(119,' Geena Davis'),(86,' Geraldine James'),(30,' Giancarlo Esposito'),(178,' Gwyneth Paltrow'),(39,' Harry Melling'),(6,' Helena Bonham Carter'),(44,' Henry Cavill'),(120,' Ioan Gruffudd'),(201,' Irrfan Khan'),(149,' Isaiah Mustafa'),(135,' Jack Black'),(148,' James McAvoy'),(171,' James Weber Brown'),(42,' Janina Elkin'),(215,' Jason Clarke'),(150,' Jay Ryan'),(188,' Jeff Daniels'),(105,' Jeffrey Wright'),(177,' Jennifer Ehle'),(59,' Jeremy Renner'),(70,' Jesse L. Martin'),(146,' Jessica Chastain'),(101,' Jessie Buckley'),(222,' Jing Tian'),(116,' John Malkovich'),(73,' Johnny Galecki'),(162,' Jon Bernthal'),(143,' Jorja Fox'),(160,' Josh Lucas'),(175,' Jude Law'),(205,' Judy Greer'),(124,' Jurnee Smollett'),(74,' Kaley Cuoco'),(136,' Karen Gillan'),(191,' Kate Mara'),(140,' Kate Walsh'),(176,' Kate Winslet'),(112,' Kerry Bishé'),(134,' Kevin Hart'),(63,' Kit Harington'),(187,' Kristen Wiig'),(76,' Kunal Nayyar'),(216,' Kyle Chandler'),(174,' Laurence Fishburne'),(61,' Lena Headey'),(131,' Lia Williams'),(81,' Lisa Kudrow'),(172,' Lorina Kamburova'),(46,' Louis Partridge'),(90,' Lucas Jade Zumann'),(168,' Luke Allen-Gale'),(108,' Luke Hemsworth'),(153,' Lupita Nyong\'o'),(111,' Mackenzie Davis'),(24,' Mädchen Amick'),(23,' Madelaine Petsch'),(22,' Marisol Nichols'),(56,' Mark Ruffalo'),(155,' Martin Freeman'),(123,' Mary Elizabeth Winstead'),(158,' Matt Damon'),(84,' Matt LeBlanc'),(3,' Matt Smith'),(83,' Matthew Perry'),(78,' Mayim Bialik'),(77,' Melissa Rauch'),(152,' Michael B. Jordan'),(189,' Michael Peña'),(27,' Misty Rosas'),(93,' Mitch Pileggi'),(40,' Moses Ingram'),(138,' Nick Jonas'),(204,' Nick Robinson'),(65,' Nikolaj Coster-Waldau'),(169,' Nina Bergman'),(161,' Noah Jupe'),(182,' O.T. Fagbenle'),(2,' Olivia Colman'),(141,' Omar Epps'),(203,' Omar Sy'),(194,' Oscar Isaac'),(218,' Patrick Fugit'),(100,' Paul Ritter'),(64,' Peter Dinklage'),(130,' Peter Ferdinando'),(87,' R. H. Thomson'),(183,' Rachel Weisz'),(185,' Ray Winstone'),(128,' Rhona Mitra'),(223,' Rinko Kikuchi'),(29,' Rio Hackford'),(49,' Robert De Niro'),(94,' Robert Patrick'),(34,' Robert Sheehan'),(125,' Rosie Perez'),(210,' Salli Richardson-Whitfield'),(45,' Sam Claflin'),(58,' Scarlett Johansson'),(110,' Scoot McNairy'),(220,' Scott Eastwood'),(190,' Sean Bean'),(53,' Shea Whigham'),(75,' Simon Helberg'),(195,' Sonoya Mizuno'),(62,' Sophie Turner'),(98,' Stellan Skarsgård'),(106,' Tessa Thompson'),(104,' Thandie Newton'),(129,' Theo James'),(38,' Thomas Brodie-Sangster'),(4,' Tobias Menzies'),(113,' Toby Huss'),(132,' Toby Jones'),(95,' Tom Braidwood'),(71,' Tom Cavanagh'),(5,' Vanesa Kirby'),(202,' Vincent D\'Onofrio'),(164,' Vincent Piazza'),(184,' William Hurt'),(211,' Willow Smith'),(50,' Zazie Beetz'),(18,'ACTOR 10'),(13,'Actor 5'),(15,'ACTOR 6'),(16,'ACTOR 8'),(17,'ACTOR 9'),(192,'Alicia Vikander'),(167,'Amy Manson'),(85,'Amybeth McNulty'),(37,'Anya Taylor-Joy'),(145,'Bill Skarsgård'),(199,'Bryce Dallas Howard'),(151,'Chadwick Boseman'),(157,'Christian Bale'),(8,'Claire'),(1,'Claire Fox'),(10,'Claire Ivonne'),(12,'Claire Ivonne Metr'),(133,'Dwayne Johnson'),(60,'Emilia Clarke'),(103,'Evan Rachel Wood'),(163,'Génesis Rodríguez'),(91,'Gillian Anderson'),(66,'Grant Gustin'),(97,'Jared Harris'),(79,'Jennifer Aniston'),(115,'Jessica Chastain'),(72,'Jim Parsons'),(48,'Joaquin Phoenix'),(219,'John Boyega'),(109,'Lee Pace'),(19,'Lili Reinhart'),(121,'Margot Robbie'),(173,'Marion Cotillard'),(186,'Matt Damon'),(43,'Millie Bobby Brown'),(139,'Miranda Cosgrove'),(25,'Pedro Pascal'),(54,'Robert Downey Jr.'),(213,'Ryan Gosling'),(179,'Scarlett Johansson'),(127,'Stacy Martin'),(31,'Tom Hopper'),(206,'Will Smith');
/*!40000 ALTER TABLE `actorpeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `catalogodepeliculas`
--

DROP TABLE IF EXISTS `catalogodepeliculas`;
/*!50001 DROP VIEW IF EXISTS `catalogodepeliculas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogodepeliculas` AS SELECT 
 1 AS `titulo`,
 1 AS `Actores`,
 1 AS `Generos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `catalogodepeliculasyactores`
--

DROP TABLE IF EXISTS `catalogodepeliculasyactores`;
/*!50001 DROP VIEW IF EXISTS `catalogodepeliculasyactores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogodepeliculasyactores` AS SELECT 
 1 AS `titulo`,
 1 AS `Actores`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `catalogodepeliculasygeneros`
--

DROP TABLE IF EXISTS `catalogodepeliculasygeneros`;
/*!50001 DROP VIEW IF EXISTS `catalogodepeliculasygeneros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogodepeliculasygeneros` AS SELECT 
 1 AS `titulo`,
 1 AS `Generos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categoriapeliculas`
--

DROP TABLE IF EXISTS `categoriapeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriapeliculas` (
  `categoriaID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`categoriaID`),
  UNIQUE KEY `categoria_peliculas_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriapeliculas`
--

LOCK TABLES `categoriapeliculas` WRITE;
/*!40000 ALTER TABLE `categoriapeliculas` DISABLE KEYS */;
INSERT INTO `categoriapeliculas` VALUES (2,'Accion'),(5,'Aventura'),(3,'Biografia'),(7,'Película'),(6,'Policial'),(1,'Serie'),(4,'Telenovela');
/*!40000 ALTER TABLE `categoriapeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generopeliculas`
--

DROP TABLE IF EXISTS `generopeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generopeliculas` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `genero_peliculas_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generopeliculas`
--

LOCK TABLES `generopeliculas` WRITE;
/*!40000 ALTER TABLE `generopeliculas` DISABLE KEYS */;
INSERT INTO `generopeliculas` VALUES (17,' Acción'),(26,' Aventura'),(21,' Ciencia Ficción'),(25,' Comedia'),(12,' Drama'),(19,' Familia'),(9,' Fantasía'),(7,' Ficción'),(4,' Hechos Ficticios'),(2,' Hechos verídicos'),(33,' Hechos veríficos'),(28,' Historia'),(29,' Intriga'),(6,' Misterio'),(16,' Sci-Fi'),(10,' Sucesos'),(14,' Suspenso'),(23,' Tecnología'),(30,' Terror'),(20,' Western'),(31,' ¿Ficción?'),(24,'Acción'),(15,'Aventura'),(8,'Ciencia Ficción'),(18,'Comedia'),(13,'Crimen'),(1,'Drama'),(3,'Drama DRAMA'),(11,'Ficción'),(5,'Policial'),(32,'Suspenso'),(27,'Terror'),(22,'Western');
/*!40000 ALTER TABLE `generopeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `idPelicula` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(200) DEFAULT NULL,
  `titulo` varchar(200) NOT NULL,
  `categoria` varchar(30) DEFAULT NULL,
  `genero` varchar(200) DEFAULT NULL,
  `resumen` text,
  `temporadas` varchar(30) DEFAULT NULL,
  `reparto` text,
  `trailer` varchar(200) DEFAULT NULL,
  `categoria_ID` int DEFAULT NULL,
  PRIMARY KEY (`idPelicula`),
  UNIQUE KEY `pelicula_titulo` (`titulo`),
  KEY `categoria_ID` (`categoria_ID`),
  CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`categoria_ID`) REFERENCES `categoriapeliculas` (`categoriaID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (9,'icono1.png','The Crown','Serie','Drama, Hechos verídicos','Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.','4','Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter',NULL,1),(10,'icono2.png','Riverdale','Serie','Drama, Misterio, Ficción','El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.','5','Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick',NULL,1),(11,'icono3.png','The Mandalorian','Serie','Ciencia Ficción, Fantasía','Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.','2','Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito','https://www.youtube.com/embed/aOC8E8z_ifw',1),(12,'icono4.png','The Umbrella Academy','Serie','Ciencia Ficción, Fantasía','La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.','1','Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page',NULL,1),(13,'icono5.png','Gambito de Dama','Serie','Drama, Ficción, Sucesos','En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.','1','Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin',NULL,1),(14,'icono6.png','Enola Holmes','Película','Ficción, Drama, Misterio','La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.','N/A','Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar',NULL,7),(15,'icono7.png','Guasón','Película','Crimen, Suspenso, Drama','Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.','N/A','Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham','https://www.youtube.com/embed/zAGVQLHvwOY',7),(16,'icono8.png','Avengers: End Game','Película','Aventura, Sci-Fi, Acción','Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.','N/A','Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner',NULL,7),(17,'icono9.png','Juego de tronos','Serie','Aventura, Fantasía, Drama','En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.','8','Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau',NULL,1),(18,'icono10.png','The Flash','Serie','Ciencia Ficción, Fantasía','Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.','6','Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh',NULL,1),(19,'/posters/11.jpg','The Big Bang Theory','Serie','Comedia, Fantasía, Ficción','Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.','12','Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik','https://www.youtube.com/embed/WBb3fojgW0Q',1),(20,'/posters/12.jpg','Friends','Serie','Comedia, Familia, Drama','\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.','10','Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc',NULL,1),(21,'/posters/13.jpg','Anne with an \'E\'','Serie','Drama, Familia, Western','Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.','2','Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann',NULL,1),(22,'/posters/14.jpg','Expedientes Secretos \'X\'','Serie','Drama, Ciencia Ficción','Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'','11','Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood','https://www.youtube.com/embed/KKziOmsJxzE',1),(23,'/posters/15.jpg','Chernobyl','Serie','Drama, Hechos verídicos','Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.','1','Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis','https://www.youtube.com/embed/s9APLXM9Ei8',1),(24,'/posters/16.jpg','Westworld','Serie','Western, Ciencia Ficción','\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.','3','Evan Rachel Wood, Thandie Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth','https://www.youtube.com/embed/qLFBcdd6Qw0',1),(25,'/posters/17.jpg','Halt and Catch Fire','Serie','Ficción, Drama, Tecnología','Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).','4','Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh','https://www.youtube.com/embed/pWrioRji60A',1),(26,'/posters/18.jpg','Ava','Película','Acción, Drama, Suspenso','Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.','N/A','Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd','',7),(27,'/posters/19.jpg','Aves de presa y la fantabulosa emancipación de una Harley Quinn','Película','Acción, Ficción, Comedia','Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.','N/A','Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina','',7),(28,'/posters/20.jpg','Archivo','Película','Acción, Sci-Fi, Suspenso','2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.','N/A','Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones','https://www.youtube.com/embed/VHSoCnDioAo',7),(29,'/posters/21.jpg','Jumanji - The next level','Película','Comedia, Ficción, Aventura','Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?','N/A','Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas','https://www.youtube.com/embed/rBxcF-r9Ibs',7),(30,'/posters/22.jpg','3022','Película','Ciencia Ficción, Suspenso','La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.','N/A','Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj','https://www.youtube.com/embed/AGQ7OkmIx4Q',7),(31,'/posters/23.jpg','IT - Capítulo 2','Película','Terror, Suspenso, Fantasía','En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.','N/A','Bill Skarsgård, Jessica Chastain, Bill Hader, James McAvoy, Isaiah Mustafa, Jay Ryan','https://www.youtube.com/embed/hZeFeYSmBcg',7),(32,'/posters/24.jpg','Pantera Negra','Película','Acción, Aventura, Fantasía','T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.','N/A','Chadwick Boseman, Michael B. Jordan, Lupita Nyong\'o, Danai Gurira, Martin Freeman, Daniel Kaluuya','https://www.youtube.com/embed/BE6inv8Xh4A',7),(33,'/posters/25.jpg','Contra lo imposible (Ford versus Ferrari)','Película','Drama, Historia, Aventura','Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.','N/A','Christian Bale, Matt Damon, Caitriona Balfe, Josh Lucas, Noah Jupe, Jon Bernthal','https://www.youtube.com/embed/SOVb0-2g1Q0',7),(34,'/posters/26.jpg','Centígrados','Película','Drama, Suspenso, Intriga','Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.','N/A','Génesis Rodríguez, Vincent Piazza, Benjamin Sokolow, Emily Bayiokos','',7),(35,'/posters/27.jpg','DOOM: Aniquilación','Película','Acción, Sci-Fi, Terror','Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.','N/A','Amy Manson, Luke Allen-Gale, Nina Bergman, Dominic Mafham, James Weber Brown, Lorina Kamburova','https://www.youtube.com/embed/nat3u3gAVLE',7),(36,'/posters/28.jpg','Contagio','Película','Drama, Suspenso, ¿Ficción?','De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.','N/A','Marion Cotillard, Matt Damon, Laurence Fishburne, Jude Law, Kate Winslet, Jennifer Ehle, Gwyneth Paltrow','https://www.youtube.com/embed/4sYSyuuLk5g',7),(37,'/posters/29.jpg','Viuda Negra','Película','Drama, Acción, Aventura','Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.','N/A','Scarlett Johansson, Florence Pugh, David Harbour, O.T. Fagbenle, Rachel Weisz, William Hurt, Ray Winstone','https://www.youtube.com/embed/BIn8iANwEog',7),(38,'/posters/30.jpg','The Martian','Película','Drama, Sci-Fi, Aventura','Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.','N/A','Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Sean Bean, Kate Mara','https://www.youtube.com/embed/XvB58bCVfng',7),(39,'/posters/31.jpg','Ex-Machina','Película','Drama, Sci-Fi, Suspenso','Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.','N/A','Alicia Vikander, Domhnall Gleeson, Oscar Isaac, Sonoya Mizuno, Corey Johnson, Claire Selby, Gana Bayarsaikhan','https://www.youtube.com/embed/XRYL5spvEcI',7),(40,'/posters/32.jpg','Jurassic World','Película','Suspenso, Aventura, Ficción','Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.','N/A','Bryce Dallas Howard, Chris Pratt, Irrfan Khan, Vincent D\'Onofrio, Omar Sy, Nick Robinson, Judy Greer','',7),(41,'/posters/33.jpg','Soy leyenda','Película','Drama, Terror, Ficción','Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.','N/A','Will Smith, Alice Braga, Charlie Tahan, Dash Mihok, Salli Richardson-Whitfield, Willow Smith, Emma Thompson','https://www.youtube.com/embed/dtKMEAXyPkg',7),(42,'/posters/34.jpg','El primer hombre en la luna','Película','Drama, Hechos veríficos','Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.','N/A','Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit','',7),(43,'/posters/35.jpg','Titanes del pacífico - La insurrección','Película','Acción, Fantasía, Sci-Fi','Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.','N/A','John Boyega, Scott Eastwood, Cailee Spaeny, Jing Tian, Rinko Kikuchi, Burn Gorman','',7);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula_actor`
--

DROP TABLE IF EXISTS `pelicula_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula_actor` (
  `peliculasTablaIdPelicula` int NOT NULL,
  `actorPeliculaIdActor` int NOT NULL,
  PRIMARY KEY (`peliculasTablaIdPelicula`,`actorPeliculaIdActor`),
  KEY `actorPeliculaIdActor` (`actorPeliculaIdActor`),
  CONSTRAINT `pelicula_actor_ibfk_1` FOREIGN KEY (`peliculasTablaIdPelicula`) REFERENCES `pelicula` (`idPelicula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pelicula_actor_ibfk_2` FOREIGN KEY (`actorPeliculaIdActor`) REFERENCES `actorpeliculas` (`idActor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula_actor`
--

LOCK TABLES `pelicula_actor` WRITE;
/*!40000 ALTER TABLE `pelicula_actor` DISABLE KEYS */;
INSERT INTO `pelicula_actor` VALUES (9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(14,6),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(11,25),(11,26),(11,27),(11,28),(11,29),(11,30),(12,31),(12,32),(12,33),(12,34),(12,35),(12,36),(13,37),(13,38),(13,39),(13,40),(13,41),(13,42),(14,43),(14,44),(14,45),(14,46),(14,47),(15,48),(15,49),(15,50),(15,51),(15,52),(15,53),(16,54),(16,55),(16,56),(16,57),(16,58),(16,59),(17,60),(17,61),(17,62),(17,63),(17,64),(17,65),(18,66),(18,67),(18,68),(18,69),(18,70),(18,71),(19,72),(19,73),(19,74),(19,75),(19,76),(19,77),(19,78),(20,79),(20,80),(20,81),(20,82),(20,83),(20,84),(21,85),(21,86),(21,87),(21,88),(21,89),(21,90),(22,91),(22,92),(22,93),(22,94),(22,95),(22,96),(23,97),(23,98),(23,99),(23,100),(23,101),(23,102),(24,103),(24,104),(24,105),(24,106),(24,107),(24,108),(25,109),(25,110),(25,111),(25,112),(25,113),(25,114),(26,115),(26,116),(26,117),(26,118),(26,119),(26,120),(27,121),(27,122),(27,123),(27,124),(27,125),(27,126),(28,127),(28,128),(28,129),(28,130),(28,131),(28,132),(29,133),(29,134),(29,135),(29,136),(29,137),(29,138),(30,139),(30,140),(30,141),(30,142),(30,143),(30,144),(31,145),(31,146),(38,146),(31,147),(31,148),(31,149),(31,150),(32,151),(32,152),(32,153),(32,154),(32,155),(32,156),(33,157),(33,158),(36,158),(33,159),(33,160),(33,161),(33,162),(34,163),(34,164),(34,165),(34,166),(35,167),(35,168),(35,169),(35,170),(35,171),(35,172),(36,173),(36,174),(36,175),(36,176),(36,177),(36,178),(37,179),(37,180),(37,181),(37,182),(37,183),(37,184),(37,185),(38,186),(38,187),(38,188),(38,189),(38,190),(38,191),(39,192),(39,193),(39,194),(39,195),(39,196),(39,197),(39,198),(40,199),(40,200),(40,201),(40,202),(40,203),(40,204),(40,205),(41,206),(41,207),(41,208),(41,209),(41,210),(41,211),(41,212),(42,213),(42,214),(42,215),(42,216),(42,217),(42,218),(43,219),(43,220),(43,221),(43,222),(43,223),(43,224);
/*!40000 ALTER TABLE `pelicula_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula_genero`
--

DROP TABLE IF EXISTS `pelicula_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula_genero` (
  `generoPeliculaIdGenero` int NOT NULL,
  `peliculasTablaIdPelicula` int NOT NULL,
  PRIMARY KEY (`generoPeliculaIdGenero`,`peliculasTablaIdPelicula`),
  KEY `peliculasTablaIdPelicula` (`peliculasTablaIdPelicula`),
  CONSTRAINT `pelicula_genero_ibfk_1` FOREIGN KEY (`generoPeliculaIdGenero`) REFERENCES `generopeliculas` (`idGenero`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pelicula_genero_ibfk_2` FOREIGN KEY (`peliculasTablaIdPelicula`) REFERENCES `pelicula` (`idPelicula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula_genero`
--

LOCK TABLES `pelicula_genero` WRITE;
/*!40000 ALTER TABLE `pelicula_genero` DISABLE KEYS */;
INSERT INTO `pelicula_genero` VALUES (1,9),(2,9),(1,10),(6,10),(7,10),(8,11),(9,11),(8,12),(9,12),(1,13),(7,13),(10,13),(6,14),(11,14),(12,14),(12,15),(13,15),(14,15),(15,16),(16,16),(17,16),(9,17),(12,17),(15,17),(8,18),(9,18),(7,19),(9,19),(18,19),(12,20),(18,20),(19,20),(1,21),(19,21),(20,21),(1,22),(21,22),(1,23),(2,23),(21,24),(22,24),(11,25),(12,25),(23,25),(12,26),(14,26),(24,26),(7,27),(24,27),(25,27),(14,28),(16,28),(24,28),(7,29),(18,29),(26,29),(8,30),(14,30),(9,31),(14,31),(27,31),(9,32),(24,32),(26,32),(1,33),(26,33),(28,33),(1,34),(14,34),(29,34),(16,35),(24,35),(30,35),(1,36),(14,36),(31,36),(1,37),(17,37),(26,37),(1,38),(16,38),(26,38),(1,39),(14,39),(16,39),(7,40),(26,40),(32,40),(1,41),(7,41),(30,41),(1,42),(33,42),(9,43),(16,43),(24,43);
/*!40000 ALTER TABLE `pelicula_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `catalogodepeliculas`
--

/*!50001 DROP VIEW IF EXISTS `catalogodepeliculas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogodepeliculas` AS select `p`.`titulo` AS `titulo`,`a`.`nombre` AS `Actores`,`g`.`nombre` AS `Generos` from ((((`pelicula` `p` join `pelicula_actor` `pa` on((`pa`.`peliculasTablaIdPelicula` = `p`.`idPelicula`))) join `actorpeliculas` `a` on((`a`.`idActor` = `pa`.`actorPeliculaIdActor`))) join `pelicula_genero` `pg` on((`pg`.`peliculasTablaIdPelicula` = `p`.`idPelicula`))) join `generopeliculas` `g` on((`g`.`idGenero` = `pg`.`generoPeliculaIdGenero`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `catalogodepeliculasyactores`
--

/*!50001 DROP VIEW IF EXISTS `catalogodepeliculasyactores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogodepeliculasyactores` AS select `p`.`titulo` AS `titulo`,`a`.`nombre` AS `Actores` from ((`pelicula` `p` join `pelicula_actor` `pa` on((`pa`.`peliculasTablaIdPelicula` = `p`.`idPelicula`))) join `actorpeliculas` `a` on((`a`.`idActor` = `pa`.`actorPeliculaIdActor`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `catalogodepeliculasygeneros`
--

/*!50001 DROP VIEW IF EXISTS `catalogodepeliculasygeneros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogodepeliculasygeneros` AS select `p`.`titulo` AS `titulo`,`g`.`nombre` AS `Generos` from ((`pelicula` `p` join `pelicula_genero` `pg` on((`pg`.`peliculasTablaIdPelicula` = `p`.`idPelicula`))) join `generopeliculas` `g` on((`g`.`idGenero` = `pg`.`generoPeliculaIdGenero`))) */;
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

-- Dump completed on 2023-09-27 16:05:08
