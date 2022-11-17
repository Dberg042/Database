-- MariaDB dump 10.19  Distrib 10.9.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nordicdoor
-- ------------------------------------------------------
-- Server version	10.9.2-MariaDB-1:10.9.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ApplicationUser`
--

DROP TABLE IF EXISTS `ApplicationUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ApplicationUser` (
  `Id` varchar(255) NOT NULL,
  `EmployeeNumber` varchar(10) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `UserName` longtext DEFAULT NULL,
  `NormalizedUserName` longtext DEFAULT NULL,
  `Email` longtext DEFAULT NULL,
  `NormalizedEmail` longtext DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ApplicationUser`
--

LOCK TABLES `ApplicationUser` WRITE;
/*!40000 ALTER TABLE `ApplicationUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `ApplicationUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetRoleClaims`
--

DROP TABLE IF EXISTS `AspNetRoleClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetRoleClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetRoleClaims`
--

LOCK TABLES `AspNetRoleClaims` WRITE;
/*!40000 ALTER TABLE `AspNetRoleClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetRoleClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetRoles`
--

DROP TABLE IF EXISTS `AspNetRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetRoles` (
  `Id` varchar(255) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `RoleNameIndex` (`NormalizedName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetRoles`
--

LOCK TABLES `AspNetRoles` WRITE;
/*!40000 ALTER TABLE `AspNetRoles` DISABLE KEYS */;
INSERT INTO `AspNetRoles` VALUES
('187f27ce-99c1-40ee-b466-1783a7915d56','User','USER',NULL),
('37e54590-0562-4022-b1bc-17a1e67cade0','TeamManager','TEAMMANAGER',NULL),
('7e7ed8f8-e821-4e98-8122-bb2e9aec1a74','Administrator','ADMINISTRATOR',NULL);
/*!40000 ALTER TABLE `AspNetRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserClaims`
--

DROP TABLE IF EXISTS `AspNetUserClaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserClaims` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(255) NOT NULL,
  `ClaimType` longtext DEFAULT NULL,
  `ClaimValue` longtext DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_AspNetUserClaims_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserClaims`
--

LOCK TABLES `AspNetUserClaims` WRITE;
/*!40000 ALTER TABLE `AspNetUserClaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserClaims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserLogins`
--

DROP TABLE IF EXISTS `AspNetUserLogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) NOT NULL,
  `ProviderKey` varchar(128) NOT NULL,
  `ProviderDisplayName` longtext DEFAULT NULL,
  `UserId` varchar(255) NOT NULL,
  PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  KEY `IX_AspNetUserLogins_UserId` (`UserId`),
  CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserLogins`
--

LOCK TABLES `AspNetUserLogins` WRITE;
/*!40000 ALTER TABLE `AspNetUserLogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserLogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserRoles`
--

DROP TABLE IF EXISTS `AspNetUserRoles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(255) NOT NULL,
  `RoleId` varchar(255) NOT NULL,
  PRIMARY KEY (`UserId`,`RoleId`),
  KEY `IX_AspNetUserRoles_RoleId` (`RoleId`),
  CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserRoles`
--

LOCK TABLES `AspNetUserRoles` WRITE;
/*!40000 ALTER TABLE `AspNetUserRoles` DISABLE KEYS */;
INSERT INTO `AspNetUserRoles` VALUES
('664489bb-8b3a-4b20-96f9-0409a902155e','187f27ce-99c1-40ee-b466-1783a7915d56'),
('664489bb-8b3a-4b20-96f9-0409a902155e','37e54590-0562-4022-b1bc-17a1e67cade0'),
('83f7d14c-1b5e-4508-984b-b7c9c672c133','37e54590-0562-4022-b1bc-17a1e67cade0'),
('83f7d14c-1b5e-4508-984b-b7c9c672c133','7e7ed8f8-e821-4e98-8122-bb2e9aec1a74'),
('b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3','187f27ce-99c1-40ee-b466-1783a7915d56'),
('b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3','37e54590-0562-4022-b1bc-17a1e67cade0'),
('b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3','7e7ed8f8-e821-4e98-8122-bb2e9aec1a74');
/*!40000 ALTER TABLE `AspNetUserRoles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUserTokens`
--

DROP TABLE IF EXISTS `AspNetUserTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(255) NOT NULL,
  `LoginProvider` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL,
  `Value` longtext DEFAULT NULL,
  PRIMARY KEY (`UserId`,`LoginProvider`,`Name`),
  CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUserTokens`
--

LOCK TABLES `AspNetUserTokens` WRITE;
/*!40000 ALTER TABLE `AspNetUserTokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `AspNetUserTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) NOT NULL,
  `EmployeeNumber` varchar(10) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext DEFAULT NULL,
  `SecurityStamp` longtext DEFAULT NULL,
  `ConcurrencyStamp` longtext DEFAULT NULL,
  `PhoneNumber` longtext DEFAULT NULL,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUsers`
--

LOCK TABLES `AspNetUsers` WRITE;
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` VALUES
('664489bb-8b3a-4b20-96f9-0409a902155e','100','Test 2','Lastname','test2@test.ca','100','test2@test.ca','TEST2@TEST.CA',0,'AQAAAAEAACcQAAAAEEEmtFbTr6vWELCLx3s4e2NBenEQ27B7gpZasP6D0jeBnySxiRlNrisu19nl/yOFBQ==','Y23LJSPFWW32GG6UEGIP4QDB3NCNQFXR','76eb6b0c-93e0-4272-9342-4fecfb20103f',NULL,0,0,NULL,1,0),
('83f7d14c-1b5e-4508-984b-b7c9c672c133','101','Test 3','Lastname','test3@test.ca','101','test3@test.ca','TEST3@TEST.CA',0,'AQAAAAEAACcQAAAAEEEmtFbTr6vWELCLx3s4e2NBenEQ27B7gpZasP6D0jeBnySxiRlNrisu19nl/yOFBQ==','Y23LJSPFWW32GG6UEGIP4QDB3NCNQFXR','76eb6b0c-93e0-4272-9342-4fecfb20103f',NULL,0,0,NULL,1,0),
('8ae8d783-4f2d-4221-abdf-6324fc17c7c3','103','Mad ','Petersen','103','103','maddsu@gmail.com','MADDSU@GMAIL.COM',0,'AQAAAAEAACcQAAAAEPPl4UQ4k78eA+QUzq370GvPnsbEDsKO5xnJfYd4Fp6vBq2qyWjG1iQ0GviWi7FqpQ==','ILBQCA3HZDLEPKMV5BTS3WHCZVLJVF6N','dacb18c3-183b-4eea-869c-95f5efa05f26',NULL,0,0,NULL,1,0),
('b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3','102','David','Berg','102','102','dberg@gmail.com','DBERG@GMAIL.COM',0,'AQAAAAEAACcQAAAAEEEmtFbTr6vWELCLx3s4e2NBenEQ27B7gpZasP6D0jeBnySxiRlNrisu19nl/yOFBQ==','Y23LJSPFWW32GG6UEGIP4QDB3NCNQFXR','4478dcf7-f115-4353-993f-cbdf772db115',NULL,0,0,NULL,1,0),
('ed0da541-aecd-4c3f-9957-217fb3f233e2','104','David','Saga','104','104','dsaga@uia.no','DSAGA@UIA.NO',0,'AQAAAAEAACcQAAAAECekAcMjYSgcy5BpOO8G230dGYRRuAcYj5GxIo5hncP4Mz5Sior0+IG9zOiJVwGTlQ==','BYT3SZJZC57GLGHG7HNDQ4GFPEB2Z2KJ','63dd1166-d8f2-4435-bbbf-2bbd06a6e808',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Memberships`
--

DROP TABLE IF EXISTS `Memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Memberships` (
  `TeamID` int(11) NOT NULL,
  `UserID` varchar(255) NOT NULL,
  PRIMARY KEY (`TeamID`,`UserID`),
  KEY `IX_Memberships_UserID` (`UserID`),
  CONSTRAINT `FK_Memberships_AspNetUsers_UserID` FOREIGN KEY (`UserID`) REFERENCES `AspNetUsers` (`Id`),
  CONSTRAINT `FK_Memberships_Team_TeamID` FOREIGN KEY (`TeamID`) REFERENCES `Team` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Memberships`
--

LOCK TABLES `Memberships` WRITE;
/*!40000 ALTER TABLE `Memberships` DISABLE KEYS */;
INSERT INTO `Memberships` VALUES
(1,'83f7d14c-1b5e-4508-984b-b7c9c672c133'),
(1,'8ae8d783-4f2d-4221-abdf-6324fc17c7c3'),
(1,'b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3'),
(1,'ed0da541-aecd-4c3f-9957-217fb3f233e2'),
(2,'8ae8d783-4f2d-4221-abdf-6324fc17c7c3'),
(2,'b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3'),
(2,'ed0da541-aecd-4c3f-9957-217fb3f233e2'),
(3,'8ae8d783-4f2d-4221-abdf-6324fc17c7c3'),
(3,'b75ccfd3-f56f-4576-81b1-5fb1d5ca6ec3');
/*!40000 ALTER TABLE `Memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suggestion`
--

DROP TABLE IF EXISTS `Suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Suggestion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(70) NOT NULL,
  `Description` varchar(180) NOT NULL,
  `MainBody` longtext NOT NULL,
  `Team` longtext NOT NULL,
  `Owner` longtext DEFAULT NULL,
  `StartDate` datetime(6) NOT NULL,
  `Status` int(11) NOT NULL,
  `Category` longtext NOT NULL,
  `Justdoit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suggestion`
--

LOCK TABLES `Suggestion` WRITE;
/*!40000 ALTER TABLE `Suggestion` DISABLE KEYS */;
INSERT INTO `Suggestion` VALUES
(1,'Fixing the oak doors','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem ipsum, malesuada et sagittis vel, elementum ac ligula. ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec lorem ipsum, malesuada et sagittis vel, elementum ac ligula. Suspendisse mollis sagittis ipsum sit amet dignissim. Maecenas ac rhoncus massa. Ut consectetur vehicula felis, ac porttitor diam feugiat vel. Morbi ac sapien convallis, bibendum nisl non, auctor elit. Etiam id porttitor turpis. In vel faucibus velit, ac pulvinar enim. Sed mattis diam quam, sit amet vestibulum odio convallis eu.','Team 1','Hilde Gunn','1959-04-15 00:00:00.000000',1,'Kvalitet',1),
(2,'Instaling the sensor activated doors','Suspendisse mollis sagittis ipsum sit amet dignissim.','Pellentesque dapibus diam eros, id ultrices lorem convallis sit amet. Proin porta eros a massa rhoncus, id ullamcorper urna hendrerit. Integer porta quam massa, et sollicitudin mauris maximus et. Nulla bibendum eu augue id malesuada. Pellentesque nisl ante, ultrices a leo ac, hendrerit elementum mauris. Vestibulum mollis ultrices efficitur. In ac quam at justo tristique rutrum. Nulla facilisi.','Team 2','Tom Anderson','1999-04-15 00:00:00.000000',2,'HMS',0);
/*!40000 ALTER TABLE `Suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TeamNumber` varchar(50) NOT NULL,
  `TeamName` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
INSERT INTO `Team` VALUES
(1,'1','Accounting'),
(2,'2','Builders'),
(3,'3','FrontEnd');
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__EFMigrationsHistory`
--

LOCK TABLES `__EFMigrationsHistory` WRITE;
/*!40000 ALTER TABLE `__EFMigrationsHistory` DISABLE KEYS */;
INSERT INTO `__EFMigrationsHistory` VALUES
('20221114121219_Initial','6.0.10'),
('20221114121442_Initial','6.0.10'),
('20221114121746_SeedRoles','6.0.10');
/*!40000 ALTER TABLE `__EFMigrationsHistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 20:53:14
