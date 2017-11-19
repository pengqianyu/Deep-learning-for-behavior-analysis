/* Delimiter changed to ; */
/* Writing to session log file now: C:\Users\iseyup\AppData\Roaming\HeidiSQL\Sessionlogs\000002.log */
/* Connecting to 127.0.0.1 via MySQL (TCP/IP), username Jason, using password: Yes ... */
SELECT CONNECTION_ID();
/* Connected. Thread-ID: 28743 */
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
USE `review`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='review';
SHOW TABLE STATUS FROM `review`;
SHOW FUNCTION STATUS WHERE `Db`='review';
SHOW PROCEDURE STATUS WHERE `Db`='review';
SHOW TRIGGERS FROM `review`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='review';
SHOW CREATE TABLE `review`.`paper`;
SHOW COLLATION;
SHOW ENGINES;
SELECT  `entries_id`,  `fId`,  LEFT(`title`, 256),  LEFT(`journal`, 256),  `cite_key`,  `jabref_eid`,  `database_id`,  `entry_types_id`,  LEFT(`author`, 256),  LEFT(`month`, 256),  LEFT(`note`, 256),  LEFT(`number`, 256),  LEFT(`pages`, 256),  LEFT(`volume`, 256),  LEFT(`abstract`, 256),  LEFT(`year`, 256) FROM `review`.`paper` LIMIT 1000;
SHOW CREATE TABLE `review`.`paper`;
SHOW TABLE STATUS LIKE 'paper';
SHOW CREATE TABLE `review`.`problem`;
SHOW CREATE TABLE `review`.`paper`;
select p.`*`, count(pp.entries_id)
from paper pp, problem p
where p.fId = pp.fId
group by p.fId;
/* Affected rows: 0  Found rows: 108  Warnings: 0  Duration for 1 query: 0.000 sec. */
select p.`*`, count(pp.entries_id)
from paper pp, problem p
where p.fId = pp.fId
and p.fGroup='ABM'
group by p.fId;
/* Affected rows: 0  Found rows: 48  Warnings: 0  Duration for 1 query: 0.000 sec. */
select p.`*`, count(pp.entries_id)
from paper pp, problem p
where p.fId = pp.fId
and p.fGroup='ABM'
group by p.fTopic;
/* Affected rows: 0  Found rows: 12  Warnings: 0  Duration for 1 query: 0.000 sec. */
select p.fTopic, count(pp.entries_id)
from paper pp, problem p
where p.fId = pp.fId
and p.fGroup='ABM'
group by p.fTopic;
/* Affected rows: 0  Found rows: 12  Warnings: 0  Duration for 1 query: 0.000 sec. */
SHOW CREATE TABLE `review`.`entries`;
SELECT  `entries_id`,  `jabref_eid`,  `database_id`,  `entry_types_id`,  `cite_key`,  LEFT(`abstract`, 256),  LEFT(`address`, 256),  LEFT(`annote`, 256),  LEFT(`author`, 256),  LEFT(`booktitle`, 256),  LEFT(`chapter`, 256),  LEFT(`comment`, 256),  LEFT(`crossref`, 256),  LEFT(`doi`, 256),  LEFT(`edition`, 256),  LEFT(`editor`, 256),  LEFT(`eid`, 256),  LEFT(`file`, 256),  LEFT(`howpublished`, 256),  LEFT(`institution`, 256),  LEFT(`journal`, 256),  LEFT(`key_`, 256),  LEFT(`keywords`, 256),  LEFT(`language`, 256),  LEFT(`location`, 256),  LEFT(`month`, 256),  LEFT(`note`, 256),  LEFT(`number`, 256),  LEFT(`organization`, 256),  LEFT(`pages`, 256),  LEFT(`pdf`, 256),  LEFT(`pmid`, 256),  LEFT(`priority`, 256),  LEFT(`ps`, 256),  LEFT(`publisher`, 256),  LEFT(`qualityassured`, 256),  LEFT(`ranking`, 256),  LEFT(`relevance`, 256),  LEFT(`school`, 256),  LEFT(`search`, 256),  LEFT(`series`, 256),  LEFT(`title`, 256),  LEFT(`type`, 256),  LEFT(`url`, 256),  LEFT(`volume`, 256),  LEFT(`year`, 256),  LEFT(`bibtexkey`, 256),  LEFT(`__groupsearch`, 256),  LEFT(`__search`, 256),  LEFT(`owner`, 256),  LEFT(`entrytype`, 256),  LEFT(`__markedentry`, 256),  LEFT(`date`, 256),  LEFT(`timestamp`, 256) FROM `review`.`entries` LIMIT 1000;
SHOW CREATE TABLE `review`.`entries`;
SHOW TABLE STATUS LIKE 'entries';
SELECT  `entries_id`,  `fId`,  LEFT(`title`, 256),  LEFT(`journal`, 256),  `cite_key`,  `jabref_eid`,  `database_id`,  `entry_types_id`,  LEFT(`author`, 256),  LEFT(`month`, 256),  LEFT(`note`, 256),  LEFT(`number`, 256),  LEFT(`pages`, 256),  LEFT(`volume`, 256),  LEFT(`abstract`, 256),  LEFT(`year`, 256) FROM `review`.`paper` LIMIT 1000;
SHOW CREATE TABLE `review`.`paper`;
SHOW TABLE STATUS LIKE 'paper';
select *
from paper pp, problem p
where p.fId = pp.fId
and p.fGroup='ABM'
and pp.title like '%cooperation%';
/* Affected rows: 0  Found rows: 3  Warnings: 0  Duration for 1 query: 0.016 sec. */
/* Connection to 127.0.0.1 closed at 2017-11-11 21:14:05 */
/* Connecting to 127.0.0.1 via MySQL (TCP/IP), username Jason, using password: Yes ... */
SELECT CONNECTION_ID();
/* Connected. Thread-ID: 28744 */
/* Characterset: utf8mb4 */
SHOW STATUS;
SHOW VARIABLES;
USE `review`;
USE `ypq`;
USE `ypq`;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW COLLATION;
SHOW ENGINES;
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`predict`;
SELECT `table_name` FROM `information_schema`.`tables` WHERE `TABLE_SCHEMA`='ypq' AND `table_name`='predict_raw';
CREATE TABLE `ypq`.`predict_raw` (
	`userid` BIGINT(20) NULL DEFAULT NULL,
	`promotionid_received` BIGINT(20) NULL DEFAULT NULL,
	`voucher_code_received` TEXT NULL,
	`voucher_received_time` BIGINT(20) NULL DEFAULT NULL,
	INDEX `userid` (`userid`),
	INDEX `promotionid_received` (`promotionid_received`)
)
 COLLATE 'utf8_general_ci' ENGINE=InnoDB ROW_FORMAT=Dynamic;
INSERT INTO `ypq`.`predict_raw` (`userid`, `promotionid_received`, `voucher_code_received`, `voucher_received_time`) SELECT `userid`, `promotionid_received`, `voucher_code_received`, `voucher_received_time` FROM `predict`;
SHOW DATABASES;
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
SHOW CREATE TABLE `ypq`.`predict`;
/* Entering session "localhost" */
SELECT * FROM `ypq`.`predict` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict`;
SHOW TABLE STATUS LIKE 'predict';
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='review';
SHOW TABLE STATUS FROM `review`;
SHOW FUNCTION STATUS WHERE `Db`='review';
SHOW PROCEDURE STATUS WHERE `Db`='review';
SHOW TRIGGERS FROM `review`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='review';
ALTER TABLE `predict_raw`
	ADD COLUMN `dataid` INT NOT NULL AUTO_INCREMENT FIRST,
	ADD PRIMARY KEY (`dataid`);
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`predict_raw`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`predict_raw`;
ALTER TABLE `predict_raw`
	ADD COLUMN `Column 4` BIGINT(20) NULL DEFAULT NULL AFTER `promotionid_received`,
	ADD COLUMN `Column 5` BIGINT(20) NULL DEFAULT NULL AFTER `Column 4`,
	ADD COLUMN `Column 6` BIGINT(20) NULL DEFAULT NULL AFTER `Column 5`,
	ADD COLUMN `Column 7` BIGINT(20) NULL DEFAULT NULL AFTER `Column 6`,
	ADD COLUMN `Column 8` BIGINT(20) NULL DEFAULT NULL AFTER `Column 7`,
	ADD COLUMN `Column 9` BIGINT(20) NULL DEFAULT NULL AFTER `Column 8`,
	ADD COLUMN `Column 10` BIGINT(20) NULL DEFAULT NULL AFTER `Column 9`,
	ADD COLUMN `Column 11` BIGINT(20) NULL DEFAULT NULL AFTER `Column 10`,
	ADD COLUMN `Column 12` BIGINT(20) NULL DEFAULT NULL AFTER `Column 11`,
	DROP COLUMN `voucher_code_received`,
	DROP COLUMN `voucher_received_time`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`predict_raw`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW CREATE TABLE `ypq`.`raw`;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
ALTER TABLE `predict_raw`
	CHANGE COLUMN `Column 4` `discount` INT NULL DEFAULT NULL AFTER `promotionid_received`,
	CHANGE COLUMN `Column 5` `max_value` BIGINT(20) NULL DEFAULT NULL AFTER `discount`,
	CHANGE COLUMN `Column 6` `is_complete` INT NULL DEFAULT NULL AFTER `max_value`,
	CHANGE COLUMN `Column 7` `age` DOUBLE NULL DEFAULT NULL AFTER `is_complete`,
	CHANGE COLUMN `Column 8` `year_since_registration` DOUBLE NULL DEFAULT NULL AFTER `age`,
	CHANGE COLUMN `Column 9` `is_male` INT NULL DEFAULT NULL AFTER `year_since_registration`,
	CHANGE COLUMN `Column 10` `total_money` BIGINT(20) NULL DEFAULT NULL AFTER `is_male`,
	CHANGE COLUMN `Column 11` `active` INT NULL DEFAULT NULL AFTER `total_money`,
	DROP COLUMN `Column 12`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='ypq';
SHOW TABLE STATUS FROM `ypq`;
SHOW FUNCTION STATUS WHERE `Db`='ypq';
SHOW PROCEDURE STATUS WHERE `Db`='ypq';
SHOW TRIGGERS FROM `ypq`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='ypq';
SHOW CREATE TABLE `ypq`.`predict_raw`;
/* Entering session "localhost" */
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW CREATE TABLE `ypq`.`raw`;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`predict_raw`;
UPDATE predict_raw r
LEFT JOIN voucher_mechanics vm
ON r.promotionid_received = vm.promotionid_received
SET r.discount = vm.discount, r.max_value = vm.max_value;
/* Affected rows: 78,903  Found rows: 0  Warnings: 0  Duration for 1 query: 2.078 sec. */
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
SHOW CREATE TABLE `ypq`.`user_profiles_my`;
UPDATE predict_raw r
LEFT JOIN user_profiles_my u
ON r.userid = u.userid
SET r.is_complete = u.is_complete, r.age = u.age, r.year_since_registration = u.year_since_registration, r.is_male = u.is_male, r.total_money = u.total_money;
/* Affected rows: 78,903  Found rows: 0  Warnings: 0  Duration for 1 query: 49.047 sec. */
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
UPDATE predict_raw r
LEFT JOIN voucher_distribution_active_date v
ON r.userid = v.userid and r.promotionid_received = v.promotionid_received
SET r.active = v.active;
/* Affected rows: 78,903  Found rows: 0  Warnings: 0  Duration for 1 query: 00:01:46 */
SELECT * FROM `ypq`.`predict_raw` LIMIT 1000;
SHOW CREATE TABLE `ypq`.`predict_raw`;
SHOW TABLE STATUS LIKE 'predict_raw';
select *
from predict_raw;
/* Affected rows: 0  Found rows: 78,903  Warnings: 0  Duration for 1 query: 0.000 sec. (+ 0.282 sec. network) */