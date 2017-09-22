CREATE DATABASE  IF NOT EXISTS `cang7` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cang7`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cang7
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `twms_backup`
--

DROP TABLE IF EXISTS `twms_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_backup` (
  `back_id` int(11) NOT NULL AUTO_INCREMENT,
  `back_name` varchar(50) DEFAULT NULL,
  `back_path` varchar(100) DEFAULT NULL,
  `back_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`back_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_backup`
--

LOCK TABLES `twms_backup` WRITE;
/*!40000 ALTER TABLE `twms_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `twms_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_guest`
--

DROP TABLE IF EXISTS `twms_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_guest` (
  `gust_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gust_name` varchar(15) DEFAULT NULL,
  `gust_sn` varchar(15) NOT NULL,
  `gust_cate` varchar(20) NOT NULL,
  `way_pay` varchar(20) NOT NULL,
  `way_out` varchar(20) NOT NULL,
  `form_valid` int(10) NOT NULL,
  `gust_comfullname` varchar(50) DEFAULT NULL,
  `gust_address` varchar(50) DEFAULT NULL,
  `gust_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gust_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_guest`
--

LOCK TABLES `twms_guest` WRITE;
/*!40000 ALTER TABLE `twms_guest` DISABLE KEYS */;
INSERT INTO `twms_guest` VALUES (2,'四川新兴格力电器有限责任公司','XXGL','','','',5,NULL,NULL,NULL);
/*!40000 ALTER TABLE `twms_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_guest_cate`
--

DROP TABLE IF EXISTS `twms_guest_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_guest_cate` (
  `gust_cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gust_cate_name` varchar(15) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`gust_cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_guest_cate`
--

LOCK TABLES `twms_guest_cate` WRITE;
/*!40000 ALTER TABLE `twms_guest_cate` DISABLE KEYS */;
INSERT INTO `twms_guest_cate` VALUES (5,'家电类客户',0),(16,'建材类客户',NULL);
/*!40000 ALTER TABLE `twms_guest_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_instore_main`
--

DROP TABLE IF EXISTS `twms_instore_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_instore_main` (
  `ism_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ism_sn` varchar(30) DEFAULT NULL,
  `ism_operator` varchar(15) DEFAULT NULL,
  `ism_writer` varchar(15) DEFAULT NULL,
  `ism_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ism_phone` varchar(20) DEFAULT NULL,
  `ism_contactor` varchar(15) DEFAULT NULL,
  `ism_sellerunit` varchar(30) DEFAULT NULL,
  `ism_danju_no` varchar(20) NOT NULL,
  `ism_danju_date` timestamp NULL DEFAULT NULL,
  `ism_danju_del` int(2) NOT NULL,
  `ism_carry` varchar(20) NOT NULL,
  `ism_car_no` varchar(10) NOT NULL,
  `ism_status` int(2) NOT NULL,
  `ism_status_time` timestamp NULL DEFAULT NULL,
  `ism_total` float(10,0) DEFAULT NULL,
  `ism_remark` varchar(600) NOT NULL,
  `ism_reviwer` varchar(15) DEFAULT NULL,
  `ism_reviwer_time` timestamp NULL DEFAULT NULL,
  `ism_submiter` varchar(15) DEFAULT NULL,
  `ism_submit_time` timestamp NULL DEFAULT NULL,
  `ism_rollbacker` varchar(15) DEFAULT NULL,
  `ism_rollback_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ism_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_instore_main`
--

LOCK TABLES `twms_instore_main` WRITE;
/*!40000 ALTER TABLE `twms_instore_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `twms_instore_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_instore_sub`
--

DROP TABLE IF EXISTS `twms_instore_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_instore_sub` (
  `iss_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `iss_mainid` int(11) DEFAULT NULL,
  `iss_id_p` int(2) NOT NULL COMMENT '分仓的父iss_id',
  `iss_prod` int(11) DEFAULT NULL,
  `iss_prodname` varchar(50) DEFAULT NULL,
  `iss_cate` int(11) DEFAULT NULL,
  `iss_price` float(11,2) DEFAULT NULL,
  `iss_count` int(11) DEFAULT NULL,
  `iss_plancount` int(11) DEFAULT NULL,
  `iss_total` float(11,2) DEFAULT NULL,
  `iss_store` int(11) DEFAULT NULL,
  `iss_remark` varchar(300) DEFAULT NULL,
  `iss_quality` varchar(20) DEFAULT NULL,
  `iss_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `iss_insert_order` int(11) DEFAULT NULL,
  `iss_make_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`iss_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_instore_sub`
--

LOCK TABLES `twms_instore_sub` WRITE;
/*!40000 ALTER TABLE `twms_instore_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `twms_instore_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_log`
--

DROP TABLE IF EXISTS `twms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_operator_name` varchar(20) DEFAULT NULL,
  `log_operator_realname` varchar(20) DEFAULT NULL,
  `log_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_action` varchar(30) DEFAULT NULL,
  `log_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_log`
--

LOCK TABLES `twms_log` WRITE;
/*!40000 ALTER TABLE `twms_log` DISABLE KEYS */;
INSERT INTO `twms_log` VALUES (5,'admin','管理员','2017-09-22 05:35:12','入库单提交成功','::1'),(4,'admin','管理员','2017-09-22 05:35:07','入库单据创建成功','::1'),(6,'admin','管理员','2017-09-22 05:35:23','入库勾单成功','::1'),(7,'admin','管理员','2017-09-22 05:35:49','出库单创建成功','::1'),(8,'admin','管理员','2017-09-22 05:35:55','出库单提交成功','::1'),(9,'admin','管理员','2017-09-22 05:36:02','出库勾单成功','::1'),(10,'admin','管理员','2017-09-22 05:41:06','出库单删除','::1'),(11,'admin','管理员','2017-09-22 05:41:25','订单删除','::1');
/*!40000 ALTER TABLE `twms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_notice`
--

DROP TABLE IF EXISTS `twms_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_notice` (
  `ntc_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ntc_title` varchar(200) DEFAULT NULL,
  `ntc_content` varchar(1000) DEFAULT NULL,
  `ntc_author` varchar(15) DEFAULT NULL,
  `ntc_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ntc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_notice`
--

LOCK TABLES `twms_notice` WRITE;
/*!40000 ALTER TABLE `twms_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `twms_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_outstore_main`
--

DROP TABLE IF EXISTS `twms_outstore_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_outstore_main` (
  `osm_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `osm_sn` varchar(30) DEFAULT NULL,
  `osm_buyerunit` varchar(40) DEFAULT NULL,
  `osm_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `osm_operator` varchar(20) DEFAULT NULL,
  `osm_phone` varchar(30) DEFAULT NULL,
  `osm_writer` varchar(15) DEFAULT NULL,
  `osm_total` float DEFAULT NULL,
  `osm_danju_no` varchar(20) NOT NULL,
  `osm_danju_date` timestamp NULL DEFAULT NULL,
  `osm_danju_del` int(2) NOT NULL,
  `osm_carry` varchar(20) NOT NULL,
  `osm_car_no` varchar(10) NOT NULL,
  `osm_status` int(2) NOT NULL,
  `osm_status_time` timestamp NULL DEFAULT NULL,
  `osm_inmainid` int(11) DEFAULT NULL COMMENT '引用的入仓主表id',
  `osm_remark` varchar(600) NOT NULL,
  `osm_reviwer` varchar(15) DEFAULT NULL,
  `osm_reviwer_time` timestamp NULL DEFAULT NULL,
  `osm_submiter` varchar(15) DEFAULT NULL,
  `osm_submit_time` timestamp NULL DEFAULT NULL,
  `osm_rollbacker` varchar(15) DEFAULT NULL,
  `osm_rollback_time` timestamp NULL DEFAULT NULL,
  `osm_deliver` int(2) DEFAULT NULL,
  PRIMARY KEY (`osm_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_outstore_main`
--

LOCK TABLES `twms_outstore_main` WRITE;
/*!40000 ALTER TABLE `twms_outstore_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `twms_outstore_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_outstore_sub`
--

DROP TABLE IF EXISTS `twms_outstore_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_outstore_sub` (
  `oss_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `oss_prod` int(11) DEFAULT NULL,
  `oss_prodname` varchar(50) DEFAULT NULL,
  `oss_cate` int(11) DEFAULT NULL,
  `oss_count` int(11) DEFAULT NULL,
  `oss_plancount` int(11) DEFAULT NULL,
  `oss_price` float(11,2) DEFAULT NULL,
  `oss_total` float(11,2) DEFAULT NULL,
  `oss_store` int(11) DEFAULT NULL,
  `oss_remark` varchar(300) DEFAULT NULL,
  `oss_mainid` int(11) DEFAULT NULL,
  `oss_quality` varchar(20) DEFAULT NULL,
  `oss_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `oss_insubid` int(11) DEFAULT NULL COMMENT '引用的入仓子表id',
  `oss_insert_order` int(11) DEFAULT NULL,
  `oss_make_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`oss_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_outstore_sub`
--

LOCK TABLES `twms_outstore_sub` WRITE;
/*!40000 ALTER TABLE `twms_outstore_sub` DISABLE KEYS */;
/*!40000 ALTER TABLE `twms_outstore_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_prod_carry`
--

DROP TABLE IF EXISTS `twms_prod_carry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_prod_carry` (
  `pdcarry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdcarry_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pdcarry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_prod_carry`
--

LOCK TABLES `twms_prod_carry` WRITE;
/*!40000 ALTER TABLE `twms_prod_carry` DISABLE KEYS */;
INSERT INTO `twms_prod_carry` VALUES (13,'吴明书'),(12,'徐高建'),(15,'其他');
/*!40000 ALTER TABLE `twms_prod_carry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_prod_cate`
--

DROP TABLE IF EXISTS `twms_prod_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_prod_cate` (
  `pdca_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdca_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pdca_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_prod_cate`
--

LOCK TABLES `twms_prod_cate` WRITE;
/*!40000 ALTER TABLE `twms_prod_cate` DISABLE KEYS */;
INSERT INTO `twms_prod_cate` VALUES (4,'空调'),(2,'热水器'),(3,'冰箱'),(5,'其他');
/*!40000 ALTER TABLE `twms_prod_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_prod_deliver`
--

DROP TABLE IF EXISTS `twms_prod_deliver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_prod_deliver` (
  `pddeliver_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pddeliver_name` varchar(30) DEFAULT NULL,
  `pddeliver_phone` varchar(30) DEFAULT NULL,
  `pddeliver_address` varchar(100) DEFAULT NULL,
  `pddeliver_note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pddeliver_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_prod_deliver`
--

LOCK TABLES `twms_prod_deliver` WRITE;
/*!40000 ALTER TABLE `twms_prod_deliver` DISABLE KEYS */;
INSERT INTO `twms_prod_deliver` VALUES (17,'test','1234','2345','3456'),(18,'小东','13438960999','成都市天府新区华阳街道办','海尔冰箱华阳');
/*!40000 ALTER TABLE `twms_prod_deliver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_prod_quality`
--

DROP TABLE IF EXISTS `twms_prod_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_prod_quality` (
  `pdqu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdqu_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pdqu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_prod_quality`
--

LOCK TABLES `twms_prod_quality` WRITE;
/*!40000 ALTER TABLE `twms_prod_quality` DISABLE KEYS */;
INSERT INTO `twms_prod_quality` VALUES (1,'正品机'),(2,'残次机'),(3,'样机');
/*!40000 ALTER TABLE `twms_prod_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_product`
--

DROP TABLE IF EXISTS `twms_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_product` (
  `prod_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(50) DEFAULT NULL,
  `prod_price` float(11,3) DEFAULT NULL,
  `prod_realprice` float(11,3) DEFAULT NULL,
  `prod_count` int(11) DEFAULT NULL,
  `prod_cate` int(11) DEFAULT NULL,
  `prod_code` varchar(30) DEFAULT NULL,
  `prod_unit` varchar(10) DEFAULT NULL,
  `prod_guest` varchar(50) DEFAULT NULL,
  `prod_volume` float(11,3) DEFAULT NULL,
  `prod_weight` float(11,2) DEFAULT NULL,
  `prod_life` int(4) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_product`
--

LOCK TABLES `twms_product` WRITE;
/*!40000 ALTER TABLE `twms_product` DISABLE KEYS */;
INSERT INTO `twms_product` VALUES (7,'GMV-NH25PL/A',NULL,NULL,0,4,'25','台','四川新兴格力电器有限责任公司',NULL,NULL,NULL);
/*!40000 ALTER TABLE `twms_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_store`
--

DROP TABLE IF EXISTS `twms_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_store` (
  `sto_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sto_name` varchar(20) DEFAULT NULL,
  `sto_kuwei_name` varchar(30) NOT NULL,
  `sto_parrent_id` int(8) NOT NULL,
  `sto_default` int(2) NOT NULL,
  `sto_address` varchar(50) DEFAULT NULL,
  `sto_storer` varchar(15) DEFAULT NULL,
  `sto_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sto_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_store`
--

LOCK TABLES `twms_store` WRITE;
/*!40000 ALTER TABLE `twms_store` DISABLE KEYS */;
INSERT INTO `twms_store` VALUES (36,'仓库1号','',0,1,'成都XX','user2','1312');
/*!40000 ALTER TABLE `twms_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twms_user`
--

DROP TABLE IF EXISTS `twms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twms_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_realname` varchar(20) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_lastlogindate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_lastloginip` varchar(20) DEFAULT NULL,
  `user_type` int(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twms_user`
--

LOCK TABLES `twms_user` WRITE;
/*!40000 ALTER TABLE `twms_user` DISABLE KEYS */;
INSERT INTO `twms_user` VALUES (13,'admin','管理员','48309e7da0e9e329c879715f691dd252','2017-09-22 05:30:11','::1',1);
/*!40000 ALTER TABLE `twms_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-22 13:43:29
