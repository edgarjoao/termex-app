-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: 72.13.93.206:3307
-- Generation Time: Apr 19, 2015 at 07:42 PM
-- Server version: 5.0.77
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `termex`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `ID_BAN` int(11) NOT NULL auto_increment,
  `BAN_STATUS` varchar(1) default NULL,
  `BAN_IMG` mediumblob,
  `BAN_IMG_NAME` varchar(45) default NULL,
  `BAN_IMG_TYPE` varchar(20) default NULL,
  `BAN_CREATED_DATE` datetime default NULL,
  PRIMARY KEY  (`ID_BAN`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `banner_detail`
--

DROP TABLE IF EXISTS `banner_detail`;
CREATE TABLE IF NOT EXISTS `banner_detail` (
  `ID_BAN` int(11) NOT NULL,
  `ID_LANG` int(11) NOT NULL,
  `BAND_TITLE` varchar(50) default NULL,
  PRIMARY KEY  (`ID_BAN`,`ID_LANG`),
  KEY `ID_BAN_idx` (`ID_BAN`),
  KEY `BANNER_LANG_FK_idx` (`ID_LANG`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `ID_CAT` int(11) NOT NULL auto_increment,
  `CAT_CODE` varchar(50) default NULL,
  `CAT_STATUS` varchar(1) default NULL,
  PRIMARY KEY  (`ID_CAT`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

DROP TABLE IF EXISTS `category_detail`;
CREATE TABLE IF NOT EXISTS `category_detail` (
  `ID_CAT` int(11) NOT NULL,
  `ID_LANG` int(11) NOT NULL,
  `CATD_DESCRIPTION` varchar(500) default NULL,
  PRIMARY KEY  (`ID_CAT`,`ID_LANG`),
  KEY `CATD_LANG_FK_idx` (`ID_LANG`),
  KEY `CATD_CAT_FK_idx` (`ID_CAT`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `ID_CONT` int(11) NOT NULL auto_increment,
  `CONT_TITLE` varchar(200) default NULL,
  `CONT_EMAIL` varchar(100) default NULL,
  `CONT_CONTENT` varchar(500) default NULL,
  `CONT_CREATED_DATE` datetime default NULL,
  PRIMARY KEY  (`ID_CONT`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `ID_LANG` int(11) NOT NULL auto_increment,
  `LANG_CODE` varchar(5) default NULL,
  `LANG_NAME` varchar(45) default NULL,
  PRIMARY KEY  (`ID_LANG`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ID_PROD` int(11) NOT NULL auto_increment,
  `ID_CAT` int(11) default NULL,
  `PROD_CODE` varchar(45) default NULL,
  `PROD_IMAGE` mediumblob,
  `PROD_IMAGE_NAME` varchar(45) default NULL,
  `PROD_IMAGE_TYPE` varchar(5) default NULL,
  `PROD_STATUS` varchar(1) default NULL,
  PRIMARY KEY  (`ID_PROD`),
  KEY `CATEGORY_FK_idx` (`ID_CAT`)
) ENGINE=MYISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE IF NOT EXISTS `product_detail` (
  `ID_LANG` int(11) NOT NULL,
  `ID_PROD` int(11) NOT NULL,
  `PRODD_DESCRIPTION` varchar(500) default NULL,
  PRIMARY KEY  (`ID_LANG`,`ID_PROD`),
  KEY `PRODD_LANG_FK_idx` (`ID_LANG`),
  KEY `PRODD_PROD_FK_idx` (`ID_PROD`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner_detail`
--
ALTER TABLE `banner_detail`
  ADD CONSTRAINT `BANNERD_BAN_FK` FOREIGN KEY (`ID_BAN`) REFERENCES `banner` (`ID_BAN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `BANNERD_LANG_FK` FOREIGN KEY (`ID_LANG`) REFERENCES `language` (`ID_LANG`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD CONSTRAINT `CATD_CAT_FK` FOREIGN KEY (`ID_CAT`) REFERENCES `category` (`ID_CAT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `CATD_LANG_FK` FOREIGN KEY (`ID_LANG`) REFERENCES `language` (`ID_LANG`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `CATEGORY_FK` FOREIGN KEY (`ID_CAT`) REFERENCES `category` (`ID_CAT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `PRODD_LANG_FK` FOREIGN KEY (`ID_LANG`) REFERENCES `language` (`ID_LANG`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `PRODD_PROD_FK` FOREIGN KEY (`ID_PROD`) REFERENCES `product` (`ID_PROD`) ON DELETE NO ACTION ON UPDATE NO ACTION;
