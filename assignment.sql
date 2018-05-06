-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `Commentor` varchar(45) NOT NULL,
  `Comment` varchar(150) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `GameID` int(11) DEFAULT NULL,
  `comID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`comID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('afwa','dawdwa','2016-05-22',2,100,1),('d','d','2016-05-22',1,100,2),('dan','good dnaidwads dwijdiaw sf fjwafji waf','1998-12-25',5,103,3),('jjj','fwfawfsvawv','2016-05-27',4,110,4),('Justin','waaa wdawds d fmgief ','2016-05-18',5,100,5),('sd','tjsoca','2016-05-22',1,100,6),('timothy','nice game','2016-05-20',3,109,7),('xqd','dwd','2016-05-21',1,100,8);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `GameID` int(11) NOT NULL AUTO_INCREMENT,
  `GameTitle` varchar(45) NOT NULL,
  `Company` varchar(45) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Description` varchar(400) DEFAULT NULL,
  `Price` double NOT NULL,
  `ImageLocation` varchar(150) DEFAULT 'image/Untitled.jpg',
  `PreOwned` char(3) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`GameID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (100,'Assassin\'s Creed Syndicate','Ubisoft','2015-11-19','London, 1868. In the heart of the Industrial Revolution, lead your underworld organization and grow your influence to fight those who exploit the less privileged. As Jacob Frye, a young and reckless Assassin, use your skills to help those trampled by the march of progress.',74,'image/ac.jpg','No',859),(101,'Borderlands 2','2K Games','2012-09-20','A new era of shoot and loot is about to begin. Play as one of four new vault hunters facing off against a massive new world of creatures, psychos and the evil mastermind, fight alongside them in 4 player co-op on a relentless quest for revenge and redemption across the undiscovered and unpredictable living planet.',20,'image/bdl2.jpg','Yes',700),(102,'Counter Strike Global Offensive','Valve','2012-08-22','Play the world\'s number 1 online action game. Engage in an incredibly realistic brand of terrorist warfare in this wildly popular team-based game. Ally with teammates to complete strategic missions. Take out enemy sites. Rescue hostages. Your role affects your team\'s success. Your team\'s success affects your role.',15,'image/csgo.jpg','Yes',902),(103,'Dust: An Elysian Tail','Microsoft Studios','2013-05-24','Immerse yourself in a gorgeous hand-painted world on a search for your true identity. As the mysterious warrior, Dust, your action-packed journey will take you from peaceful glades to snowy mountaintops and beyond together with his guardian, Fidget. ',15,'image/dust.jpg','No',292),(104,'Fallout 4','Bethesda','2015-11-10','As the sole survivor of Vault 111, you enter a world destroyed by nuclear war. Every second is a fight for survival, and every choice is yours. Only you can rebuild and determine the fate of the Wasteland. Welcome home.',79,'image/fallout4.jpg','No',201),(105,'Garry\'s Mod','Facepunch Studios ','2006-11-29','Garry\'s Mod is a physics sandbox. There aren\'t any predefined aims or goals. We give you the tools and leave you to play. ',15,'image/gmod.jpg','Yes',112),(106,'Goat Simulator','Coffee Stain Studios','2014-04-02','Goat Simulator is the latest in goat simulation technology, bringing next-gen goat simulation to YOU. You no longer have to fantasize about being a goat, your dreams have finally come true! WASD to write history. ',10.5,'image/goatsim.jpg','No',109),(107,'Hitman: Absolution','Square Enix','2012-11-19','Hitman: Absolution follows the Original Assassin undertaking his most personal contract to date. Betrayed by the Agency and hunted by the police, Agent 47 finds himself pursuing redemption in a corrupt and twisted world.',21.99,'image/hitman.jpg','Yes',400),(108,'Killing Floor','Tripwire Interactive ','2009-05-14','Killing Floor is a Co-op Survival Horror FPS set in the devastated cities and countryside of England after a series of cloning experiments for the military goes horribly wrong. You and your friends are members of the military dropped into these locations with a simple mission: Survive long enough to cleanse the area of the failed experiments! ',20,'image/kf.jpg','Yes',100),(109,'Lethal League','Team Reptile','2014-08-28','Lethal League is a competitive projectile fighting game where you have to hit an anti-gravity ball into the face of your opponent to win. The ball speeds up with every strike, up to explosively extreme velocities. Play intense local matches with friends and foes, challenge yourself in the singleplayer mode or battle it out online. ',14,'image/lethal.jpg','No',140);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_genre`
--

DROP TABLE IF EXISTS `game_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_genre` (
  `GameID` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_genre`
--

LOCK TABLES `game_genre` WRITE;
/*!40000 ALTER TABLE `game_genre` DISABLE KEYS */;
INSERT INTO `game_genre` VALUES (101,1),(101,9),(102,1),(102,5),(103,1),(103,2),(103,6),(103,9),(104,9),(105,6),(105,10),(106,4),(106,6),(106,10),(107,1),(108,1),(108,5),(109,1),(109,6),(109,11),(114,1),(114,2),(100,1),(100,2);
/*!40000 ALTER TABLE `game_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  `Genre` varchar(45) NOT NULL,
  PRIMARY KEY (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(2,'Adventure'),(3,'Arcade'),(4,'Casual'),(5,'FPS'),(6,'Indie'),(7,'MMO'),(8,'Racing'),(9,'RPG'),(10,'Simulation'),(11,'Sports'),(12,'Strategy');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `transactionID` int(11) NOT NULL AUTO_INCREMENT,
  `memberID` varchar(50) DEFAULT NULL,
  `gameTitle` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`transactionID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (10,'jus@gm.co','gwoaf',10,'2015-03-03',12.03),(11,'2','dwafwa',3,'2016-05-05',12),(12,'jus@gm.co','Assassin\'s Creed Syndicate',1,'2016-08-07',74),(13,'1','Assassin\'s Creed Syndicate',1,'2016-08-07',74),(14,'1','Assassin\'s Creed Syndicate',2,'2016-08-07',74),(15,'1','Dust: An Elysian Tail',1,'2016-08-07',15),(16,'1','Counter Strike Global Offensive',1,'2016-08-07',15),(17,'21','Borderlands 2',1,'2016-08-07',20),(18,'1','Hitman: Absolution',9,'2016-08-07',21.99),(19,'1','Assassin\'s Creed Syndicate',1,'2016-08-08',74);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('admin','admin'),('admin1','admin1'),('admin2','admin2');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'justin','s12345678',NULL,'jus@gm.co','99999999'),(2,'jacky','chan12345','gabc1234','chanchan@gmail.com','95439229'),(19,'timouti','s123456789','just@gm.co','do@gm.co','94939932'),(20,'timoutia','s1234123','afwas','teemo@gm.co','95394493'),(21,'justin','s987654321','sdfghjk','lll@lll.lll','96492292');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `message` varchar(45) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES ('dawdwadwa',NULL,NULL),('dcafwfw',NULL,NULL),('wadsd',3,NULL);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ransomprocess`
--

DROP TABLE IF EXISTS `ransomprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ransomprocess` (
  `processname` varchar(45) NOT NULL,
  `info` varchar(45) NOT NULL,
  PRIMARY KEY (`processname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ransomprocess`
--

LOCK TABLES `ransomprocess` WRITE;
/*!40000 ALTER TABLE `ransomprocess` DISABLE KEYS */;
INSERT INTO `ransomprocess` VALUES ('aaa','hi'),('chrome','chrome exe'),('garena','bhjgdwdwwd'),('hihi',''),('pythorn','teamoutea');
/*!40000 ALTER TABLE `ransomprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ransomwareextension`
--

DROP TABLE IF EXISTS `ransomwareextension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ransomwareextension` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(45) DEFAULT NULL,
  `info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ransomwareextension`
--

LOCK TABLES `ransomwareextension` WRITE;
/*!40000 ALTER TABLE `ransomwareextension` DISABLE KEYS */;
INSERT INTO `ransomwareextension` VALUES (15,'adasddzzz45678','awfwa56yu'),(18,'bagusla','fwafwa'),(19,'gsdfgsdfg','fwaf'),(20,'23456','wsdertyu678');
/*!40000 ALTER TABLE `ransomwareextension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ransomwarefile`
--

DROP TABLE IF EXISTS `ransomwarefile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ransomwarefile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(45) DEFAULT NULL,
  `info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ransomwarefile`
--

LOCK TABLES `ransomwarefile` WRITE;
/*!40000 ALTER TABLE `ransomwarefile` DISABLE KEYS */;
INSERT INTO `ransomwarefile` VALUES (40,'tecsc12345',''),(41,'dsfgsdfczsc567y7u','fwafw'),(42,'llmlm',NULL);
/*!40000 ALTER TABLE `ransomwarefile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_notification`
--

DROP TABLE IF EXISTS `t_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_notification` (
  `c_message` varchar(150) DEFAULT NULL,
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_notification`
--

LOCK TABLES `t_notification` WRITE;
/*!40000 ALTER TABLE `t_notification` DISABLE KEYS */;
INSERT INTO `t_notification` VALUES ('hello',1),('csafw',2),('takla',3),('takla',4),('hello\r\ntakla',5),('hello\r\ntakla',6),('dw',7),('dwad',8),('wad',9);
/*!40000 ALTER TABLE `t_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_users` (
  `c_username` varchar(50) NOT NULL,
  `c_password` varchar(45) NOT NULL,
  PRIMARY KEY (`c_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users`
--

LOCK TABLES `t_users` WRITE;
/*!40000 ALTER TABLE `t_users` DISABLE KEYS */;
INSERT INTO `t_users` VALUES ('admin','admin');
/*!40000 ALTER TABLE `t_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trustedprocess`
--

DROP TABLE IF EXISTS `trustedprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trustedprocess` (
  `processname` varchar(45) NOT NULL,
  `info` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`processname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trustedprocess`
--

LOCK TABLES `trustedprocess` WRITE;
/*!40000 ALTER TABLE `trustedprocess` DISABLE KEYS */;
INSERT INTO `trustedprocess` VALUES ('chrome','1'),('hi','dwdw'),('notepad','1'),('visual studio','1');
/*!40000 ALTER TABLE `trustedprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprocess`
--

DROP TABLE IF EXISTS `userprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprocess` (
  `processname` varchar(45) NOT NULL,
  `approvedcount` int(11) DEFAULT NULL,
  `denycount` int(11) DEFAULT '0',
  PRIMARY KEY (`processname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprocess`
--

LOCK TABLES `userprocess` WRITE;
/*!40000 ALTER TABLE `userprocess` DISABLE KEYS */;
INSERT INTO `userprocess` VALUES ('contorl panel',500,0),('garena',51,0),('notepad',100,0),('photoshop',74,0),('ransomware',1,0),('visual studio',15,0);
/*!40000 ALTER TABLE `userprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `noofmonths` varchar(45) DEFAULT NULL,
  `directorysize` varchar(45) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `attempts` int(11) DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec','admin','6','0',NULL,0),('justinchayzigen@gmail.com','f56f47ecc36fd548a96b672c53a7f2bea4c5c7057d67d87030ba6044415fa3794a823b338241130383af603748df2ee2219cde7dadc668328e430566ad8a9cbb','user','6','0','nvzHAtLAyy',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-06 16:31:30
