USE `cang7`;
--
-- add weight in product for new requirement
--
alter table cang7.twms_product add prod_weight float(11,2) DEFAULT NULL;