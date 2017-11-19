/* Delimiter changed to ; */
/* Writing to session log file now: C:\Users\iseyup\AppData\Roaming\HeidiSQL\Sessionlogs\000001.log */
/* Connecting to 127.0.0.1 via MySQL (TCP/IP), username Jason, using password: Yes ... */
SELECT CONNECTION_ID();
/* Connected. Thread-ID: 81977 */
/* Characterset: utf8mb4 */
SHOW STATUS;
SHOW VARIABLES;
SHOW DATABASES;
USE `ypq`;
/* Entering session "localhost" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SHOW EVENTS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
USE `performance_schema`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='performance_schema';
SHOW TABLE STATUS FROM `performance_schema`;
SHOW FUNCTION STATUS WHERE `Db`='performance_schema';
SHOW PROCEDURE STATUS WHERE `Db`='performance_schema';
SHOW TRIGGERS FROM `performance_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='performance_schema';
SHOW COLLATION;
SHOW VARIABLES LIKE 'collation_server';
CREATE DATABASE `ise` /*!40100 COLLATE 'utf8_general_ci' */;
SHOW DATABASES;
/* Entering session "localhost" */
USE `ise`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ise';
SHOW TABLE STATUS FROM `ise`;
SHOW FUNCTION STATUS WHERE `Db`='ise';
SHOW PROCEDURE STATUS WHERE `Db`='ise';
SHOW TRIGGERS FROM `ise`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ise';
CREATE TABLE `training` (
	`useid` INT(11) NULL DEFAULT NULL,
	`promotionid_received` INT(11) NULL DEFAULT NULL,
	`voucher_code_received` TEXT NULL,
	`voucher_received_time` BIGINT(20) NULL DEFAULT NULL,
	`is_used` INT(11) NULL DEFAULT NULL,
	`repurchase_15` INT(11) NULL DEFAULT NULL,
	`repurchase_30` INT(11) NULL DEFAULT NULL,
	`repurchase_60` INT(11) NULL DEFAULT NULL,
	`repurchase_90` INT(11) NULL DEFAULT NULL,
	INDEX `useid` (`useid`),
	INDEX `promotionid_received` (`promotionid_received`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `transactions_my` (
	`orderid` INT(11) NULL DEFAULT NULL,
	`userid` INT(11) NULL DEFAULT NULL,
	`shopid` INT(11) NULL DEFAULT NULL,
	`total_price` INT(11) NULL DEFAULT NULL,
	`order_time` BIGINT(20) NULL DEFAULT NULL,
	`voucher_code_used` TEXT NULL,
	`promotionid_used` INT(11) NULL DEFAULT NULL,
	INDEX `userid` (`userid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `user_profiles_my` (
	`userid` INT(11) NULL DEFAULT NULL,
	`phone_verified` INT(11) NULL DEFAULT NULL,
	`registration_time` DATETIME NULL DEFAULT NULL,
	`is_seller` INT(11) NULL DEFAULT NULL,
	`email_verified` INT(11) NULL DEFAULT NULL,
	`gender` INT(11) NULL DEFAULT NULL,
	`birthday` DATE NULL DEFAULT NULL,
	INDEX `userid` (`userid`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `voucher_distribution_active_date` (
	`userid` INT(11) NULL DEFAULT NULL,
	`promotionid_received` INT(11) NULL DEFAULT NULL,
	`voucher_code_received` INT(11) NULL DEFAULT NULL,
	`voucher_received_time` INT(11) NULL DEFAULT NULL,
	`voucher_received_date` INT(11) NULL DEFAULT NULL,
	`active_0` INT(11) NULL DEFAULT NULL,
	`active_1` INT(11) NULL DEFAULT NULL,
	`active_2` INT(11) NULL DEFAULT NULL,
	`active_3` INT(11) NULL DEFAULT NULL,
	`active_4` INT(11) NULL DEFAULT NULL,
	`active_5` INT(11) NULL DEFAULT NULL,
	`active_6` INT(11) NULL DEFAULT NULL,
	`active_7` INT(11) NULL DEFAULT NULL,
	`active_8` INT(11) NULL DEFAULT NULL,
	`active_9` INT(11) NULL DEFAULT NULL,
	`active_10` INT(11) NULL DEFAULT NULL,
	`active_11` INT(11) NULL DEFAULT NULL,
	`active_12` INT(11) NULL DEFAULT NULL,
	`active_13` INT(11) NULL DEFAULT NULL,
	`active_14` INT(11) NULL DEFAULT NULL,
	`active_15` INT(11) NULL DEFAULT NULL,
	`active_16` INT(11) NULL DEFAULT NULL,
	`active_17` INT(11) NULL DEFAULT NULL,
	`active_18` INT(11) NULL DEFAULT NULL,
	`active_19` INT(11) NULL DEFAULT NULL,
	`active_20` INT(11) NULL DEFAULT NULL,
	`active_21` INT(11) NULL DEFAULT NULL,
	`active_22` INT(11) NULL DEFAULT NULL,
	`active_23` INT(11) NULL DEFAULT NULL,
	`active_24` INT(11) NULL DEFAULT NULL,
	`active_25` INT(11) NULL DEFAULT NULL,
	`active_26` INT(11) NULL DEFAULT NULL,
	`active_27` INT(11) NULL DEFAULT NULL,
	`active_28` INT(11) NULL DEFAULT NULL,
	`active_29` INT(11) NULL DEFAULT NULL,
	`active_30` INT(11) NULL DEFAULT NULL,
	INDEX `userid` (`userid`),
	INDEX `promotionid_received` (`promotionid_received`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `voucher_mechanics` (
	`promotionid_received` INT(11) NULL DEFAULT NULL,
	`discount` INT(11) NULL DEFAULT NULL,
	`max_value` INT(11) NULL DEFAULT NULL,
	INDEX `promotionid_received` (`promotionid_received`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 5 queries: 0.155 sec. */
SHOW DATABASES;
/* Entering session "localhost" */
USE `location`;
USE `ise`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ise';
SHOW TABLE STATUS FROM `ise`;
SHOW FUNCTION STATUS WHERE `Db`='ise';
SHOW PROCEDURE STATUS WHERE `Db`='ise';
SHOW TRIGGERS FROM `ise`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ise';
SHOW CREATE TABLE `ise`.`training`;
SHOW ENGINES;
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
SHOW CREATE TABLE `ise`.`transactions_my`;
SELECT * FROM `ise`.`transactions_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`transactions_my`;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SELECT * FROM `ise`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SHOW CREATE TABLE `ise`.`voucher_mechanics`;
SELECT * FROM `ise`.`voucher_mechanics` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_mechanics`;
SHOW CREATE TABLE `ise`.`transactions_my`;
SHOW CREATE TABLE `ise`.`training`;
SHOW CREATE TABLE `ise`.`training`;
INSERT LOW_PRIORITY IGNORE INTO `ise`.`training` (`useid`, `promotionid_received`, `voucher_code_received`, `voucher_received_time`, `is_used`, `repurchase_15`, `repurchase_30`, `repurchase_60`, `repurchase_90`) VALUES ('13014', '188873', 'SHOPEE50RE10W33', '1502210231', '1', '1', '1', '1', '1'), ('13046', '105729', 'REV50B42', '1492687564', '0', '0', '0', '0', '0'), ('13109', '188869', 'SHOPEE30RE10W33', '1502212838', '0', '0', '0', '0', '0'), ('22837', '154116', 'SHOPEE50RE10W28', '1499249897', '0', '0', '0', '1', '1'), ('28948', '103261', 'REV20MA8', '1490155715', '0', '1', '1', '1', '1'), ('40737', '157150', 'SHOPEE50RE20W29', '1499653519', '0', '0', '0', '1', '1'), ('52697', '128372', 'REV20BB6', '1497606116', '0', '1', '1', '1', '1'), ('65886', '115564', 'REV20BB2', '1493893694', '0', '1', '1', '1', '1'), ('104728', '58115', 'REV20BA4', '1487232212', '0', '0', '0', '0', '1'), ('127272', '105009', 'REV50AB8', '1491909004', '0', '0', '0', '0', '0'), ('138795', '119158', 'REV20BB4', '1496061161', '0', '1', '1', '1', '1'), ('167388', '116724', 'REV20BB3', '1494824086', '0', '0', '0', '0', '0'), ('172574', '137182', 'SHOPEE30RE10W27', '1498807846', '0', '0', '0', '0', '1'), ('191932', '194882', 'SHOPEE20RE10W34', '1502861001', '0', '1', '1', '1', '1\n');
/* 14 rows imported in 0.156 seconds. */
SHOW WARNINGS;
SHOW CREATE TABLE `ise`.`transactions_my`;
SHOW CREATE TABLE `ise`.`transactions_my`;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
INSERT LOW_PRIORITY IGNORE INTO `ise`.`voucher_distribution_active_date` (`userid`, `promotionid_received`, `voucher_code_received`, `voucher_received_time`, `voucher_received_date`, `active_0`, `active_1`, `active_2`, `active_3`, `active_4`, `active_5`, `active_6`, `active_7`, `active_8`, `active_9`, `active_10`, `active_11`, `active_12`, `active_13`, `active_14`, `active_15`, `active_16`, `active_17`, `active_18`, `active_19`, `active_20`, `active_21`, `active_22`, `active_23`, `active_24`, `active_25`, `active_26`, `active_27`, `active_28`, `active_29`, `active_30`) VALUES ('13062', '58115', 'REV20BA4', '1487231880', '2017-02-16', '', '', '', '1.0', '', '', '4.0', '', '', '', '', '2.0', '', '', '2.0', '1.0', '1.0', '', '', '', '', '1.0', '', '3.0', '2.0', '', '7.0', '3.0', '1.0', '4.0', '2.0'), ('13098', '157141', 'SHOPEE20RE10W29', '1499657364', '2017-07-10', '17.0', '9.0', '8.0', '12.0', '12.0', '12.0', '7.0', '8.0', '7.0', '4.0', '11.0', '', '', '24.0', '7.0', '4.0', '13.0', '20.0', '24.0', '39.0', '43.0', '35.0', '13.0', '36.0', '', '67.0', '35.0', '66.0', '15.0', '44.0', '42.0'), ('13098', '188869', 'SHOPEE30RE10W33', '1502212333', '2017-08-09', '24.0', '28.0', '21.0', '13.0', '8.0', '12.0', '17.0', '32.0', '21.0', '24.0', '6.0', '15.0', '28.0', '19.0', '28.0', '18.0', '6.0', '6.0', '21.0', '25.0', '20.0', '1.0', '35.0', '18.0', '15.0', '7.0', '11.0', '37.0', '12.0', '16.0', '17.0'), ('14220', '188866', 'SHOPEE20RE10W33', '1502211262', '2017-08-09', '5.0', '', '2.0', '', '', '2.0', '', '', '2.0', '4.0', '5.0', '', '1.0', '', '', '2.0', '', '', '2.0', '', '4.0', '', '2.0', '', '', '', '2.0', '', '2.0', '2.0', '2.0'), ('35881', '137171', 'SHOPEE20RE10W27', '1498805893', '2017-06-30', '1.0', '', '', '', '1.0', '', '', '', '2.0', '1.0', '', '2.0', '', '', '', '1.0', '3.0', '', '', '1.0', '', '1.0', '4.0', '', '', '2.0', '4.0', '', '7.0', '', ''), ('51211', '105021', 'REV50B41', '1491913953', '2017-04-11', '', '', '', '', '', '', '', '', '', '', '', '', '', '3.0'/* large SQL query (2.5 KiB), snipped at 2,000 characters */
/* 8 rows imported in 0.110 seconds. */
SHOW WARNINGS;
/* Warning (1366): Incorrect integer value: 'REV20BA4' for column 'voucher_code_received' at row 1 */
/* Warning (1265): Data truncated for column 'voucher_received_date' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_0' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_1' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_2' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_4' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_5' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_7' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_8' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_9' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_10' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_12' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_13' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_17' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_18' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_19' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_20' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_22' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'active_25' at row 1 */
/* Warning (1366): Incorrect integer value: 'SHOPEE20RE10W29' for column 'voucher_code_received' at row 2 */
/* Warning (1265): Data truncated for column 'voucher_received_date' at row 2 */
/* Warning (1366): Incorrect integer value: '' for column 'active_11' at row 2 */
/* Warning (1366): Incorrect integer value: '' for column 'active_12' at row 2 */
/* Warning (1366): Incorrect integer value: '' for column 'active_24' at row 2 */
/* Warning (1366): Incorrect integer value: 'SHOPEE30RE10W33' for column 'voucher_code_received' at row 3 */
/* Warning (1265): Data truncated for column 'voucher_received_date' at row 3 */
/* Warning (1366): Incorrect integer value: 'SHOPEE20RE10W33' for column 'voucher_code_received' at row 4 */
/* Warning (1265): Data truncated for column 'voucher_received_date' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_1' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_3' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_4' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_6' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_7' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_11' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_13' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_14' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_16' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_17' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_19' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_21' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_23' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_24' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_25' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'active_27' at row 4 */
/* Warning (1366): Incorrect integer value: 'SHOPEE20RE10W27' for column 'voucher_code_received' at row 5 */
/* Warning (1265): Data truncated for column 'voucher_received_date' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_1' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_2' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_3' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_5' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_6' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_7' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_10' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_12' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_13' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_14' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_17' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_18' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_20' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_23' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_24' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_27' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_29' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'active_30' at row 5 */
INSERT LOW_PRIORITY IGNORE INTO `ise`.`transactions_my` (`orderid`, `userid`, `shopid`, `total_price`, `order_time`, `voucher_code_used`, `promotionid_used`) VALUES ('125381', '80157', '12978', '1100000', '1436423321', '', ''), ('125620', '111310', '12978', '1850000', '1436431177', 'PCDWELCOME', '17.0'), ('126632', '25683', '84417', '10220000', '1436488375', '', ''), ('135832', '117595', '12950', '2520000', '1436939209', '', ''), ('156778', '159606', '139851', '3200000', '1437717851', 'PCDWELCOME', '17.0'), ('161554', '205483', '13062', '1800000', '1437835389', '', ''), ('180524', '136736', '46834', '7500000', '1438265629', '', ''), ('203689', '81624', '139195', '2000000', '1438703389', '', ''), ('216913', '250261', '139851', '3830000', '1438936663', 'PCDWELCOME', '17.0'), ('287886', '343159', '192085', '2250000', '1440076482', 'PCDWELCOME', '17.0'), ('299097', '26699', '145423', '1000000', '1440214094', '', ''), ('300443', '175833', '201284', '3740000', '1440224795', 'SPMOGAD', '654.0'), ('350981', '488951', '137522', '12450000', '1440603334', 'PCDWELCOME', '17.0'), ('354142', '304593', '466757', '3500000', '1440615473', 'SPMOGAD', '654.0'), ('377992', '379957', '12922', '1040000', '1440755147', 'SPKAREN', '474.0'), ('382659', '507916', '461453', '1200000', '1440775807', '', ''), ('403424', '484528', '33094', '2000000', '1440924375', '', ''), ('410876', '526428', '145423', '1000000', '1440951878', '', ''), ('418690', '118250', '111956', '5000000', '1441011441', 'SPREP3', '541.0'), ('436263', '159818', '79524', '1800000', '1441120984', '', ''), ('449387', '565466', '461453', '3500000', '1441199765', '', ''), ('468620', '464166', '412014', '650000', '1441298414', 'SPREP3', '541.0'), ('472213', '441245', '417728', '4900000', '1441336902', '', ''), ('477714', '589236', '47259', '2940000', '1441359611', '', ''), ('502291', '610026', '12922', '1990000', '1441482153', '', '\n');
/* 25 rows imported in 0.094 seconds. */
SHOW WARNINGS;
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 3 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 6 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 7 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 8 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 11 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 16 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 17 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 18 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 20 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 21 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 23 */
/* Warning (1366): Incorrect integer value: '' for column 'promotionid_used' at row 24 */
/* Warning (1366): Incorrect integer value: '
' for column 'promotionid_used' at row 25 */
SHOW CREATE TABLE `ise`.`user_profiles_my`;
INSERT LOW_PRIORITY IGNORE INTO `ise`.`user_profiles_my` (`userid`, `phone_verified`, `registration_time`, `is_seller`, `email_verified`, `gender`, `birthday`) VALUES ('565121', '1', '2015-09-02 14:38:38', '0', '0', '', ''), ('655647', '1', '2015-09-09 16:40:59', '1', '1', '2.0', '1971-10-31'), ('7819477', '1', '2016-07-13 23:33:00', '0', '1', '2.0', '1982-04-10'), ('9129029', '1', '2016-08-21 20:14:51', '0', '0', '', ''), ('10431848', '1', '2016-09-28 21:05:47', '0', '1', '', '1995-02-02'), ('12782989', '1', '2016-11-24 02:04:45', '0', '1', '', ''), ('14760310', '1', '2017-01-06 21:47:24', '0', '0', '4.0', ''), ('15251859', '1', '2017-01-16 21:02:07', '0', '0', '', ''), ('15870468', '1', '2017-01-31 08:28:09', '0', '1', '', ''), ('17587364', '1', '2017-03-05 21:43:27', '0', '0', '4.0', ''), ('21894229', '1', '2017-05-07 13:13:24', '0', '0', '', ''), ('22007126', '1', '2017-05-08 21:15:08', '1', '1', '', ''), ('22205024', '1', '2017-05-11 14:58:52', '0', '1', '', ''), ('22208581', '1', '2017-05-11 15:50:16', '0', '0', '2.0', '1992-04-26\n');
/* 14 rows imported in 0.094 seconds. */
SHOW WARNINGS;
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 1 */
/* Warning (1265): Data truncated for column 'birthday' at row 1 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 4 */
/* Warning (1265): Data truncated for column 'birthday' at row 4 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 5 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 6 */
/* Warning (1265): Data truncated for column 'birthday' at row 6 */
/* Warning (1265): Data truncated for column 'birthday' at row 7 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 8 */
/* Warning (1265): Data truncated for column 'birthday' at row 8 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 9 */
/* Warning (1265): Data truncated for column 'birthday' at row 9 */
/* Warning (1265): Data truncated for column 'birthday' at row 10 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 11 */
/* Warning (1265): Data truncated for column 'birthday' at row 11 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 12 */
/* Warning (1265): Data truncated for column 'birthday' at row 12 */
/* Warning (1366): Incorrect integer value: '' for column 'gender' at row 13 */
/* Warning (1265): Data truncated for column 'birthday' at row 13 */
SHOW CREATE TABLE `ise`.`voucher_mechanics`;
INSERT LOW_PRIORITY IGNORE INTO `ise`.`voucher_mechanics` (`promotionid_received`, `discount`, `max_value`) VALUES ('116724', '20', '1000000'), ('57409', '50', '2000000'), ('116720', '50', '1500000'), ('57408', '20', '1500000'), ('130493', '50', '1000000'), ('157145', '30', '1000000'), ('130489', '20', '1000000'), ('157148', '50', '1000000'), ('128422', '20', '1500000'), ('105009', '50', '1500000'), ('105010', '20', '1000000'), ('43762', '50', '1500000'), ('105730', '50', '1500000'), ('188866', '20', '1000000'), ('128307', '50', '1500000'), ('58116', '50', '1500000'), ('157150', '50', '2000000'), ('128414', '50', '2000000'), ('103254', '20', '1000000'), ('128341', '50', '1500000'), ('154123', '50', '2000000'), ('137171', '20', '1000000'), ('128419', '50', '2000000'), ('57395', '50', '1500000'), ('194886', '30', '1000000'), ('116727', '50', '2000000'), ('122097', '20', '1500000'), ('137182', '30', '1000000'), ('58120', '50', '2000000'), ('115564', '20', '1000000'), ('100084', '20', '1000000'), ('43774', '50', '2000000'), ('122092', '50', '2000000'), ('105729', '50', '1500000'), ('105733', '50', '2000000'), ('121420', '20', '1000000'), ('58119', '20', '1500000'), ('119156', '50', '1500000'), ('157141', '20', '1000000'), ('137185', '50', '1000000'), ('119164', '50', '2000000'), ('103195', '20', '1500000'), ('105725', '50', '2000000'), ('105021', '50', '1500000'), ('115567', '50', '2000000'), ('43761', '20', '1000000'), ('116717', '50', '1500000'), ('114817', '50', '2000000'), ('115563', '50', '1500000'), ('58115', '20', '1000000'), ('154116', '50', '1000000'), ('100125', '50', '2000000'), ('188873', '50', '1000000'), ('188869', '30', '1000000'), ('194882', '20', '1000000'), ('100120', '50', '1500000'), ('130496', '50', '2000000'), ('130492', '30', '1000000'), ('105019', '50', '2000000'), ('119218', '20', '1500000'), ('54444', '50', '2000000'), ('116731', '20', '1500000'), ('105731', '20', '1000000'), ('103261', '20', '1500000'), ('57731', '50', '2000000'), ('119158', '/* large SQL query (2.8 KiB), snipped at 2,000 characters */
/* 94 rows imported in 0.094 seconds. */
SHOW WARNINGS;
SELECT * FROM `ise`.`transactions_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`transactions_my`;
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
SELECT * FROM `ise`.`transactions_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`transactions_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SELECT * FROM `ise`.`voucher_mechanics` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_mechanics`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
ALTER TABLE `training`
	ADD COLUMN `dataid` INT(11) NOT NULL AUTO_INCREMENT FIRST,
	ADD COLUMN `discount` INT NULL AFTER `promotionid_received`,
	ADD COLUMN `max_value` INT NULL AFTER `discount`,
	ADD COLUMN `is_complete` INT NULL AFTER `max_value`,
	ADD COLUMN `age` DOUBLE NULL AFTER `is_complete`,
	ADD COLUMN `year_since_registration` DOUBLE NULL AFTER `age`,
	ADD COLUMN `is_male` INT NULL AFTER `year_since_registration`,
	ADD COLUMN `total_money` BIGINT NULL AFTER `is_male`,
	ADD COLUMN `active` INT NULL AFTER `total_money`,
	DROP COLUMN `voucher_code_received`,
	DROP COLUMN `voucher_received_time`,
	ADD PRIMARY KEY (`dataid`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ise';
SHOW TABLE STATUS FROM `ise`;
SHOW FUNCTION STATUS WHERE `Db`='ise';
SHOW PROCEDURE STATUS WHERE `Db`='ise';
SHOW TRIGGERS FROM `ise`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ise';
SHOW CREATE TABLE `ise`.`training`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ise`.`training`;
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
ALTER TABLE `user_profiles_my`
	ADD COLUMN `is_complete` INT NULL AFTER `birthday`,
	ADD COLUMN `age` DOUBLE NULL AFTER `is_complete`,
	ADD COLUMN `year_since_registration` DOUBLE NULL AFTER `age`,
	ADD COLUMN `is_male` INT NULL AFTER `year_since_registration`,
	ADD COLUMN `total_money` BIGINT NULL AFTER `is_male`,
	ADD COLUMN `active` INT NULL AFTER `total_money`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ise';
SHOW TABLE STATUS FROM `ise`;
SHOW FUNCTION STATUS WHERE `Db`='ise';
SHOW PROCEDURE STATUS WHERE `Db`='ise';
SHOW TRIGGERS FROM `ise`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ise';
SHOW CREATE TABLE `ise`.`user_profiles_my`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
update user_profiles_my u
set u.is_complete=0
where u.phone_verified = 0
or u.email_verified = 0
or u.gender = 0
or year(u.birthday)='0000';
/* Affected rows: 12  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
update user_profiles_my u
set u.is_complete=1
where u.is_complete  is null;
/* Affected rows: 2  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
update user_profiles_my u
set u.age = DATEDIFF('2017-11-11', u.birthday) / 365.25;
/* Affected rows: 4  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
update user_profiles_my u
set u.year_since_registration = DATEDIFF('2017-11-11', u.registration_time) / 365.25;
/* Affected rows: 14  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
update user_profiles_my u
set u.is_male = 1
where u.gender = '1'
or u.gender = '3';
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
update user_profiles_my u
set u.is_male = 0
where u.gender = '2'
or u.gender = '4';
/* Affected rows: 5  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
UPDATE user_profiles_my u
INNER JOIN (
  SELECT userid, SUM(total_price) as total
  FROM transactions_my
  GROUP BY userid
) t ON u.userid = t.userid
SET u.total_money = t.total;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SELECT * FROM `ise`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
ALTER TABLE `voucher_distribution_active_date`
	ADD COLUMN `active` INT(11) NULL DEFAULT NULL AFTER `voucher_received_date`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ise';
SHOW TABLE STATUS FROM `ise`;
SHOW FUNCTION STATUS WHERE `Db`='ise';
SHOW PROCEDURE STATUS WHERE `Db`='ise';
SHOW TRIGGERS FROM `ise`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ise';
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SELECT * FROM `ise`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
UPDATE voucher_distribution_active_date v
set v.active = sum(active_0, active_1, active_2, active_3, active_4, active_5, active_6, active_7, active_8, active_9, active_10, active_11, active_12, active_13, active_14, active_15, active_16, active_17, active_18, active_19, active_20, active_21, active_22, active_23, active_24, active_25, active_26, active_27, active_28, active_29, active_30);
/* SQL Error (1064): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ' active_1, active_2, active_3, active_4, active_5, active_6, active_7, active_8,' at line 2 */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0.000 sec. */
UPDATE voucher_distribution_active_date v
set v.active = active_0+active_1+active_2+active_3+active_4+active_5+active_6+active_7+active_8+active_9+active_10+active_11+active_12+active_13+active_14+active_15+active_16+active_17+active_18+active_19+active_20+active_21+active_22+active_23+active_24+active_25+active_26+active_27+active_28+active_29+active_30;
/* Affected rows: 8  Found rows: 0  Warnings: 0  Duration for 1 query: 0.015 sec. */
SELECT * FROM `ise`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
update user_profiles_my u
left join voucher_distribution_active_date v
on u.userid = v.userid
set u.active = v.active;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ise`.`voucher_distribution_active_date`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SHOW CREATE TABLE `ise`.`training`;
UPDATE training r
INNER JOIN voucher_mechanics vm
ON r.promotionid_received = vm.promotionid_received
SET r.discount = vm.discount, r.max_value = vm.max_value;
/* Affected rows: 14  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SHOW CREATE TABLE `ise`.`training`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
UPDATE training r
left JOIN user_profiles_my u
ON r.userid = u.userid
SET r.is_complete = u.is_complete, r.age = u.age, r.is_male = u.is_male, r.total_money = u.total_money, r.active = u.active, r.year_since_registration = u.year_since_registration;
/* SQL Error (1054): Unknown column 'r.userid' in 'on clause' */
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 0 of 1 query: 0.000 sec. */
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
ALTER TABLE `training`
	CHANGE COLUMN `useid` `userid` INT(11) NULL DEFAULT NULL AFTER `dataid`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ise';
SHOW TABLE STATUS FROM `ise`;
SHOW FUNCTION STATUS WHERE `Db`='ise';
SHOW PROCEDURE STATUS WHERE `Db`='ise';
SHOW TRIGGERS FROM `ise`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ise';
SHOW CREATE TABLE `ise`.`training`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ise`.`training`;
UPDATE training r
left JOIN user_profiles_my u
ON r.userid = u.userid
SET r.is_complete = u.is_complete, r.age = u.age, r.is_male = u.is_male, r.total_money = u.total_money, r.active = u.active, r.year_since_registration = u.year_since_registration;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 0.000 sec. */
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
SHOW CREATE TABLE `ise`.`transactions_my`;
SELECT * FROM `ise`.`transactions_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`transactions_my`;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SELECT * FROM `ise`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ise`.`user_profiles_my`;
SHOW CREATE TABLE `ise`.`training`;
SELECT * FROM `ise`.`training` LIMIT 1000;
SHOW CREATE TABLE `ise`.`training`;
select *
from training;
/* Affected rows: 0  Found rows: 14  Warnings: 0  Duration for 1 query: 0.000 sec. */