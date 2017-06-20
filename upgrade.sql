USE `cang7`;
--
-- add weight in product for new requirement
--
alter table cang7.twms_product add prod_weight float(11,2) DEFAULT NULL;

--
-- store deliver info (收货人信息)
--
CREATE TABLE `twms_prod_deliver` (
	`pddeliver_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`pddeliver_name` varchar(30) DEFAULT NULL,
	`pddeliver_phone` varchar(30) DEFAULT NULL,
	`pddeliver_address` varchar(100) DEFAULT NULL,
	`pddeliver_note` varchar(100) DEFAULT NULL,
	PRIMARY KEY (`pddeliver_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- modify twms_outstore_main to store deliver id
--
alter table cang7.twms_outstore_main add `osm_deliver` int(2) DEFAULT NULL;
