/* create new database */
CREATE DATABASE IF NOT EXISTS `brehna_net`
CHARACTER SET   utf8mb4 
COLLATE         utf8mb4_unicode_ci;

/* create new tables */
/* version: 0.1      */

CREATE TABLE IF NOT EXISTS `hardware` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `price`      DECIMAL(10,2)          NOT NULL DEFAULT 0.00,
  `note`       CHAR(100)              NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `software` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `price`      DECIMAL(10,2)          NOT NULL DEFAULT 0.00,
  `note`       CHAR(100)              NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `service` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `price`      DECIMAL(10,2)          NOT NULL DEFAULT 0.00,
  `note`       CHAR(100)              NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `numerically` (
  `id`         INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)          NOT NULL DEFAULT '',
  `createDate` DATETIME          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)          NOT NULL DEFAULT '',
  `updateDate` DATETIME          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)          NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)        NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `contract_term` (
  `id`         INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `duration`   INT(2)             NOT NULL DEFAULT 0,
  `option`     CHAR(100)          NOT NULL DEFAULT '',
  `createDate` DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)           NOT NULL DEFAULT '',
  `updateDate` DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `contract_type` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `tariff` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `price`      DECIMAL(10,2)          NOT NULL DEFAULT 0.00,
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `legal_form` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `tariff_option` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(150)              NOT NULL DEFAULT '',
  `price`      DECIMAL(10,2)          NOT NULL DEFAULT 0.00,
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `technology` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `shortName`  CHAR(50)               NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `location` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(50)               NOT NULL DEFAULT '',
  `district`   CHAR(50)               NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `address` (
  `id`          INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `location_id` INT(11)   UNSIGNED NOT NULL,
  `street`      CHAR(100)          NOT NULL DEFAULT '',
  `houseNr`     CHAR(5)            NOT NULL DEFAULT '',
  `zipcode`     CHAR(10)           NOT NULL DEFAULT '',
  `createDate`  DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`  CHAR(50)           NOT NULL DEFAULT '',
  `updateDate`  DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`  CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`   TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `contact_person` (
  `id`          INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_id`  INT(11)   UNSIGNED NOT NULL,
  `fName`       CHAR(50)           NOT NULL DEFAULT '',
  `lName`       CHAR(50)           NOT NULL DEFAULT '',
  `position`    CHAR(100)          NOT NULL DEFAULT '',
  `phone`       CHAR(20)           NOT NULL DEFAULT '',
  `phone2`      CHAR(20)           NOT NULL DEFAULT '',
  `mobil`       CHAR(20)           NOT NULL DEFAULT '',
  `eMail`       CHAR(100)          NOT NULL DEFAULT '',
  `createDate`  DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`  CHAR(50)           NOT NULL DEFAULT '',
  `updateDate`  DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`  CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`   TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `debator` (
  `id`         INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_id` INT(11)   UNSIGNED NOT NULL,
  `country_id` INT(11)   UNSIGNED NOT NULL,
  `fName`      CHAR(50)           NOT NULL DEFAULT '',
  `lName`      CHAR(50)           NOT NULL DEFAULT '',
  `iban`       CHAR(100)          NOT NULL DEFAULT '',
  `swift_bc`   CHAR(20)           NOT NULL DEFAULT '',
  `createDate` DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)           NOT NULL DEFAULT '',
  `updateDate` DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `tariff_x_technology` (
  `id`            INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT,
  `tariff_id`     INT(11)  UNSIGNED NOT NULL,
  `technology_id` INT(11)  UNSIGNED NOT NULL,
  `createDate`    DATETIME          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`    CHAR(50)          NOT NULL DEFAULT '',
  `updateDate`    DATETIME          NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`    CHAR(50)          NOT NULL DEFAULT '',
  `isDeleted`     TINYINT(1)        NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `customer` (
  `id`               INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `postal_adress_id` INT(11)   UNSIGNED NOT NULL,
  `tech_address_id`  INT(11)   UNSIGNED NOT NULL,
  `legal_form_id`    INT(11)   UNSIGNED NOT NULL,
  `customerNr`       CHAR(100)          NOT NULL DEFAULT '',
  `fName`            CHAR(50)           NOT NULL DEFAULT '',
  `lName`            CHAR(50)           NOT NULL DEFAULT '',
  `company`          CHAR(50)           NOT NULL DEFAULT '',    
  `birthDate`        DATE               NOT NULL DEFAULT '1000-01-01',
  `taxNr`            CHAR(50)           NOT NULL DEFAULT '',
  `appartmentNr`     CHAR(50)           NOT NULL DEFAULT '',
  `phone`            CHAR(20)           NOT NULL DEFAULT '',
  `mobil`            CHAR(20)           NOT NULL DEFAULT '',
  `eMail`            CHAR(100)          NOT NULL DEFAULT '', 
  `createDate`       DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`       CHAR(50)           NOT NULL DEFAULT '',
  `updateDate`       DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`       CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`        TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `customer_x_contact_person` (
  `id`                INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id`       INT(11)   UNSIGNED NOT NULL,
  `contact_person_id` INT(11)   UNSIGNED NOT NULL, 
  `createDate`        DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`        CHAR(50)           NOT NULL DEFAULT '',
  `updateDate`        DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`        CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`         TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `customer_x_technology` (
  `id`            INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id`   INT(11)   UNSIGNED NOT NULL,
  `technology_id` INT(11)   UNSIGNED NOT NULL, 
  `createDate`    DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`    CHAR(50)           NOT NULL DEFAULT '',
  `updateDate`    DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`    CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`     TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `contract` (
  `id`                     INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id`            INT(11)       UNSIGNED NOT NULL,
  `contract_type_id`       INT(11)       UNSIGNED NOT NULL, 
  `tariff_id`              INT(11)       UNSIGNED NOT NULL,
  `hardware_id`            INT(11)       UNSIGNED NOT NULL,
  `software_id`            INT(11)       UNSIGNED NOT NULL,    
  `service_id`             INT(11)       UNSIGNED NOT NULL,    
  `numerically_id`         INT(11)       UNSIGNED NOT NULL,    
  `contract_term_id`       INT(11)       UNSIGNED NOT NULL,    
  `debator_id`             INT(11)       UNSIGNED NOT NULL,
  `state_id`               INT(11)       UNSIGNED NOT NULL,      
  `contractNr`             CHAR(50)               NOT NULL DEFAULT '',      
  `startDate`              DATE                   NOT NULL DEFAULT '1000-01-01',
  `endDate`                DATE                   NOT NULL DEFAULT '1000-01-01',
  `desiredDate`            DATE                   NOT NULL DEFAULT '1000-01-01',  
  `onceTotalPrice`         DECIMAL(10,2)          NOT NULL DEFAULT 0.00,
  `monthlyTotalPrice`      DECIMAL(10,2)          NOT NULL DEFAULT 0.00,      
  `isConfirmedDataProcess` TINYINT(1)             NOT NULL DEFAULT 0,
  `isConfirmedAgb`         TINYINT(1)             NOT NULL DEFAULT 0,      
  `createDate`             DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`             CHAR(50)               NOT NULL DEFAULT '',
  `updateDate`             DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`             CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`              TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `contract_x_tariff_option` (
  `id`               INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `contract_id`      INT(11)   UNSIGNED NOT NULL,
  `tariff_option_id` INT(11)   UNSIGNED NOT NULL, 
  `createDate`       DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser`       CHAR(50)           NOT NULL DEFAULT '',
  `updateDate`       DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser`       CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`        TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `contract_state` (
  `id`         INT(11)   UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(30)           NOT NULL DEFAULT '',
  `createDate` DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)           NOT NULL DEFAULT '',
  `updateDate` DATETIME           NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)           NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)         NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `country` (
  `id`         INT(11)    UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(30)            NOT NULL DEFAULT '',
  `code`       CHAR(4)             NOT NULL DEFAULT '',
  `createDate` DATETIME            NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)            NOT NULL DEFAULT '',
  `updateDate` DATETIME            NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)            NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)          NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `category` (
  `id`   INT(11)  UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` CHAR(30)          NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `tariff_x_tariff_option` (
  `id`        INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tariff_id` INT(11) UNSIGNED NOT NULL,
  `option_id` INT(11) UNSIGNED NOT NULL,
  `createDate` DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)        NOT NULL DEFAULT '',
  `updateDate` DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)        NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)      NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS `net_type` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`       CHAR(100)              NOT NULL DEFAULT '',
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB; 

CREATE TABLE IF NOT EXISTS `pricelist_pk` (
  `id`         INT(11)       UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_id` INT(11)       UNSIGNED NOT NULL,
  `type_id`    INT(11)       UNSIGNED NOT NULL,
  `name`       CHAR(100)              NOT NULL DEFAULT '',
  `price`      DECIMAL(10,3)          NOT NULL DEFAULT 0.00,
  `isForFree`  TINYINT(1)             NOT NULL DEFAULT 0,
  `createDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` CHAR(50)               NOT NULL DEFAULT '',
  `updateDate` DATETIME               NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` CHAR(50)               NOT NULL DEFAULT '',
  `isDeleted`  TINYINT(1)             NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=INNODB; 

/* create the foreign keys for relationships between the tables */

ALTER TABLE `address` 
ADD CONSTRAINT `loca` 
FOREIGN KEY (`location_id`) 
REFERENCES `location`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `contact_person` 
ADD CONSTRAINT `adress_contact` 
FOREIGN KEY (`address_id`) 
REFERENCES `address`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `contract_x_tariff_option` 
ADD CONSTRAINT `tariff_option` 
FOREIGN KEY (`tariff_option_id`) 
REFERENCES `tariff_option`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `customer` 
ADD CONSTRAINT `postal` 
FOREIGN KEY (`postal_adress_id`) 
REFERENCES `address`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 
  
ALTER TABLE `customer` 
ADD CONSTRAINT `tech_address` 
FOREIGN KEY (`tech_address_id`) 
REFERENCES `address`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 
  
ALTER TABLE `customer` 
ADD CONSTRAINT `legal_form` 
FOREIGN KEY (`legal_form_id`) 
REFERENCES `legal_form`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `customer_x_contact_person` 
ADD CONSTRAINT `customer` 
FOREIGN KEY (`customer_id`) 
REFERENCES `customer`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 
  
ALTER TABLE `customer_x_contact_person` 
ADD CONSTRAINT `contact_pers` 
FOREIGN KEY (`contact_person_id`) 
REFERENCES `contact_person`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `customer_x_technology` 
ADD CONSTRAINT `customer_te` 
FOREIGN KEY (`customer_id`) 
REFERENCES `customer`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 
  
ALTER TABLE `customer_x_technology` 
ADD CONSTRAINT `techno` 
FOREIGN KEY (`technology_id`) 
REFERENCES `technology`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `tariff_x_technology` 
ADD CONSTRAINT `tar` 
FOREIGN KEY (`tariff_id`) 
REFERENCES `tariff`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 
  
ALTER TABLE `tariff_x_technology` 
ADD CONSTRAINT `technolo` 
FOREIGN KEY (`technology_id`) 
REFERENCES `technology`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `debator` 
ADD CONSTRAINT `country` 
FOREIGN KEY (`country_id`) 
REFERENCES `country`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 

ALTER TABLE `debator` 
ADD CONSTRAINT `cc_address` 
FOREIGN KEY (`address_id`) 
REFERENCES `address`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `contract` 
ADD CONSTRAINT `state` 
FOREIGN KEY (`state_id`) 
REFERENCES `contract_state`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `tariff_x_tariff_option` 
ADD CONSTRAINT `tariff_x_id` 
FOREIGN KEY (`tariff_id`) 
REFERENCES `tariff`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 
  
ALTER TABLE `tariff_x_tariff_option` 
ADD CONSTRAINT `option_x_id` 
FOREIGN KEY (`option_id`) 
REFERENCES `tariff_option`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

ALTER TABLE `pricelist_pk` 
ADD CONSTRAINT `net_type_id` 
FOREIGN KEY (`type_id`) 
REFERENCES `net_type`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT; 

ALTER TABLE `pricelist_pk` 
ADD CONSTRAINT `country_id` 
FOREIGN KEY (`country_id`) 
REFERENCES `country`(`id`) 
  ON DELETE RESTRICT 
  ON UPDATE RESTRICT;

/* add missing columns to table */

ALTER TABLE `tariff` 
ADD COLUMN  `note`        CHAR(100)          NOT NULL DEFAULT '' AFTER `price`,
ADD COLUMN  `power_down`  INT(5)    UNSIGNED NOT NULL DEFAULT 0  AFTER `price`,
ADD COLUMN  `power_up`    INT(5)    UNSIGNED NOT NULL DEFAULT 0  AFTER `power_down`,
ADD COLUMN  `category_id` INT(11)   UNSIGNED NOT NULL            AFTER `id`;

ALTER TABLE `technology` 
ADD COLUMN  `note` CHAR(50) NOT NULL DEFAULT '' AFTER `shortName`;

ALTER TABLE `tariff_option`
ADD COLUMN  `note`       CHAR(50)             NOT NULL DEFAULT ''   AFTER `price`,
ADD COLUMN  `power_down` INT(10)     UNSIGNED NOT NULL DEFAULT 0    AFTER `note`,
ADD COLUMN  `power_up`   INT(10)     UNSIGNED NOT NULL DEFAULT 0    AFTER `power_down`,
ADD COLUMN  `price_gk` DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT 0.00 AFTER `price`;

ALTER TABLE `contract_x_tariff_option` 
ADD COLUMN  `count` INT(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `tariff_option_id`;

/* create test data and insert into the tables */

INSERT INTO `country` VALUES (null, 'Afghanistan', 'AF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Albania', 'AL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Algeria', 'DZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'American Samoa', 'AS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Andorra', 'AD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Angola', 'AO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Anguilla', 'AI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Antarctica', 'AQ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Antigua and Barbuda', 'AG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Argentina', 'AR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Armenia', 'AM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Aruba', 'AW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Australia', 'AU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Austria', 'AT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Azerbaijan', 'AZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bahamas', 'BS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bahrain', 'BH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bangladesh', 'BD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Barbados', 'BB', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Belarus', 'BY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Belgium', 'BE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Belize', 'BZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Benin', 'BJ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bermuda', 'BM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bhutan', 'BT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bolivia', 'BO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bosnia and Herzegovina', 'BA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Botswana', 'BW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bouvet Island', 'BV', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Brazil', 'BR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'British Indian Ocean Territory', 'IO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Brunei Darussalam', 'BN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Bulgaria', 'BG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Burkina Faso', 'BF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Burundi', 'BI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cambodia', 'KH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cameroon', 'CM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Canada', 'CA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cape Verde', 'CV', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cayman Islands', 'KY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Central African Republic', 'CF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Chad', 'TD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Chile', 'CL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'China', 'CN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Christmas Island', 'CX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cocos (Keeling) Islands', 'CC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Colombia', 'CO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Comoros', 'KM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Democratic Republic of the Congo', 'CD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Republic of Congo', 'CG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cook Islands', 'CK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Costa Rica', 'CR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Croatia (Hrvatska)', 'HR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cuba', 'CU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Cyprus', 'CY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Czech Republic', 'CZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Denmark', 'DK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Deutschland', 'DE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Djibouti', 'DJ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Dominica', 'DM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Dominican Republic', 'DO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'East Timor', 'TL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Ecuador', 'EC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Egypt', 'EG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'El Salvador', 'SV', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Equatorial Guinea', 'GQ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Kosovo', 'XK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Kuwait', 'KW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Kyrgyzstan', 'KG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Lao People''s Democratic Republic', 'LA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Latvia', 'LV', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Lebanon', 'LB', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Lesotho', 'LS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Liberia', 'LR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Libyan Arab Jamahiriya', 'LY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Liechtenstein', 'LI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Lithuania', 'LT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Luxembourg', 'LU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Macau', 'MO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'North Macedonia', 'MK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Madagascar', 'MG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Malawi', 'MW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Malaysia', 'MY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Maldives', 'MV', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mali', 'ML', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Malta', 'MT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Marshall Islands', 'MH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Martinique', 'MQ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mauritania', 'MR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mauritius', 'MU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mayotte', 'YT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mexico', 'MX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Micronesia, Federated States of', 'FM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Moldova, Republic of', 'MD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Monaco', 'MC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mongolia', 'MN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Montenegro', 'ME', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Montserrat', 'MS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Morocco', 'MA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Mozambique', 'MZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Myanmar', 'MM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Namibia', 'NA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Nauru', 'NR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Nepal', 'NP', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Netherlands', 'NL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Netherlands Antilles', 'AN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'New Caledonia', 'NC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'New Zealand', 'NZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Nicaragua', 'NI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Niger', 'NE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Nigeria', 'NG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Niue', 'NU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Norfolk Island', 'NF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Northern Mariana Islands', 'MP', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Norway', 'NO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Oman', 'OM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Pakistan', 'PK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Palau', 'PW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Palestine', 'PS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Panama', 'PA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Papua New Guinea', 'PG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Paraguay', 'PY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Peru', 'PE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Philippines', 'PH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Pitcairn', 'PN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Poland', 'PL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Portugal', 'PT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Puerto Rico', 'PR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Qatar', 'QA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Reunion', 'RE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Eritrea', 'ER', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Estonia', 'EE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Ethiopia', 'ET', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Falkland Islands (Malvinas)', 'FK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Faroe Islands', 'FO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Fiji', 'FJ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Finland', 'FI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'France', 'FR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'France, Metropolitan', 'FX', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'French Guiana', 'GF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'French Polynesia', 'PF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'French Southern Territories', 'TF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Gabon', 'GA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Gambia', 'GM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Georgia', 'GE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Ghana', 'GH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Gibraltar', 'GI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guernsey', 'GG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Greece', 'GR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Greenland', 'GL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Grenada', 'GD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guadeloupe', 'GP', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guam', 'GU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guatemala', 'GT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guinea', 'GN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guinea-Bissau', 'GW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Guyana', 'GY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Haiti', 'HT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Heard and Mc Donald Islands', 'HM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Honduras', 'HN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Hong Kong', 'HK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Hungary', 'HU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Iceland', 'IS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'India', 'IN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Isle of Man', 'IM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Indonesia', 'ID', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Iran (Islamic Republic of)', 'IR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Iraq', 'IQ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Ireland', 'IE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Israel', 'IL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Italy', 'IT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Ivory Coast', 'CI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Jersey', 'JE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Jamaica', 'JM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Japan', 'JP', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Jordan', 'JO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Kazakhstan', 'KZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Kenya', 'KE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Kiribati', 'KI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Korea, Democratic People''s Republic of', 'KP', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Korea, Republic of', 'KR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Romania', 'RO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Russian Federation', 'RU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Rwanda', 'RW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Saint Kitts and Nevis', 'KN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Saint Lucia', 'LC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Saint Vincent and the Grenadines', 'VC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Samoa', 'WS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'San Marino', 'SM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Sao Tome and Principe', 'ST', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Saudi Arabia', 'SA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Senegal', 'SN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Serbia', 'RS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Seychelles', 'SC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Sierra Leone', 'SL', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Singapore', 'SG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Slovakia', 'SK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Slovenia', 'SI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Solomon Islands', 'SB', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Somalia', 'SO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'South Africa', 'ZA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'South Georgia South Sandwich Islands', 'GS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'South Sudan', 'SS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Spain', 'ES', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Sri Lanka', 'LK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'St. Helena', 'SH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'St. Pierre and Miquelon', 'PM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Sudan', 'SD', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Suriname', 'SR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Svalbard and Jan Mayen Islands', 'SJ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Eswatini', 'SZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Sweden', 'SE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Switzerland', 'CH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Syrian Arab Republic', 'SY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Taiwan', 'TW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Tajikistan', 'TJ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Tanzania, United Republic of', 'TZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Thailand', 'TH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Togo', 'TG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Tokelau', 'TK', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Tonga', 'TO', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Trinidad and Tobago', 'TT', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Tunisia', 'TN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Turkey', 'TR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Turkmenistan', 'TM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Turks and Caicos Islands', 'TC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'TV', 'Tuvalu', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'UG', 'Uganda', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'UA', 'Ukraine', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'AE', 'United Arab Emirates', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'GB', 'United Kingdom', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'US', 'United States', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'United States minor outlying islands', 'UM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Uruguay', 'UY', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Uzbekistan', 'UZ', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Vanuatu', 'VU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Vatican City State', 'VA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Venezuela', 'VE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Vietnam', 'VN', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Virgin Islands (British)', 'VG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Virgin Islands (U.S.)', 'VI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Wallis and Futuna Islands', 'WF', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Western Sahara', 'EH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Yemen', 'YE', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Zambia', 'ZM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Zimbabwe', 'ZW', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Äquqtorialguinea', 'GNQ', NOW(), 'JANINA', NOW(),'JANINA', 0)
INSERT INTO `country` VALUES(null, 'Ascension', 'AC', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Aserbaidschan', 'AZE', NOW(),'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES(null, 'Äthiopien', 'ETH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES(null, 'Australien', 'AUS', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Boutsuana', 'BWA', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Demokratische Volksrepublik Korea', 'PRK', NOW(), 'JANINA', NOW(), 'JANINA', 0)
INSERT INTO `country` VALUES (null, 'Diego Garcia', 'ITU', NOW(), 'JANINA', NOW(), 'JANINA', 0)
INSERT INTO `country` VALUES (null, 'Elfenbeinküste', 'CIV', NOW(), 'JANINA', NOW(), 'JANINA', 0)
INSERT INTO `country` VALUES (null, 'Eritrea', 'ERI', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `country` VALUES (null, 'Estland', 'EST', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `contract_state` VALUES(null, 'neu', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_state` VALUES(null, 'in Bearbeitung', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_state` VALUES(null, 'aktiv', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_state` VALUES(null, 'inaktiv', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `contract_term` VALUES(null, 12, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_term` VALUES(null, 24, '(70,00 € Gutschrift Hardware)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_term` VALUES(null, 36, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `contract_type` VALUES(null, 'Vertrag', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_type` VALUES(null, 'Änderung', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `contract_type` VALUES(null, 'Vertragsverlängerung', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `hardware` VALUES(null, 'Brehna.net Standard.Box', 70.00, '(WAN/LAN/WLAN)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz!Box 7590', 150.00, '(WAN, 4x GLAN, WLAN, VoIP-TK, DECT)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz!Fon C5/C6', 75.00, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz!Fon C5/C6', 150.00, 'DuoSet', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz!Fon C5/C6', 210.00, 'TrioSet', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz WLAN Repeater', 90.00, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz PowerlineSet', 150.00, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'Brehna.net Router VoIP', 180.00, '(4x LAN, WLAN, VoIP-TK, ISDN, DECT)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz!Box Fon Standard', 100.00, '(4x LAN, WLAN, DECT, Telefonie)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'Tischtelefon mit grossen Tasten', 75.00, '(Doro/ Gigaset)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'AVM Fritz Fon C5', 75.00, '(VoIP/ DECT)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `hardware` VALUES(null, 'Amazon Echo Spot', 180.00, 'inkl. Alex Installation und Einweisung', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `legal_form` VALUES(null, 'GbR', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `legal_form` VALUES(null, 'OHG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `legal_form` VALUES(null, 'KG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `legal_form` VALUES(null, 'GmbH', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `legal_form` VALUES(null, 'UG', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `legal_form` VALUES(null, 'AG', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `location` VALUES(1, '(Anderer)', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Brehna', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Kabelsketal', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Dammendorf', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Kneipe', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Oppin', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Petersdorf', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Queis', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Petersberg', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Brachstedt', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Hohen', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Landsberg', 'Wurp', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Sandersdorf-Brehna', 'Glebitzsch', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Sandersdorf-Brehna', 'Köckern', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Wiedemar', 'Pohritzsch', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Zörbig', 'Prussendorf', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Zörbig', 'Quetzdölsdorf', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Zörbig', 'Rieda', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `location` VALUES(null, 'Zörbig', 'Schrenz', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `numerically` VALUES(null, 'Rechnung monatlich', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `numerically` VALUES(null, 'Rechnung per Post +1,50 € pro Monat', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `numerically` VALUES(null, 'Einzugsermächtigung für Lastschriftverfahren wird mit einem gesonderten SEPA-Mandat erteilt', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `numerically` VALUES(null, 'Rechnung monatlich im voraus', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `numerically` VALUES(null, 'einmalig nach Fertigstellung Hausanschluss', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `numerically` VALUES(null, 'Ratenzahlung nach Vereinbarung', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `service` VALUES(null, 'IT-Sicherheitspaket und Updateservice je Endgerät', 9.95, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `service` VALUES(null, 'Bereitstellungspreis Tarif/Anschluss', 9.95, 'inkl. Techniker für Router/ Telefonie', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `service` VALUES(null, 'Bereitstellungspreis Tarif/Anschluss', 75.00, 'inkl. Techniker für Router/ Telefonie', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `service` VALUES(null, 'Einrichtung Komfort', 79.00, 'max. 5 Endgeräte, Telefone und IT-Check AVM', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `service` VALUES(null, 'Kabel, Anschluss und Installation nach Kundenwunsch', 0.00, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `service` VALUES(null, 'Einrichtungsentgelt', 100.00, '(inkl. B.net Routerkonfig)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `service` VALUES(null, 'Einrichtungspauschale', 100.00, '(TAE/ RJ45 Dose, Kabel & Installation, Einweisung)', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `software` VALUES(null, 'B.net NextGen UTM-Firewall Appliance', 95.00, '(BSI Zertifiziert bis 25 User, inkl. Service)', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `software` VALUES(null, 'B.net NextGen UTM-Firewall Appliance', 170.00, '(BSI Zertifiziert bis 50 User, inkl. Service)', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `category` VALUES(null, 'Internet');
INSERT INTO `category` VALUES(null, 'Telefon');
INSERT INTO `category` VALUES(null, 'TV');
INSERT INTO `category` VALUES(null, 'Internet & Telefon');
INSERT INTO `category` VALUES(null, 'Internet & TV');
INSERT INTO `category` VALUES(null, 'Telefon & TV');
INSERT INTO `category` VALUES(null, 'Internet & Telefon & TV');

INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home Lite', 20.00, 10, 2, 'mit NAT-IPv4', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home Standard', 25.00, 25, 5, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home Plus', 35.00, 40, 10, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home Maxx', 45.00, 80, 20, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home 200', 45.00, 200, 100, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home 400', 65.00, 400, 100, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'Brehna.net Home 1000', 85.00, 1000, 200, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 4, 'Brehna.net Komplett Senior', 19.95, 16, 5, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'B.net Business Comp. Standard 10', 50.00, 10, 5, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 1, 'B.net Business Comp. Standard MAXX', 60.00, 25, 10, '> 25 MBit bei Downstream', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 4, 'B.net Business Comp. Plus 10', 65.00, 10, 5, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff` VALUES(null, 4, 'B.net Business Comp. Plus MAXX', 75.00, 25, 10, '', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `technology` VALUES(null, 'Glasfaser', 'FttH', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `technology` VALUES(null, 'Very High Speed Digital Subscriber Line', 'VDSL', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `technology` VALUES(null, 'Ethernet',  'ETH', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `technology` VALUES(null, 'Funk',  '', '5G LTU', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `technology` VALUES(null, 'Lichtwellenleiter',  'LWL', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `technology` VALUES(null, 'Richtfunk Point-to-Point',  'RF PTP', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `technology` VALUES(null, 'Richtfunk Point-to-Multipoint',  'RF PTMP', '', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `tariff_x_technology` VALUES(null, 1, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 1, 2, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 1, 4, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 2, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 2, 2, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 2, 4, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 3, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 3, 2, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 3, 4, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 4, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 4, 2, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 5, 4, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 5, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 6, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_technology` VALUES(null, 7, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `tariff_option` VALUES (null, 'IPv4 Adresse dynamisch', 4.95, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'IPv4 Adresse fix', 14.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'Telefonie Standard inkl. 1 SIP Sprachkanal, 1 Rufnummer, Festnetzflat DE', 4.95, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'zusätzlicher SIP Sprachkanal, Rufnummer, inkl. DE FLAT', 7.90, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'Allnetflatrate (Alle Festt- und Mobilnetze in Deutschland je Sprachkanal)', 19.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'Leitungsgebühr Fremdnetze (TAL Miete VDSL/ LWL/ Bitstream)', 4.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'Rufnummernmitnahme zu Brehna.net bei Telefonie', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'TV-Anschluss DVB-S/ C', 4.50, 0.00, '(verfügbar in 06188 Landsberg/ Queis)', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'Fremdnetzgebühr TAL-Miete', 4.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES (null, 'Fremdnetzgebühr DE/ DTAG/ EXTERN', 14.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Business Speed 200', 20.00, 0.00, '(für MAXX und Glasfaser)', 200, 50, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Business Speed 400', 40.00, 0.00, '(für MAXX und Glasfaser)', 400, 50, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Business Speed 800', 80.00, 0.00, '(für MAXX und Glasfaser)', 800, 100, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Feste öffentliche IPv4-Adresse', 12.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'inkl. Internetflatrate', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'keine Volumenbeschränkung', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Providernetz IPv4/ v6-Adresse', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'VPN fähig', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, '1 VoIP Sprachkanal', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, '1 Rufnummer', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Festnetzflat Deutschland', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Standard Tarife inkl. Internetflatrate', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'öffentliche IP', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, '12h Service', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Tarif max. = bis zu ', 0.00, 0.00, 'bei VDSL und LWL', 95, 35, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, 'Plus Tarife inkl. Internetflatrate', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, '8h PRem. Service', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, '2 VoIP Sprachkanäle', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_option` VALUES(null, '3 Rufnummern', 0.00, 0.00, '', 0, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `tariff_x_tariff_option` VALUES(null, 1, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 1, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 1, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 1, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 2, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 2, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 2, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 2, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 3, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 3, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 3, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 3, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 4, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 4, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 4, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 4, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 5, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 5, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 5, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 5, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 6, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 6, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 6, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 6, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 7, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 7, 16, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 7, 17, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 7, 18, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 8, 15, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 8, 19, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 8, 20, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 8, 21, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 26, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 23, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 27, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 28, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 29, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 21, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `tariff_x_tariff_option` VALUES(null, 11, 25, NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `net_type` VALUES(null, 'keine', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `net_type` VALUES(null, 'Telefonate zu Teilnehmern innerhalb unseres Netzes', NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `net_type` VALUES(null, 'Allgemein bezieht sich im Regelfall auf das Festnetz, kann aber auch andere regionale Netze meinen.', NOW(), 'JANINA', NOW(), 'JANINA', 0);

INSERT INTO `pricelist_pk` VALUES(null, 79, 3, 'Allgemein', 0.012, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Auskunft, BT GmbH & co. oHG', 2.100, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Behördeneinheitliche Rufnummer', 0.085, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Freephone', 0.00, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Harmonisierte Dienste von sozialem Wert (HDSW)', 0.00, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Internationale Virtuelle Private Netze (0181)', 0.169, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Mobilfunk', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Nationale Teilnehmerrufnummer', 0.021, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Notruf', 0.000, 0, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Nutzergruppen', 0.169, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Pager', 1.690, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Persönliche Rufnummer', 0.250, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Service-Dienste (1801)', 0.095, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Service-Dienste (1802)', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Service-Dienste (1803)', 0.110, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Service-Dienste (1804)', 0.200, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Service-Dienste (1805)', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Service-Dienste (1806)', 0.200, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Televoting-/ Massenverkehrs-Dienste 0137-[1,5]', 1.090, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Televoting-/ Massenverkehrs-Dienste 0137-[2,3,4], 0138', 1.090, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Televoting-/ Massenverkehrs-Dienste 0137-[8,9]', 1.090, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Televoting-/ Massenverkehrs-Dienste 01376', 1.090, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 79, 1, 'Televoting-/ Massenverkehrs-Dienste 01377', 1.090, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 1, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 1, 1, 'Mobilfunk', 0.800, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 85, 3, 'Allgemein', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 2, 3, 'Allgemein', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 2, 1, 'Mobilfunk', 0.310, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 2, 1, 'Premium Rate', 1.100, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 3, 3, 'Allgemein', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 3, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 3, 1, 'Nationale Teilnehmerrufnummer', 0.830, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 4, 3, 'Allgemein', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 262, 3, 'Allgemein', 0.021, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 262, 3, 'Allgemein', 0.050, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 262, 1, 'Mobilfunk', 0.280, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 6, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 6, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 7, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 7, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 8, 3, 'Allgemein', 4.000, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 9, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 268, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 268, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 10, 3, 'Allgemein', 0.021, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 10, 1, 'Mobilfunk', 0.220, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 11, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 11, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 12, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 12, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 269, 3, 'Allgemein', 4.000, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 270, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 270, 1, 'Mobilfunk', 0.800, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 271, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 271, 1, 'Mobilfunk', 0.800, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 272, 3, 'Allgemein', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 272, 1, 'Mobilfunk', 0.310, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 272, 1, 'Nationale Teilnehmerrufnummer', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 272, 1, 'Pager', 0.310, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 16, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 17, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 17, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 17, 1, 'Premium Rate', 0.600, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 18, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 19, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 19, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 21, 3, 'Allgemein', 0.021, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 21, 1, 'Mobilfunk', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 21, 1, 'Premium Rate', 0.500, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 22, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES(null, 23, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 24, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 25, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 26, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 26, 1, 'Mobilfunk', 0.800, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 27, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 27, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 273, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 273, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 30, 3, 'Allgemein', 0.050, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 30, 1, 'Mobilfunk', 0.280, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 30, 1, 'Mobilfunk, Spezial', 0.600, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 30, 1, 'Rio de Janeiro (Stadt)', 0.050, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 30, 1, 'São Paulo (Stadt)', 0.050, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 31, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 31, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 32, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 33, 3, 'Allgemein', 0.050, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 33, 1, 'Mobilfunk', 0.600, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 33, 1, 'Mobilfunk, Spezial', 0.600, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 33, 1, 'Premium Rate', 0.600, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 34, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 34, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 35, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 35, 1, 'Mobilfunk', 0.790, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 43, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 43, 1, 'Ländlicher Raum', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 43, 1, 'Mobilfunk', 0.800, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 43, 1, 'Premium Rate', 1.600, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 44, 3, 'Allgemein', 0.050, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 44, 1, 'Mobilfunk', 0.280, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 51, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 52, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 52, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 52, 1, 'Mobilfunk, Spezial', 0.790, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 78, 3, 'Allgemein', 0.016, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 78, 1, 'Freephone', 0.016, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 78, 1, 'Mobilfunk, Spezial', 0.210, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 70, 3, 'Allgemein', 0.016, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 70, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 70, 1, 'Premium Rate', 1.350, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 274, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 275, 3, 'Allgemein', 0.820, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 81, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 81, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 82, 3, 'Allgemein', 0.120, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 82, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 82, 1, 'Mobilfunk', 0.830, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 80, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 84, 3, 'Allgemein', 0.140, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 84, 1, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 86, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 276, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 276, 3, 'Mobilfunk', 0.580, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 276, 3, 'Mobilfunk, Spezial', 1.270, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 277, 3, 'Allgemein', 0.450, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 278, 3, 'Allgemein', 0.021, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 278, 1, 'Mobilfunk', 0.220, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 278, 1, 'Mobilfunk, Spezial', 0.500, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 278, 1, 'Persönliche Rufnummer', 0.500, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);
INSERT INTO `pricelist_pk` VALUES (null, 278, 1, 'Premium Rate', 0.500, 1, NOW(), 'JANINA', NOW(), 'JANINA', 0);


/* update entries in tables */

UPDATE `tariff_option` 
SET 
  `price_gk` = '25.00' 
WHERE 
  `tariff_option`.`id` = 5;

UPDATE `tariff_option` 
SET
  `price` = '9.50' 
WHERE 
  `tariff_option`.`id` = 4;

UPDATE `country` SET `name` = 'Ägypten' WHERE `country`.`id` = 85;
UPDATE `country` SET `name` = 'Albanien' WHERE `country`.`id` = 2;
UPDATE `country` SET `name` = 'Algerien' WHERE `country`.`id` = 3;
UPDATE `country` SET `name` = 'Amerikanische-Samoa' WHERE `country`.`id` = 4;
UPDATE `country` SET `name` = 'Amerikanische Jungferninseln' WHERE `country`.`id` = 262;
UPDATE `country` SET `name` = 'Antarktis' WHERE `country`.`id` = 8;
UPDATE `country` SET `name` = 'Antigua und Barbuda' WHERE `country`.`id` = 9;
UPDATE `country` SET `name` = 'Argentinien' WHERE `country`.`id` = 10;
UPDATE `country` SET `name` = 'Armenien' WHERE `country`.`id` = 11;
UPDATE `country` SET `name` = 'Bangladesch' WHERE `country`.`id` = 18;
UPDATE `country` SET `name` = 'Belgien' WHERE `country`.`id` = 21;
UPDATE `country` SET `name` = 'Bolivien' WHERE `country`.`id` = 26;
UPDATE `country` SET `name` = 'Bosnien und Herzegowina' WHERE `country`.`id` = 27;
UPDATE `country` SET `name` = 'Brasilien' WHERE `country`.`id` = 30;
UPDATE `country` SET `name` = 'Britische Jungerferninseln', `code` = 'VG' WHERE `country`.`id` = 31;
UPDATE `country` SET `name` = 'Brunei' WHERE `country`.`id` = 32;
UPDATE `country` SET `name` = 'Bulgarien' WHERE `country`.`id` = 33;
UPDATE `country` SET `name` = 'Cook Inseln' WHERE `country`.`id` = 51;
UPDATE `country` SET `name` = 'Dänemark' WHERE `country`.`id` = 78;
UPDATE `country` SET `name` = 'Demokratische Republik Kongo' WHERE `country`.`id` = 70;
UPDATE `country` SET `name` = 'Dominikanische Republik' WHERE `country`.`id` = 82;
UPDATE `country` SET `name` = 'Dschibuti' WHERE `country`.`id` = 80;