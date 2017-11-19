/* Delimiter changed to ; */
/* Writing to session log file now: C:\Users\iseyup\AppData\Roaming\HeidiSQL\Sessionlogs\000003.log */
/* Connecting to 127.0.0.1 via MySQL (TCP/IP), username Jason, using password: Yes ... */
SELECT CONNECTION_ID();
/* Connected. Thread-ID: 28745 */
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
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW COLLATION;
SHOW ENGINES;
SELECT * FROM `ypq`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW TABLE STATUS LIKE 'user_profiles_my';
ALTER TABLE `user_profiles_my`
	ADD COLUMN `last_purchase_time` BIGINT NULL AFTER `birthday`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SELECT * FROM `ypq`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW TABLE STATUS LIKE 'user_profiles_my';
SHOW CREATE TABLE `ypq`.`transactions_my`;
SELECT * FROM `ypq`.`transactions_my` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`transactions_my`;
SHOW TABLE STATUS LIKE 'transactions_my';
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
UPDATE user_profiles_my u 
LEFT JOIN (select userid, max(order_time) as ot
from transactions_my
group by userid) t on u.userid = t.userid
set u.last_purchase_time = t.ot;
/* Affected rows: 292,802  Found rows: 0  Warnings: 0  Duration for 1 query: 00:22:58 */
select count(*)
from user_profiles_my;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.234 sec. */
SELECT * FROM `ypq`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW TABLE STATUS LIKE 'user_profiles_my';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`training`;
SELECT  `dataid`,  `userid`,  `promotionid_received`,  LEFT(`voucher_code_received`, 256),  `voucher_received_time`,  `used`,  `repurchase_15`,  `repurchase_30`,  `repurchase_60`,  `repurchase_90` FROM `ypq`.`training` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`training`;
SHOW TABLE STATUS LIKE 'training';
SHOW CREATE TABLE `ypq`.`voucher_distribution_active_date`;
SELECT * FROM `ypq`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`voucher_distribution_active_date`;
SHOW TABLE STATUS LIKE 'voucher_distribution_active_date';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`voucher_distribution_active_date`;
SELECT * FROM `ypq`.`voucher_distribution_active_date` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`voucher_distribution_active_date`;
SHOW TABLE STATUS LIKE 'voucher_distribution_active_date';
SHOW CREATE TABLE `ypq`.`predict`;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict`;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict`;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict`;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
select count(*)
from predict;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.032 sec. */
SHOW CREATE TABLE `ypq`.`predict_raw`;
select count(*)
from predict_raw;
/* Affected rows: 0  Found rows: 1  Warnings: 0  Duration for 1 query: 0.078 sec. */
SHOW CREATE TABLE `ypq`.`predict`;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict`;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
ALTER TABLE `predict`
	ADD COLUMN `timediff` BIGINT NULL AFTER `voucher_received_time`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`predict`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`predict`;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SELECT * FROM `ypq`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW TABLE STATUS LIKE 'user_profiles_my';
select userid, last_purchase_time
from user_profiles_my
where last_purchase_time is not null;
/* Affected rows: 0  Found rows: 292,802  Warnings: 0  Duration for 1 query: 0.000 sec. (+ 0.563 sec. network) */
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
ALTER TABLE `predict`
	CHANGE COLUMN `timediff` `time_diff` BIGINT(20) NULL DEFAULT NULL AFTER `voucher_received_time`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`predict`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`predict`;
SHOW CREATE TABLE `ypq`.`predict`;
UPDATE predict p
LEFT JOIN (select userid, last_purchase_time
from user_profiles_my
where last_purchase_time is not null) u on u.userid = p.userid
set p.time_diff = u.last_purchase_time - p.voucher_received_time;
/* Affected rows: 78,895  Found rows: 0  Warnings: 0  Duration for 1 query: 46.438 sec. */
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
ALTER TABLE `predict_raw`
	ADD COLUMN `time_diff` BIGINT NULL DEFAULT NULL AFTER `active`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`predict_raw`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict`;
UPDATE predict_raw p
LEFT JOIN (select userid, promotionid_received, time_diff
from predict) pp on pp.userid = p.userid and pp.promotionid_received = p.promotionid_received
set p.time_diff = pp.time_diff;
/* Affected rows: 78,895  Found rows: 0  Warnings: 0  Duration for 1 query: 4.157 sec. */
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict_raw`;
select *
from predict_raw p
where p.time_diff is null;
/* Affected rows: 0  Found rows: 8  Warnings: 0  Duration for 1 query: 0.375 sec. */
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
select u.userid, u.last_purchase_time
from predict_raw p, user_profiles_my u
where p.time_diff is null
and p.userid = u.userid;
/* Affected rows: 0  Found rows: 8  Warnings: 0  Duration for 1 query: 0.297 sec. */
select *
from predict_raw p
where p.time_diff is null;
/* Affected rows: 0  Found rows: 8  Warnings: 0  Duration for 1 query: 0.312 sec. */
SHOW CREATE TABLE `ypq`.`transactions_my`;
SHOW CREATE TABLE `ypq`.`transactions_my`;
select u.userid, u.last_purchase_time
from user_profiles_my u, transactions_my t
where u.last_purchase_time is null
and u.userid = t.userid;
/* Affected rows: 0  Found rows: 0  Warnings: 0  Duration for 1 query: 53.657 sec. */
SELECT * FROM `ypq`.`user_profiles_my` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
SHOW TABLE STATUS LIKE 'user_profiles_my';
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
select *
from predict_raw p;
/* Affected rows: 0  Found rows: 78,903  Warnings: 0  Duration for 1 query: 0.000 sec. (+ 0.437 sec. network) */