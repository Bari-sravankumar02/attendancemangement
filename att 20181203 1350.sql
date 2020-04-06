-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema attendance
--

CREATE DATABASE IF NOT EXISTS attendance;
USE attendance;

--
-- Definition of table `attst`
--

DROP TABLE IF EXISTS `attst`;
CREATE TABLE `attst` (
  `PinNo` varchar(45) NOT NULL,
  `Semester` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  `1stMonth` varchar(45) NOT NULL,
  `2ndMonth` varchar(45) NOT NULL,
  `3rdMonth` varchar(45) NOT NULL,
  `4thMonth` varchar(45) NOT NULL,
  `TotalPresents` varchar(45) NOT NULL,
  `TotalAbsents` varchar(45) NOT NULL,
  `TotalWorkingDays` varchar(45) NOT NULL,
  `TotalPercentage` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attst`
--

/*!40000 ALTER TABLE `attst` DISABLE KEYS */;
INSERT INTO `attst` (`PinNo`,`Semester`,`Branch`,`1stMonth`,`2ndMonth`,`3rdMonth`,`4thMonth`,`TotalPresents`,`TotalAbsents`,`TotalWorkingDays`,`TotalPercentage`) VALUES 
 ('16054-CIV-020','Sixth Semester','Civil','22','24','18','19','83','7','90','92.22%'),
 ('16054-EEE-027','Fifth Semester','EEE','20','19','16','22','77','13','90','85.55%'),
 ('17054-MECH-014','Third Semester','Mechanical','19','18','20','22','79','11','90','87.77%'),
 ('17054-MECH-021','Fourth Semester','Mechanical','19','20','24','16','79','11','90','87.77%'),
 ('18054-ECE-205','First Semester','ECE','19','22','21','18','80','10','90','88.88%'),
 ('17054-MECH-014','Fourth Semester','Mechanical','20','22','18','21','81','9','90','90%');
/*!40000 ALTER TABLE `attst` ENABLE KEYS */;


--
-- Definition of table `notif`
--

DROP TABLE IF EXISTS `notif`;
CREATE TABLE `notif` (
  `Date` varchar(45) NOT NULL,
  `Notifications` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

/*!40000 ALTER TABLE `notif` DISABLE KEYS */;
INSERT INTO `notif` (`Date`,`Notifications`) VALUES 
 ('2018-10-03','Traditional Day'),
 ('2018-10-07','Dusshera Holidays from 8th to 22nd oct'),
 ('2018-11-20','Attendance are Released');
/*!40000 ALTER TABLE `notif` ENABLE KEYS */;


--
-- Definition of table `stfreg`
--

DROP TABLE IF EXISTS `stfreg`;
CREATE TABLE `stfreg` (
  `Name` varchar(45) NOT NULL,
  `FatherName` varchar(45) NOT NULL,
  `MobileNo` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `DateOfBirth` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `StaffId` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  `Semester` varchar(45) NOT NULL,
  PRIMARY KEY  (`MobileNo`,`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stfreg`
--

/*!40000 ALTER TABLE `stfreg` DISABLE KEYS */;
INSERT INTO `stfreg` (`Name`,`FatherName`,`MobileNo`,`Email`,`DateOfBirth`,`Gender`,`Address`,`StaffId`,`Password`,`Branch`,`Semester`) VALUES 
 ('Manjula','Anjaneyulu','7895624853','manjula.k@gmail.com','1988-04-05','female','32-932/A,Secunderabad, Hyd 500026','MAN853','manjula','EEE','Fifth Semester'),
 ('Srinivas','Janardhan','9441041300','srinivas1987@gmail.com','1984-07-08','male','43-5, Chegunta, Medak 502255','SRI300','srinivas','Civil','Sixth Semester'),
 ('Ramakrishna','Chedrashekar','9487675234','ramakrishna.kanku@gmail.com','1980-02-15','male','34-89, warangal, warangal 506006','RAM234','ramakrishna','Mechanical','Fourth Semester'),
 ('A.Priyanka','Narsimulu','9573524298','priyanka.ayodhya@gmail.com','1991-11-11','female','74-2/D, Kukatpally, Hyd 500027','PRI298','priyanka','ECE','First Semester'),
 ('Bhaskar','Jagadish','9586842371','bhaskar.chari@gmail.com','1983-05-18','male','32-25/A, Lb nagar, hyd 500029','BHA371','bhaskar','Mechanical','Third Semester');
/*!40000 ALTER TABLE `stfreg` ENABLE KEYS */;


--
-- Definition of table `streg`
--

DROP TABLE IF EXISTS `streg`;
CREATE TABLE `streg` (
  `StudentName` varchar(45) NOT NULL,
  `FatherName` varchar(45) NOT NULL,
  `StudentMobileNo` varchar(45) NOT NULL,
  `FatherMobileNo` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `DateOfBirth` varchar(45) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PinNo` varchar(45) NOT NULL,
  `Semester` varchar(45) NOT NULL,
  `Caste` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  PRIMARY KEY  (`PinNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `streg`
--

/*!40000 ALTER TABLE `streg` DISABLE KEYS */;
INSERT INTO `streg` (`StudentName`,`FatherName`,`StudentMobileNo`,`FatherMobileNo`,`Gender`,`DateOfBirth`,`Address`,`PinNo`,`Semester`,`Caste`,`Branch`) VALUES 
 ('Pranay','Gangadar','8555080155','8897219692','male','1998-02-13','34-43/5/B, Nacharam,Hyd 502334','16054-CIV-020','Sixth Semester','ST','Civil'),
 ('Sushma','Narsimulu','9618231715','9140522939','female','1999-04-15','1-84,Alwal,hyd 500055','16054-EEE-027','Fifth Semester','BC-D','EEE'),
 ('B.Anil','B.S.R','9554984526','9447171227','male','1999-02-01','3-74, Wadiaram, medak 502255','17054-MECH-014','Fourth Semester','BC-C','Mechanical'),
 ('Sriram','Papaiah','8639486323','9368843632','male','2000-09-03','2-49/2, Tirumalagiri,Hyd,500056','17054-MECH-021','Fourth Semester','BC-A','Mechanical'),
 ('Y.Pallavi','Siddiramulu','7997010475','9963078022','female','2000-04-17','6-4-42/A/1, Balanagar, hyd 500037','18054-CSE-033','Second Semester','BC-B','Computer'),
 ('A.Supriya','Narsimulu','8309445249','9392250914','female','2002-01-12','15-284,Shapoor,hyd 500055','18054-ECE-205','First Semester','BC-B','ECE');
/*!40000 ALTER TABLE `streg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
