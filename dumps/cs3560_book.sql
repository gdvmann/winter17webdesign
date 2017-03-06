-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cs3560
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` varchar(900) NOT NULL,
  `year` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bookname_UNIQUE` (`bookname`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'On the Origin of Species','Charles Darwin','A work of scientific literature by Charles Darwin which is considdered to be the foundation of evolutionary biology','1859'),(52,'The Selfish Gene','Richard Dawkins','The Selfish Gene is a 1976 book on evolution by Richard Dawkins, in which Dawkins builds upon the principal theory of George C. Williams Adaptation and Natural Selection.','1976'),(54,'A Brief History of Time','Stephen Hawking','A Brief History of Time: From the Big Bang to Black Holes is a popular-science book on cosmology by British physicist Stephen Hawking. It was first published in 1988.','1988'),(55,'A Short History of Nearly Everything','Bill Bryson','A Short History of Nearly Everything by American author Bill Bryson is a popular science book that explains some areas of science, using easily accessible language that appeals more so to the general public than many other books dedicated to the subject.','2003'),(56,'Cosmos','Carl Sagan','Cosmos is a 1980 popular science book by astronomer and Pulitzer Prize-winning author Carl Sagan. Its 13 illustrated chapters, corresponding to the 13 episodes of the Cosmos TV series, which the book was co-developed with and intended to complement, explore the mutual development of science and civilization.','1980'),(58,'Godel, Escher, Bach: an Eternal Golden Braid','Douglas Hofstadter','Godel, Escher, Bach: An Eternal Golden Braid, also known as GEB, is a 1979 book by Douglas Hofstadter. The tagline ','1979'),(59,'The Elegant Universe','Brian Greene','The Elegant Universe: Superstrings, Hidden Dimensions, and the Quest for the Ultimate Theory is a book by Brian Greene published in 1999, which introduces string and superstring theory, and provides a comprehensive though non-technical assessment of the theory and some of its shortcomings.','1999'),(60,'Silent Spring','Silent Spring','Silent Spring is an environmental science book by Rachel Carson. The book was published on 27 September 1962 and it documented the detrimental effects on the environment of the indiscriminate use of pesticides.','1962'),(61,'Packing for Mars','Mary Roach','Packing for Mars: The Curious Science of Life in the Void is a non-fiction work by science author Mary Roach.','2010'),(62,'Pale Blue Dot: A Vision of the Human Future in Space','Carl Sagan','Pale Blue Dot: A Vision of the Human Future in Space is a 1994 book by Carl Sagan. It is the sequel to Cosmos and was inspired by the famous Pale Blue Dot photograph, for which Sagan provides a poignant description.','1994'),(63,'What If?: Serious Scientific Answers to Absurd Hypothetical Questions','Randall Munroe','What If?: Serious Scientific Answers to Absurd Hypothetical Questions is a non-fiction book by Randall Munroe in which he answers hypothetical science questions sent to him by readers of his webcomic, xkcd.','2014'),(64,'Chaos: Making a New Science','James Gleick','Chaos: Making a New Science is a debut non-fiction book by James Gleick that initially introduced the principles and early development of the chaos theory to the public.','1987'),(65,'A Universe from Nothing','Lawrence M. Krauss','A Universe from Nothing: Why There Is Something Rather than Nothing is a non-fiction book by the physicist Lawrence M. Krauss, initially published on January 10, 2012 by Free Press.','2012'),(66,'Bad Science','Ben Goldacre','Bad Science is a book by Ben Goldacre, criticising mainstream media reporting on health and science issues. Published by Fourth Estate in September 2008, the book contains extended and revised versions of many of his Guardian columns.','2008'),(67,'The Demon-Haunted World','Carl Sagan','The Demon-Haunted World: Science as a Candle in the Dark is a 1995 book by astrophysicist Carl Sagan, in which Sagan aims to explain the scientific method to laypeople, and to encourage people to learn critical and skeptical thinking.','1995'),(68,'Wonderful Life: The Burgess Shale and the Nature of History','Stephen Jay Gould','Wonderful Life: The Burgess Shale and the Nature of History is a 1989 book on the evolution of Cambrian fauna by Harvard paleontologist Stephen Jay Gould.','1989'),(69,'What Is Life?','Erwin Schrodinger','What Is Life? The Physical Aspect of the Living Cell is a 1944 science book written for the lay reader by physicist Erwin Schrodinger.','1944'),(70,'The Grand Design','Leonard Mlodinow and Stephen Hawking','The Grand Design is a popular-science book written by physicists Stephen Hawking and Leonard Mlodinow and published by Bantam Books in 2010. The book examines the history of scientific knowledge about the universe and explains 11 dimension M-theory.','2010');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-04 22:04:00
