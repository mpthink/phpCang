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

--phase 2
-- modify twms_outstore_main to store deliver id
--
alter table cang7.twms_outstore_main add `osm_deliver` int(2) DEFAULT NULL;


--
-- modify twms_product, 添加保质期
--
alter table cang7.twms_product add `prod_life` int(4) DEFAULT NULL;

---不合理表修改初始值
alter table cang7.twms_instore_sub drop `iss_unit`;
alter table cang7.twms_instore_sub modify `iss_quality` varchar(20) DEFAULT NULL;
alter table cang7.twms_instore_sub drop `iss_insert_timestamp`;


alter table cang7.twms_outstore_sub drop `oss_unit`;
alter table cang7.twms_outstore_sub modify `oss_quality` varchar(20) DEFAULT NULL;
alter table cang7.twms_outstore_sub modify `oss_insert_order` int(11) DEFAULT NULL;


--phase 3
--添加生产日期
alter table cang7.twms_instore_sub add iss_make_date timestamp NULL DEFAULT NULL;
alter table cang7.twms_outstore_sub add oss_make_date timestamp NULL DEFAULT NULL;


--phase 4
alter table cang7.twms_product modify `prod_code` varchar(30) DEFAULT NULL;
alter table cang7.twms_product modify `prod_unit` varchar(10) DEFAULT NULL;
alter table cang7.twms_product modify `prod_guest` varchar(50) DEFAULT NULL;




