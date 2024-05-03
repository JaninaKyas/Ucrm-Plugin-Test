-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 03. Mai 2024 um 14:33
-- Server-Version: 5.7.33-0ubuntu0.16.04.1
-- PHP-Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `web2027_bnet_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address`
--

CREATE TABLE `address` (
  `id` int(11) UNSIGNED NOT NULL,
  `location_id` int(11) UNSIGNED NOT NULL,
  `street` char(200) NOT NULL DEFAULT '',
  `houseNr` char(5) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `address`
--

INSERT INTO `address` (`id`, `location_id`, `street`, `houseNr`, `zipcode`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 3, 'muster', '1', '00000', '2024-04-08 12:17:36', 'JANINA', '2024-04-08 12:17:36', 'JANINA', 0),
(2, 15, 'muster1', '3', '00000', '2024-04-08 12:17:36', 'JANINA', '2024-04-08 12:17:36', 'JANINA', 0),
(3, 16, 'muster2', '4a', '00000', '2024-04-08 12:17:36', 'JANINA', '2024-04-08 12:17:36', 'JANINA', 0),
(4, 10, 'test', '10', '06188', '2024-04-22 09:18:51', 'JANINA', '2024-04-22 09:18:51', 'JANINA', 0),
(5, 5, 'php kyas street', '1d', '00001', '2024-04-24 16:15:46', 'JANINA', '2024-04-24 16:15:46', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `address_x_television`
--

CREATE TABLE `address_x_television` (
  `id` int(11) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `tv_id` int(11) UNSIGNED NOT NULL,
  `title` char(150) NOT NULL DEFAULT '''''',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '''''',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '''''',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `address_x_television`
--

INSERT INTO `address_x_television` (`id`, `address_id`, `tv_id`, `title`, `price`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 4, 2, 'TV-Anschluss DVB-S/ C', '4.50', '2024-04-22 12:02:30', 'JANINA', '2024-04-22 12:02:30', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `asb_availability`
--

CREATE TABLE `asb_availability` (
  `id` int(11) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `network_node_adress_id` int(11) UNSIGNED NOT NULL,
  `technology_id` int(11) UNSIGNED NOT NULL,
  `down_stream` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `up_stream` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `kvz` char(10) NOT NULL DEFAULT '',
  `onkz` char(10) NOT NULL DEFAULT '',
  `asb` int(11) NOT NULL DEFAULT '0',
  `isExpansionFinish` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `asb_availability`
--

INSERT INTO `asb_availability` (`id`, `address_id`, `network_node_adress_id`, `technology_id`, `down_stream`, `up_stream`, `kvz`, `onkz`, `asb`, `isExpansionFinish`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(2, 1, 2, 2, '1000.00', '20.00', '2', '030', 2, 1, '2024-04-08 12:21:28', 'JANINA', '2024-04-08 12:21:28', 'JANINA', 0),
(4, 1, 3, 3, '80.00', '20.00', '2', '030', 2, 1, '2024-04-08 12:21:56', 'JANINA', '2024-04-08 12:21:56', 'JANINA', 0),
(5, 1, 3, 5, '80.00', '20.00', '2', '030', 2, 1, '2024-04-08 12:22:04', 'JANINA', '2024-04-08 12:22:04', 'JANINA', 0),
(6, 2, 3, 5, '80.00', '20.00', '2', '030', 2, 1, '2024-04-08 12:22:14', 'JANINA', '2024-04-08 12:22:14', 'JANINA', 0),
(7, 2, 3, 3, '80.00', '20.00', '2', '030', 2, 1, '2024-04-08 12:22:23', 'JANINA', '2024-04-08 12:22:23', 'JANINA', 0),
(8, 4, 2, 3, '40.00', '10.00', '5', '034602', 5, 1, '2024-04-22 09:24:11', 'JANINA', '2024-04-22 09:24:11', 'JANINA', 0),
(9, 5, 4, 2, '200.00', '25.00', '1', '0123456789', 2, 1, '2024-04-24 16:17:44', 'JANINA', '2024-04-24 16:17:44', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `asb_availability_x_customer`
--

CREATE TABLE `asb_availability_x_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `asb_availability_id` int(11) UNSIGNED NOT NULL,
  `ext_order_nr` char(11) NOT NULL DEFAULT '',
  `double_wire_nr` char(11) NOT NULL DEFAULT '',
  `switching_nr` char(50) NOT NULL DEFAULT '',
  `line_design_dtag` char(50) NOT NULL DEFAULT '',
  `isConnect` tinyint(1) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `commissioned_house_types`
--

CREATE TABLE `commissioned_house_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `note` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `commissioned_house_types`
--

INSERT INTO `commissioned_house_types` (`id`, `name`, `note`, `price`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '0.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(2, 'Vollförderung', 'kostenloser Hausanschluss nur durch Eigenausbau Brehna.net/Bund/Land', '0.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(3, 'Teilförderung', 'vergünstigter Anschluss bei vorhandenem Leerrohrsystem', '350.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(4, 'Standard', 'kostenpflichtiger Anschluss Ausbaugebiet', '750.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(5, 'Plus', 'kostenpflichtiger Anschluss Ausbaugebiet bei Entfernung von +30m', '1500.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(6, 'je Meter', 'Kosten je zusätzlicher Meter Tiefbau auf privatem Grund (€/lfdm)', '65.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(7, 'je Stunde', 'Kosten je zusätzliche Arbeitsstunde für Kabelinstallation Innenbereich', '75.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0),
(8, 'zusätzlich', '', '0.00', '2024-04-24 09:42:36', 'JANINA', '2024-04-24 09:42:36', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `connection_data_holder`
--

CREATE TABLE `connection_data_holder` (
  `id` int(11) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `name_company` char(100) NOT NULL DEFAULT '',
  `fName` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `connection_point_types`
--

CREATE TABLE `connection_point_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(5) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `connection_point_types`
--

INSERT INTO `connection_point_types` (`id`, `name`, `shortName`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(2, 'Einfamilienhaus', 'EFH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(3, 'Doppelhaushälfte', 'DHH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(4, 'Reihenhaus', 'RH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(5, 'Mehrfamilienhaus', 'MFH', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0),
(6, 'Neubau', '', '2024-04-24 09:24:06', 'JANINA', '2024-04-24 09:24:06', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact_person`
--

CREATE TABLE `contact_person` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `fName` char(100) NOT NULL DEFAULT '',
  `lName` char(100) NOT NULL DEFAULT '',
  `position` char(100) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `phone2` char(20) NOT NULL DEFAULT '',
  `mobil` char(20) NOT NULL DEFAULT '',
  `eMail` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract`
--

CREATE TABLE `contract` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `post_address_id` int(11) UNSIGNED NOT NULL,
  `technology_address_id` int(11) UNSIGNED NOT NULL,
  `contract_type_id` int(11) UNSIGNED NOT NULL,
  `tariff_id` int(11) UNSIGNED NOT NULL,
  `hardware_id` int(11) UNSIGNED NOT NULL,
  `software_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL,
  `numerically_id` int(11) UNSIGNED NOT NULL,
  `contract_term_id` int(11) UNSIGNED NOT NULL,
  `debator_id` int(11) UNSIGNED NOT NULL,
  `state_id` int(11) UNSIGNED NOT NULL,
  `contractNr` char(50) NOT NULL DEFAULT '',
  `startDate` date NOT NULL DEFAULT '1000-01-01',
  `endDate` date NOT NULL DEFAULT '1000-01-01',
  `desiredDate` date NOT NULL DEFAULT '1000-01-01',
  `onceTotalPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monthlyTotalPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `totalPrice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `isConfirmedDataProcess` tinyint(1) NOT NULL DEFAULT '0',
  `isConfirmedAgb` tinyint(1) NOT NULL DEFAULT '0',
  `isConfirmedDataProtection` tinyint(1) NOT NULL DEFAULT '0',
  `con_tae` char(50) NOT NULL DEFAULT '''''',
  `tae` char(50) NOT NULL DEFAULT '''''',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_categories`
--

CREATE TABLE `contract_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_categories`
--

INSERT INTO `contract_categories` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 'Neuanschluss', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0),
(2, 'Anbieterwechsel', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0),
(3, 'Tarifänderung', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0),
(4, 'Umzug', '2024-04-11 16:05:27', 'JANINA', '2024-04-11 16:05:27', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_state`
--

CREATE TABLE `contract_state` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_state`
--

INSERT INTO `contract_state` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(2, 'neu', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(3, 'in Bearbeitung', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(4, 'aktiv', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0),
(5, 'inaktiv', '2024-04-08 09:09:53', 'JANINA', '2024-04-08 09:09:53', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_term`
--

CREATE TABLE `contract_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `duration` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `term_option` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_term`
--

INSERT INTO `contract_term` (`id`, `duration`, `term_option`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 0, '', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0),
(2, 12, '', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0),
(3, 24, '(70,00 € Gutschrift Hardware)', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0),
(4, 36, '', '2024-04-08 09:10:56', 'JANINA', '2024-04-08 09:10:56', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_type`
--

CREATE TABLE `contract_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `contract_type`
--

INSERT INTO `contract_type` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0),
(2, 'Vertrag', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0),
(3, 'Änderung', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0),
(4, 'Vertragsverlängerung', '2024-04-08 09:11:26', 'JANINA', '2024-04-08 09:11:26', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_x_provider_change_order`
--

CREATE TABLE `contract_x_provider_change_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `contract_id` int(11) UNSIGNED NOT NULL,
  `change_provider_id` int(11) UNSIGNED NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contract_x_tariff_option`
--

CREATE TABLE `contract_x_tariff_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `contract_id` int(11) UNSIGNED NOT NULL,
  `tariff_option_id` int(11) UNSIGNED NOT NULL,
  `count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `country`
--

CREATE TABLE `country` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `code` char(5) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `country`
--

INSERT INTO `country` (`id`, `name`, `code`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-03-14 21:14:52', 'JANINA', '2024-03-14 21:14:52', 'JANINA', 0),
(2, 'Interne Telefonie', '', '2024-03-14 21:14:52', 'JANINA', '2024-03-14 21:14:52', 'JANINA', 0),
(3, 'Deutschland', 'DE', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(4, 'Afghanistan', 'AFG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(5, 'Ägypten', 'EGY', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(6, 'Albanien', 'ALB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(7, 'Algerien', 'DZA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(8, 'Amerikanisch-Samoa', 'ASM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(9, 'Amerikanische Jungferninseln', 'VIR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(10, 'Andorra', 'AND', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(11, 'Angola', 'AGO', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(12, 'Anguilla', 'AIA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(13, 'Antarktis', 'AQ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(14, 'Antigua und Barbuda', 'ATG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(15, 'Äquatorialguniea', 'GNQ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(16, 'Argetinien', 'ARG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(17, 'Armenien', 'ARM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(18, 'Aruba', 'ABW', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(19, 'Ascension', 'AC', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(20, 'Aserbaidschan', 'AZ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(21, 'Äthopien', 'ETH', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(22, 'Australien', 'AU', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(23, 'Bahamas', 'BHS', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(24, 'Bahrain', 'BHR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(25, 'Bangladesch', 'BGD', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(26, 'Barbados', 'BRB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(27, 'Belgien', 'BEL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(28, 'Belize', 'BLZ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(29, 'Benin', 'BEN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(30, 'Bermuda', 'BMU', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(31, 'Bhutan', 'BTN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(32, 'Bolivien', 'BOL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(33, 'Bosnien und Herzegowina', 'BIH', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(34, 'Botsuana', 'BWA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(35, 'Brasilien', 'BRA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(36, 'Britische Jungferninseln', 'VGB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(37, 'Brunei', 'BRN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(38, 'Bulgarien', 'BGR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(39, 'Burkina Faso', 'BFA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(40, 'Burundi', 'BDI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(41, 'Chile', 'CHL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(42, 'China', 'CHN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(43, 'Cook Inseln', 'COK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(44, 'Costa Rica', 'CRI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(45, 'Dänemark', 'DNK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(46, 'Demokratische Republik Kongo', 'COD', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(47, 'Demokratische Volksrepublik Korea', 'PRK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(48, 'Diego Garcia', 'DG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(49, 'Dominica', 'DMA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(50, 'Dominikanische Republik', 'DOM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(51, 'Dschibuti', 'DJI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(52, 'Ecuador', 'ECU', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(53, 'El Salvador', 'SLV', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(54, 'Elfenbeinküste', 'CIV', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(55, 'Eritrea', 'ERI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(56, 'Estland', 'EST', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(57, 'Falkland-Inseln', 'FLK', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(58, 'Färöer', 'FRO', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(59, 'Finnland', 'FIN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(60, 'Frankreich', 'FRA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(61, 'Französich Guyana', 'GF', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(62, 'Französisch Polynesien', 'PYF', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(63, 'Gabun', 'GAB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(64, 'Gambia', 'GMB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(65, 'Georgien', 'GEO', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(66, 'Ghana', 'GHA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(67, 'Gibraltar', 'GIB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(68, 'Grenada', 'GRD', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(69, 'Griechenland', 'GRC', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(70, 'Grönland', 'GRL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(71, 'Großbritanien', 'GBR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(72, 'Nordirland', 'GB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(73, 'Guadeloupe', 'GP', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(74, 'Guam', 'GUM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(75, 'Guatemala', 'GTM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(76, 'Guinea', 'GIN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(77, 'Guniea-Bissau', 'GNB', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(78, 'Guyana', 'GUY', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(79, 'Haiti', 'HTI', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(80, 'Honduras', 'HND', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(81, 'Hongkong', 'HKG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(82, 'Indien', 'IND', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(83, 'Indonesien', 'IDN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(84, 'International', '', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(85, 'Irak', 'IRQ', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(86, 'Irland', 'IRL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(87, 'Islamische Republik Iran', 'IRN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(88, 'Island', 'ISL', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(89, 'Israel', 'ISR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(90, 'Italien', 'ITA', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(91, 'Jamaika', 'JAM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(92, 'Japan', 'JPN', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(93, 'Jordanien', 'JOR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(94, 'Kaimainseln', 'GG', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(95, 'Kambodscha', 'KHM', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(96, 'Kamerun', 'CMR', '2024-03-14 21:14:53', 'JANINA', '2024-03-14 21:14:53', 'JANINA', 0),
(97, 'Kanada', 'CAN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(98, 'Kap Verde', 'CPV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(99, 'Katar', 'QAT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(100, 'Kenia', 'KEN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(101, 'Kirgisien', 'KGZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(102, 'Kiribati', 'KIR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(103, 'Kolumbien', 'COL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(104, 'Königreich Saudi-Arabien', 'SAU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(105, 'Kroatien', 'HRV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(106, 'Kuba', 'CUB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(107, 'Kuwait', 'KWT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(108, 'Laos', 'LAO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(109, 'Lesotho', 'LSO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(110, 'Lettland', 'LVA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(111, 'Libanon', 'LBN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(112, 'Liberia', 'LBR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(113, 'Libyen', 'LBY', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(114, 'Liechtenstein', 'LIE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(115, 'Litauen', 'LTU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(116, 'Luxemburg', 'LUX', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(117, 'Macao', 'MAC', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(118, 'Madagaskar', 'MDG', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(119, 'Malawi', 'MWI', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(120, 'Malaysia', 'MYS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(121, 'Malediven', 'MDV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(122, 'Mali', 'MLI', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(123, 'Malta', 'MLT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(124, 'Marokko', 'MAR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(125, 'Marshallinseln', 'MHL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(126, 'Martinique', 'MTQ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(127, 'Mauretanien', 'MRT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(128, 'Mauritius', 'MUS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(129, 'Mexiko', 'MEX', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(130, 'Mikronesien', 'FSM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(131, 'Moldawien', 'MDA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(132, 'Monaco', 'MCO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(133, 'Mongolei', 'MNG', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(134, 'Montenegro', 'MNE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(135, 'Montserrat', 'MSR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(136, 'Mosambik', 'MOZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(137, 'Myanmar (Burma)', 'MMR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(138, 'Namibia', 'NAM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(139, 'Nauru', 'NRU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(140, 'Nepal', 'NPL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(141, 'Neu Caledonia', 'NCL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(142, 'Neuseeland', 'NZL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(143, 'Nicaragua', 'NIC', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(144, 'Niederlande', 'NLD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(145, 'Niederländische Antiellen', 'AN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(146, 'Niger', 'NER', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(147, 'Nigeria', 'NGA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(148, 'Niue', 'NIU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(149, 'Nördliche Marianen-Inseln', 'MP', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(150, 'Norfolkinseln', 'NFK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(151, 'Norwegen', 'NOR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(152, 'Oman', 'OMN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(153, 'Ost Timur', 'TLS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(154, 'Österreich', 'AUT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(155, 'Pakistan', 'PAK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(156, 'Palästina', 'PSE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(157, 'Palau', 'PLW', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(158, 'Panama', 'PAN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(159, 'Papua-Neiguinea', 'PNG', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(160, 'Paraguay', 'PRY', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(161, 'Peru', 'PER', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(162, 'Philippinen', 'PHL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(163, 'Polen', 'POL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(164, 'Portugal', 'PRT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(165, 'Puerto Rico', 'PRI', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(166, 'Republik Fidschi-Inseln', 'FJ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(167, 'Republik Jemen', 'YEM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(168, 'Republik Kasachstan', 'KAZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(169, 'Republik Kongo', 'COD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(170, 'Republik Korea (Südkorea)', 'KOR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(171, 'Republik Mazedonien', 'MKD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(172, 'Republik Serbien', 'SRB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(173, 'Réunion', 'RE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(174, 'Ruanda', 'RWA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(175, 'Rumänien', 'ROU', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(176, 'Russische Föderation', 'RUS', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(177, 'Saint-Pierre und Miquelon', 'SPM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(178, 'Salomoninseln', 'SLB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(179, 'Sambia', 'ZMB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(180, 'San Marino', 'SMR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(181, 'São Tomé und Príncipe', 'STP', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(182, 'Satellitenverbindung', '', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(183, 'Schweden', 'SWE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(184, 'Schweiz', 'CHE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(185, 'Senegal', 'SEN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(186, 'Seychellen', 'SYC', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(187, 'Sierra Leone', 'SLE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(188, 'Simbabwe', 'ZWE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(189, 'Singapur', 'SGB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(190, 'Sint Maarten', 'SX', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(191, 'Slowakei', 'SVK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(192, 'Slowenien', 'SVN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(193, 'Somalia', 'SOM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(194, 'Spanien', 'ESP', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(195, 'Sri Lanka', 'LKA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(196, 'St. Helena', 'SH', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(197, 'St. Kitts und Nevis', 'KNA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(198, 'St. Luca', 'LCA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(199, 'St. Vincent und Grenadinen', 'VCT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(200, 'Staat der Vatikanstadt', 'VAT', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(201, 'Südafrika', 'ZAF', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(202, 'Sudan', 'SDN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(203, 'Südsudan', 'SSD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(204, 'Surinam', 'SUR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(205, 'Swasiland', 'SWZ', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(206, 'Syrien', 'SYR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(207, 'Tadshikistan', 'TJK', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(208, 'Taiwan', 'TWN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(209, 'Tansania', 'TZA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(210, 'Thailand', 'THA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(211, 'Togo', 'TGO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(212, 'Tokelau', 'TKL', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(213, 'Tonga', 'TON', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(214, 'Trinidad und Tobago', 'TTO', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(215, 'Tschad', 'TCD', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(216, 'Tschechien', 'CZE', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(217, 'Tunesien', 'TUN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(218, 'Turkei', 'TUR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(219, 'Turkmenistan', 'TKM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(220, 'Turks- und Caicosinseln', 'TCA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(221, 'Tuvalu', 'TUV', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(222, 'Uganda', 'UGA', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(223, 'Ukraine', 'UKR', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(224, 'Unabhängiger Staat Samoa', 'WSM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(225, 'Ungarn', 'HUN', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(226, 'Union der Komoren', 'COM', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(227, 'Universal Personal Telecommunications Number (UPTN)', '', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(228, 'Uruguay', 'URY', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(229, 'Uzbekistan', 'UZB', '2024-03-14 21:14:54', 'JANINA', '2024-03-14 21:14:54', 'JANINA', 0),
(230, 'Vanuatu', 'VUT', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(231, 'Venezuela', 'VEN', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(232, 'Vereinigte Arabische Emirate', 'ARE', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(233, 'Vereinigte Staaten von Amerika (USA)', 'USA', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(234, 'Vietnam', 'VNM', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(235, 'Wallis und Futuna Inseln', 'WF', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(236, 'Weißrussland', 'BLR', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(237, 'Zentralafrikanische Republik', 'CAF', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0),
(238, 'Zypern', 'CYP', '2024-03-14 21:14:55', 'JANINA', '2024-03-14 21:14:55', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `postal_adress_id` int(11) UNSIGNED NOT NULL,
  `tech_address_id` int(11) UNSIGNED NOT NULL,
  `legal_form_id` int(11) UNSIGNED NOT NULL,
  `customerNr` char(100) NOT NULL DEFAULT '',
  `salut` char(10) NOT NULL DEFAULT '''''',
  `title` char(10) NOT NULL DEFAULT '''''',
  `fName` char(100) NOT NULL DEFAULT '',
  `lName` char(100) NOT NULL DEFAULT '',
  `company` char(100) NOT NULL DEFAULT '',
  `birthDate` date NOT NULL DEFAULT '1000-01-01',
  `taxNr` char(50) NOT NULL DEFAULT '',
  `appartmentNr` char(50) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `mobil` char(20) NOT NULL DEFAULT '',
  `eMail` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_class`
--

CREATE TABLE `customer_class` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(5) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer_class`
--

INSERT INTO `customer_class` (`id`, `name`, `shortName`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(2, 'Privatkunden', 'PK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(3, 'Senioren', 'S-PK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(4, 'Geschäftskunden', 'GK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0),
(5, 'Business Complete', 'BC-GK', '2024-04-18 11:31:39', 'JANINA', '2024-04-18 11:31:39', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_connection_requests`
--

CREATE TABLE `customer_connection_requests` (
  `id` int(11) UNSIGNED NOT NULL,
  `salutation` char(150) NOT NULL DEFAULT '',
  `fName` char(150) NOT NULL DEFAULT '',
  `lName` char(150) NOT NULL DEFAULT '',
  `company` char(150) NOT NULL DEFAULT '',
  `street` char(150) NOT NULL DEFAULT '',
  `hNr` char(150) NOT NULL DEFAULT '',
  `zipcode` char(150) NOT NULL DEFAULT '',
  `place` char(150) NOT NULL DEFAULT '',
  `district` char(150) NOT NULL DEFAULT '',
  `phone` char(150) NOT NULL DEFAULT '',
  `mobil` char(150) NOT NULL DEFAULT '',
  `mail` char(150) NOT NULL DEFAULT '',
  `conKind` tinyint(3) NOT NULL DEFAULT '0',
  `selTech` tinyint(3) NOT NULL DEFAULT '0',
  `isWishRecall` tinyint(1) NOT NULL DEFAULT '0',
  `recallTermin` char(150) NOT NULL DEFAULT '',
  `rate` tinyint(3) NOT NULL DEFAULT '2',
  `careTech` tinyint(3) NOT NULL DEFAULT '0',
  `isPhone` tinyint(1) NOT NULL DEFAULT '0',
  `isPorting` tinyint(1) NOT NULL DEFAULT '0',
  `careTermin` char(150) NOT NULL DEFAULT '',
  `message` char(250) NOT NULL DEFAULT '',
  `isConfirmSafeData` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer_connection_requests`
--

INSERT INTO `customer_connection_requests` (`id`, `salutation`, `fName`, `lName`, `company`, `street`, `hNr`, `zipcode`, `place`, `district`, `phone`, `mobil`, `mail`, `conKind`, `selTech`, `isWishRecall`, `recallTermin`, `rate`, `careTech`, `isPhone`, `isPorting`, `careTermin`, `message`, `isConfirmSafeData`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(6, 'Herr', 's', 's', 'Hr. Kuhne - Hartmann Brehna GmbH', 'muster', '1g', '00000', 'Brehna', '', '073137842324', '45667', 'janinakyas@web.de', 2, 3, 0, '', 2, 9, 0, 0, '', 'test', 1, '2024-05-02 07:44:17', 'JANINA', '2024-05-02 07:44:17', 'JANINA', 1),
(7, 'Herr', 's', 's', 'Hr. Kuhne - Hartmann Brehna GmbH', 'muster', '1g', '00000', 'Brehna', '', '073137842324', '45667', 'janinakyas@web.de', 1, 2, 0, '', 2, -1, 0, 0, '', 'test', 1, '2024-05-02 07:46:09', 'JANINA', '2024-05-02 07:46:09', 'JANINA', 1),
(8, 'Herr', 's', 's', 'Hr. Kuhne - Hartmann Brehna GmbH', 'muster', '1g', '00000', 'Brehna', '', '073137842324', '45667', 'janinakyas@web.de', 1, 3, 0, '', 2, 9, 1, 1, '2024-05-02', 'test', 1, '2024-05-02 10:13:33', 'JANINA', '2024-05-02 10:13:33', 'JANINA', 0),
(9, 'Herr', 's', 's', 'Hr. Kuhne - Hartmann Brehna GmbH', 'muster', '1g', '00000', 'Brehna', '', '073137842324', '45667', 'janinakyas@web.de', 1, 3, 0, '', 2, 9, 1, 1, '2024-05-02', 'test', 1, '2024-05-02 10:16:06', 'JANINA', '2024-05-02 10:16:06', 'JANINA', 0),
(10, 'Herr', 's', 's', 'Hr. Kuhne - Hartmann Brehna GmbH', 'muster1', '35', '00000', 'Sandersdorf-Brehna', '', '073137842324', '45667', 'janinakyas@web.de', 2, 3, 0, '', 2, 11, 0, 0, '', 'test', 1, '2024-05-03 12:01:35', 'JANINA', '2024-05-03 12:01:35', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_ftth_request`
--

CREATE TABLE `customer_ftth_request` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_address_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `tech_address_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `debator_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `con_kind_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `selected_tech_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_num_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sub_num_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `kind_point_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cnt_units` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `complete_date` char(50) NOT NULL DEFAULT '',
  `intro_house_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `intro_else` char(150) NOT NULL DEFAULT '',
  `house_owner_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `isAgbConfirm` tinyint(1) NOT NULL DEFAULT '0',
  `isSafeDataConfirm` tinyint(1) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_x_technology`
--

CREATE TABLE `customer_x_technology` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `technology_id` int(11) UNSIGNED NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `debator`
--

CREATE TABLE `debator` (
  `id` int(11) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `country_id` int(11) UNSIGNED NOT NULL,
  `fName` char(200) NOT NULL DEFAULT '',
  `lName` char(200) NOT NULL DEFAULT '',
  `iban` char(100) NOT NULL DEFAULT '',
  `swift_bc` char(20) NOT NULL DEFAULT '',
  `isPaymentRecurring` tinyint(1) NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `expansion_area`
--

CREATE TABLE `expansion_area` (
  `id` int(11) UNSIGNED NOT NULL,
  `address_id` int(11) UNSIGNED NOT NULL,
  `technology_id` int(11) UNSIGNED NOT NULL DEFAULT '2',
  `commission_id` int(11) UNSIGNED NOT NULL,
  `state_id` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `expansion_area`
--

INSERT INTO `expansion_area` (`id`, `address_id`, `technology_id`, `commission_id`, `state_id`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 5, 2, 2, 2, '2024-04-24 16:22:02', 'JANINA', '2024-04-24 16:22:02', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `expansion_state`
--

CREATE TABLE `expansion_state` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `expansion_state`
--

INSERT INTO `expansion_state` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 'neu', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0),
(2, 'geplant', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0),
(3, 'in arbeit', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0),
(4, 'erschlossen', '2024-04-24 14:56:05', 'JANINA', '2024-04-24 14:56:05', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hardware`
--

CREATE TABLE `hardware` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_class_id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `hardware`
--

INSERT INTO `hardware` (`id`, `customer_class_id`, `name`, `price`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '70.00', '(WAN/LAN/WLAN)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(2, 2, 'Brehna.net Standard.Box', '70.00', '(WAN/LAN/WLAN)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(3, 2, 'AVM Fritz!Box 7590', '150.00', '(WAN, 4x GLAN, WLAN, VoIP-TK, DECT)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(4, 2, 'AVM Fritz!Fon C6 (DECT)', '75.00', 'einzeln', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(5, 2, 'AVM Fritz!Fon C6 (DECT)', '150.00', 'DuoSet', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(6, 2, 'AVM Fritz!Fon C6 (DECT)', '210.00', 'TrioSet', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(7, 2, 'AVM Fritz!Repeater 1200AX', '90.00', '', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(8, 2, 'AVM Fritz!Powerline 540E WLAN-Set', '150.00', '', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 0),
(9, 0, 'Brehna.net Router VoIP', '180.00', '(4x LAN, WLAN, VoIP-TK, ISDN, DECT)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(10, 0, 'AVM Fritz!Box Fon Standard', '100.00', '(4x LAN, WLAN, DECT, Telefonie)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(11, 0, 'Tischtelefon mit grossen Tasten', '75.00', '(Doro/ Gigaset)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(12, 0, 'AVM Fritz Fon C5', '75.00', '(VoIP/ DECT)', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1),
(13, 0, 'Amazon Echo Spot', '180.00', 'inkl. Alex Installation und Einweisung', '2024-04-08 09:10:02', 'JANINA', '2024-04-08 09:10:02', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `house_intro_types`
--

CREATE TABLE `house_intro_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `house_intro_types`
--

INSERT INTO `house_intro_types` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(2, 'Leerrohr zum Hausanschluss vorhanden', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(3, 'Neue Einführung notwendig', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(4, 'Mehrspartenhauseinführung vorhanden', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0),
(5, 'Sonstiges', '2024-04-24 09:27:09', 'JANINA', '2024-04-24 09:27:09', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `house_owner`
--

CREATE TABLE `house_owner` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` char(50) NOT NULL DEFAULT '',
  `fName` char(50) NOT NULL DEFAULT '',
  `lName` char(50) NOT NULL DEFAULT '',
  `company` char(150) NOT NULL DEFAULT '',
  `address_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `floor_address_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hr_number` char(25) NOT NULL DEFAULT '''''',
  `fFloor` char(150) NOT NULL DEFAULT '',
  `fFloorKind` char(150) NOT NULL DEFAULT '',
  `fDFloor` char(150) NOT NULL DEFAULT '',
  `mail` char(150) NOT NULL DEFAULT '',
  `mobil` char(150) NOT NULL DEFAULT '',
  `phone` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `legal_form`
--

CREATE TABLE `legal_form` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(10) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `legal_form`
--

INSERT INTO `legal_form` (`id`, `name`, `shortName`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '.... bitte auswählen ...', '', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(2, 'Gesellschaft bürgerlichen Rechts', 'GbR', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(3, 'offene Handelsgesellschaft', 'OHG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(4, 'Kommanditgesellschaft', 'KG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(5, 'Gesellschaft mit beschränkter Haftung', 'GmbH', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(6, 'Unternehmergesellschft', 'UG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0),
(7, 'Aktiengesellschaft', 'AG', '2024-04-08 09:11:39', 'JANINA', '2024-04-08 09:11:39', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `district` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`id`, `name`, `district`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(2, '(Anderer)', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(3, 'Brehna', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(4, 'Kabelsketal', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(5, 'Landsberg', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(6, 'Landsberg', 'Dammendorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(7, 'Landsberg', 'Kneipe', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(8, 'Landsberg', 'Oppin', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(9, 'Landsberg', 'Petersdorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(10, 'Landsberg', 'Queis', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(11, 'Petersberg', '', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(12, 'Landsberg', 'Brachstedt', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(13, 'Landsberg', 'Hohen', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(14, 'Landsberg', 'Wurp', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(15, 'Sandersdorf-Brehna', 'Glebitzsch', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(16, 'Sandersdorf-Brehna', 'Köckern', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(17, 'Wiedemar', 'Pohritzsch', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(18, 'Zörbig', 'Prussendorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(19, 'Zörbig', 'Quetzdölsdorf', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(20, 'Zörbig', 'Rieda', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0),
(21, 'Zörbig', 'Schrenz', '2024-04-08 09:11:12', 'JANINA', '2024-04-08 09:11:12', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `numerically`
--

CREATE TABLE `numerically` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `name` char(200) NOT NULL DEFAULT '',
  `price` decimal(10,2) DEFAULT '0.00',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `numerically`
--

INSERT INTO `numerically` (`id`, `parent_id`, `name`, `price`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 1),
(2, 1, 'Rechnung monatlich', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 1),
(3, 1, 'Rechnung per Post', '1.50', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(4, 1, 'Einzugsermächtigung für Lastschriftverfahren', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(5, 1, 'Rechnung monatlich im voraus', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 1),
(6, 1, 'einmalig nach Fertigstellung Hausanschluss', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(7, 1, 'Ratenzahlung nach Vereinbarung', '0.00', '2024-04-08 09:10:41', 'JANINA', '2024-04-08 09:10:41', 'JANINA', 0),
(8, 7, '12 Monatsraten', '0.00', '2024-04-24 09:53:24', 'JANINA', '2024-04-24 09:53:24', 'JANINA', 0),
(9, 7, '24 Monatsraten', '0.00', '2024-04-24 09:53:24', 'JANINA', '2024-04-24 09:53:24', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `phone_numbers`
--

CREATE TABLE `phone_numbers` (
  `id` int(11) UNSIGNED NOT NULL,
  `onkz` char(15) NOT NULL DEFAULT '',
  `phone1` char(25) NOT NULL DEFAULT '',
  `phone2` char(25) NOT NULL DEFAULT '',
  `phone3` char(25) NOT NULL DEFAULT '',
  `phone4` char(25) NOT NULL DEFAULT '',
  `phone5` char(25) NOT NULL DEFAULT '',
  `phone6` char(25) NOT NULL DEFAULT '',
  `phone7` char(25) NOT NULL DEFAULT '',
  `phone8` char(25) NOT NULL DEFAULT '',
  `phone9` char(25) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `provider_change_order`
--

CREATE TABLE `provider_change_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `data_holder_id` int(11) UNSIGNED NOT NULL,
  `phone_nr_id` int(11) UNSIGNED NOT NULL,
  `tele_system_id` int(11) UNSIGNED NOT NULL,
  `currentProvider` char(100) NOT NULL DEFAULT '',
  `executeCancel` tinyint(1) NOT NULL DEFAULT '1',
  `phonePortability` tinyint(1) NOT NULL DEFAULT '1',
  `getAllNr` tinyint(1) NOT NULL DEFAULT '1',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `service`
--

CREATE TABLE `service` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_class_id` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `service`
--

INSERT INTO `service` (`id`, `customer_class_id`, `name`, `price`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '0.00', '', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(2, 1, 'IT-Sicherheitspaket und Updateservice je Endgerät', '9.95', '', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(4, 2, 'Bereitstellungspreis Tarif/Anschluss', '75.00', 'inkl. Techniker für Router/ Telefonie', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(5, 2, 'Einrichtung Komfort', '79.00', 'max. 5 Endgeräte, Telefone und IT-Check AVM', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(6, 1, 'Kabel, Anschluss und Installation nach Kundenwunsch', '0.00', '', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(7, 1, 'Einrichtungsentgelt', '100.00', '(inkl. B.net Routerkonfig)', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0),
(8, 1, 'Einrichtungspauschale', '100.00', '(TAE/ RJ45 Dose, Kabel & Installation, Einweisung)', '2024-04-08 09:10:23', 'JANINA', '2024-04-08 09:10:23', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `software`
--

CREATE TABLE `software` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(100) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `software`
--

INSERT INTO `software` (`id`, `name`, `price`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '0.00', '(BSI Zertifiziert bis 25 User, inkl. Service)', '2024-04-08 09:10:13', 'JANINA', '2024-04-08 09:10:13', 'JANINA', 0),
(2, 'B.net NextGen UTM-Firewall Appliance', '95.00', '(BSI Zertifiziert bis 25 User, inkl. Service)', '2024-04-08 09:10:13', 'JANINA', '2024-04-08 09:10:13', 'JANINA', 0),
(3, 'B.net NextGen UTM-Firewall Appliance', '170.00', '(BSI Zertifiziert bis 50 User, inkl. Service)', '2024-04-08 09:10:13', 'JANINA', '2024-04-08 09:10:13', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff`
--

CREATE TABLE `tariff` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(100) NOT NULL DEFAULT '',
  `downstream` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `upstream` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `cust_class` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff`
--

INSERT INTO `tariff` (`id`, `category_id`, `name`, `price`, `note`, `downstream`, `upstream`, `cust_class`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, '... bitte auswählen ...', '0.00', '', 0, 0, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(2, 2, 'Brehna.net Home Lite', '20.00', '', 10, 2, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(3, 2, 'Brehna.net Home Standard', '25.00', '', 25, 5, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(4, 2, 'Brehna.net Home Plus', '35.00', '', 40, 10, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(5, 2, 'Brehna.net Home Maxx', '45.00', '', 80, 20, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(6, 2, 'Brehna.net Home 200', '45.00', '', 200, 100, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(7, 2, 'Brehna.net Home 400', '65.00', '', 400, 100, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(8, 2, 'Brehna.net Home 1000', '85.00', '', 1000, 200, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(9, 5, 'Brehna.net Komplett Senior', '19.95', '', 16, 5, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(10, 2, 'B.net Business Comp. Standard 10', '50.00', '', 10, 5, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(11, 2, 'B.net Business Comp. Standard MAXX', '60.00', '', 25, 10, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(12, 5, 'B.net Business Comp. Plus 10', '65.00', '', 10, 5, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0),
(13, 5, 'B.net Business Comp. Plus MAXX', '75.00', '', 25, 10, 0, '2024-04-08 09:12:39', 'JANINA', '2024-04-08 09:12:39', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_category`
--

CREATE TABLE `tariff_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_category`
--

INSERT INTO `tariff_category` (`id`, `name`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(2, 'Internet', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(3, 'Telefon', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(4, 'TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1),
(5, 'Internet & Telefon', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 0),
(6, 'Internet & TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1),
(7, 'Telefon & TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1),
(8, 'Internet & Telefon & TV', '2024-04-08 09:11:50', 'JANINA', '2024-04-08 09:11:50', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_option`
--

CREATE TABLE `tariff_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '-1',
  `customer_class_id` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `name` char(150) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price_sen` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price_gk` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` char(150) NOT NULL DEFAULT '',
  `downstream` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `upstream` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_option`
--

INSERT INTO `tariff_option` (`id`, `parent_id`, `customer_class_id`, `name`, `price`, `price_sen`, `price_gk`, `note`, `downstream`, `upstream`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 1, 1, '... bitte auswählen ...', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(2, 1, 2, 'IPv4 Adresse dynamisch', '4.95', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(3, 1, 2, 'IPv4 Adresse fix', '14.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(4, 1, 2, 'Telefonie Standard', '4.95', '0.00', '0.00', 'inkl. 1 SIP Sprachkanal, 1 Rufnummer, Festnetzflat DE', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(5, 4, 2, 'zusätzlicher SIP Sprachkanal, Rufnummer, inkl. DE Flat', '7.90', '7.90', '9.50', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(6, 4, 2, 'Allnetflatrate', '19.00', '19.00', '25.00', 'Alle Fest- und Mobilnetze in Deutschland je Sprachkanal', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(7, 1, 2, 'Leitungsgebühr Fremdnetze (TAL Miete VDSL/ LWL/ Bitstream)', '4.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(8, 1, 2, 'TV-Anschluss DVB-S/ C', '4.50', '0.00', '0.00', '(verfügbar in 06188 Landsberg/ Queis)', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 1),
(9, 1, 1, 'Fremdnetzgebühr TAL-Miete', '0.00', '4.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(10, 1, 1, 'Fremdnetzgebühr DE/ DTAG/ EXTERN', '0.00', '14.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(11, 1, 1, 'Business Speed 200', '20.00', '0.00', '0.00', '(für MAXX und Glasfaser)', 200, 50, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(12, 1, 1, 'Business Speed 400', '40.00', '0.00', '0.00', '(für MAXX und Glasfaser)', 400, 50, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(13, 1, 1, 'Business Speed 800', '80.00', '0.00', '0.00', '(für MAXX und Glasfaser)', 800, 100, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(14, 1, 1, 'Feste öffentliche IPv4-Adresse', '12.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(15, 1, 1, 'Rufnummernmitnahme zu Brehna.net', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(16, 1, 2, 'inkl. Internetflatrate', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(17, 1, 2, 'keine Volumenbeschränkung', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(18, 1, 2, 'Providernetz IPv4/ v6-Adresse', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(19, 1, 2, 'VPN fähig', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(20, 1, 1, '1 VoIP Sprachkanal', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(21, 1, 1, '1 Rufnummer', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(22, 1, 1, 'Festnetzflat Deutschland', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(23, 1, 1, 'Standard Tarife inkl. Internetflatrate', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(24, 1, 1, 'öffentliche IP', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(25, 1, 1, '12h Service', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(26, 1, 1, 'Tarif max. = bis zu 95 / 35 MBit/s bei VDSL und LWL', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(27, 1, 1, 'Plus Tarife inkl. Internetflatrate', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(28, 1, 1, '8h Prem. Service', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(29, 1, 1, '2 VoIP Sprachkanäle', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(30, 1, 1, '3 Rufnummern', '0.00', '0.00', '0.00', '', 0, 0, '2024-04-08 12:46:51', 'JANINA', '2024-04-08 12:46:51', 'JANINA', 0),
(31, 1, 1, 'Telefonie Standard inkl. Internetflatrate, 1 VoIP Sprachkanal, 1 Rufnummer, Festnetzflat Deutschland', '4.95', '0.00', '0.00', '', 0, 0, '2024-04-08 13:00:23', 'JANINA', '2024-04-08 13:00:23', 'JANINA', 0),
(32, 1, 2, 'Bereitstellungspreis Tarif/Anschluss', '75.00', '0.00', '0.00', 'inkl. Techniker für Router/Telefonie', 0, 0, '2024-04-22 17:11:09', 'JANINA', '2024-04-22 17:11:09', 'JANINA', 1),
(33, 1, 2, 'Einrichtung Komfort für max. 5 Endgeräte, Telefone und IT-Check AVM', '79.00', '0.00', '0.00', '', 0, 0, '2024-04-22 17:20:27', 'JANINA', '2024-04-22 17:20:27', 'JANINA', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_x_tariff_option`
--

CREATE TABLE `tariff_x_tariff_option` (
  `id` int(11) UNSIGNED NOT NULL,
  `tariff_id` int(11) UNSIGNED NOT NULL,
  `tariff_option_id` int(11) UNSIGNED NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_x_tariff_option`
--

INSERT INTO `tariff_x_tariff_option` (`id`, `tariff_id`, `tariff_option_id`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 2, 16, '2024-04-08 13:06:15', 'JANINA', '2024-04-08 13:06:15', 'JANINA', 0),
(2, 2, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(3, 2, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(4, 2, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(5, 3, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(6, 3, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(7, 3, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(8, 3, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(9, 4, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(10, 4, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(11, 4, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(12, 4, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(13, 5, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(14, 5, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(15, 5, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(16, 5, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(17, 6, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(18, 6, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(19, 6, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(20, 6, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(21, 7, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(22, 7, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(23, 7, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(24, 7, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(25, 8, 16, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(26, 8, 17, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(27, 8, 18, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(28, 8, 19, '2024-04-08 13:06:16', 'JANINA', '2024-04-08 13:06:16', 'JANINA', 0),
(29, 10, 23, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(30, 10, 24, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(31, 10, 25, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(32, 10, 26, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(33, 11, 23, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(34, 11, 24, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(35, 11, 25, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(36, 11, 26, '2024-04-24 13:25:33', 'JANINA', '2024-04-24 13:25:33', 'JANINA', 0),
(37, 12, 27, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(38, 12, 24, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(39, 12, 28, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(40, 12, 29, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(41, 12, 30, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(42, 12, 22, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(43, 12, 26, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(44, 13, 27, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(45, 13, 24, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(46, 13, 28, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(47, 13, 29, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(48, 13, 30, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(49, 13, 22, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(50, 13, 26, '2024-04-24 13:27:18', 'JANINA', '2024-04-24 13:27:18', 'JANINA', 0),
(51, 9, 16, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(52, 9, 20, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(53, 9, 21, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0),
(54, 9, 22, '2024-04-24 13:33:42', 'JANINA', '2024-04-24 13:33:42', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tariff_x_technology`
--

CREATE TABLE `tariff_x_technology` (
  `id` int(11) UNSIGNED NOT NULL,
  `tariff_id` int(11) UNSIGNED NOT NULL,
  `technology_id` int(11) UNSIGNED NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tariff_x_technology`
--

INSERT INTO `tariff_x_technology` (`id`, `tariff_id`, `technology_id`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, 2, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(2, 2, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(3, 2, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(4, 3, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(5, 3, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(6, 3, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(7, 4, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(8, 4, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(9, 4, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(10, 5, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(11, 5, 3, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(12, 5, 5, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(13, 6, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(14, 7, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0),
(15, 8, 2, '2024-04-08 12:54:11', 'JANINA', '2024-04-08 12:54:11', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `technology`
--

CREATE TABLE `technology` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(10) NOT NULL DEFAULT '',
  `note` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `technology`
--

INSERT INTO `technology` (`id`, `name`, `shortName`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(2, 'Glasfaser', 'FttH', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(3, 'Very High Speed Digital Subscriber Line', 'VDSL', 'Telefondose', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(4, 'Ethernet', 'ETH', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(5, 'Funk', '', '5G LTU', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(6, 'Lichtwellenleiter', 'LWL', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(7, 'Richtfunk Point-to-Point', 'RF PTP', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(8, 'Richtfunk Point-to-Multipoint', 'RF PTMP', '', '2024-04-08 09:12:03', 'JANINA', '2024-04-08 09:12:03', 'JANINA', 0),
(9, 'Mobilfunktarif', 'LTE', '', '2024-04-11 16:11:03', 'JANINA', '2024-04-11 16:11:03', 'JANINA', 0),
(10, 'Hybridprodukt', '', 'Telefondose und LTE', '2024-04-11 16:11:03', 'JANINA', '2024-04-11 16:11:03', 'JANINA', 0),
(11, 'Richtfunk', '', '', '2024-04-11 16:11:03', 'JANINA', '2024-04-11 16:11:03', 'JANINA', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `telecommunication_system`
--

CREATE TABLE `telecommunication_system` (
  `id` int(11) UNSIGNED NOT NULL,
  `directDialNr` char(50) NOT NULL DEFAULT '',
  `queryPoint` char(50) NOT NULL DEFAULT '',
  `nrBlockFrom` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nrBlockTo` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `television`
--

CREATE TABLE `television` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` char(150) NOT NULL DEFAULT '',
  `shortName` char(10) NOT NULL DEFAULT '',
  `note` char(150) NOT NULL DEFAULT '',
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createUser` char(50) NOT NULL DEFAULT '',
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateUser` char(50) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `television`
--

INSERT INTO `television` (`id`, `name`, `shortName`, `note`, `createDate`, `createUser`, `updateDate`, `updateUser`, `isDeleted`) VALUES
(1, '... bitte auswählen ...', '', '', '2024-04-22 09:09:57', 'JANINA', '2024-04-22 09:09:57', 'JANINA', 0),
(2, 'Satellitenrundfunk', 'SAT TV', '', '2024-04-22 09:09:57', 'JANINA', '2024-04-22 09:09:57', 'JANINA', 0),
(3, 'Internet Protocol Television', 'IP TV', 'geplant mit Preis 9.95 € pro Monat', '2024-04-22 09:09:57', 'JANINA', '2024-04-22 09:09:57', 'JANINA', 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `address_x_television`
--
ALTER TABLE `address_x_television`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `tv_id` (`tv_id`);

--
-- Indizes für die Tabelle `asb_availability`
--
ALTER TABLE `asb_availability`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `network_node_adress_id` (`network_node_adress_id`),
  ADD KEY `technology_id` (`technology_id`);

--
-- Indizes für die Tabelle `asb_availability_x_customer`
--
ALTER TABLE `asb_availability_x_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indizes für die Tabelle `commissioned_house_types`
--
ALTER TABLE `commissioned_house_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `connection_data_holder`
--
ALTER TABLE `connection_data_holder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indizes für die Tabelle `connection_point_types`
--
ALTER TABLE `connection_point_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contact_person`
--
ALTER TABLE `contact_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indizes für die Tabelle `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `contract_type_id` (`contract_type_id`),
  ADD KEY `tariff_id` (`tariff_id`),
  ADD KEY `hardware_id` (`hardware_id`),
  ADD KEY `software_id` (`software_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `contract_term_id` (`contract_term_id`),
  ADD KEY `debator_id` (`debator_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indizes für die Tabelle `contract_categories`
--
ALTER TABLE `contract_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_state`
--
ALTER TABLE `contract_state`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_term`
--
ALTER TABLE `contract_term`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_type`
--
ALTER TABLE `contract_type`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `contract_x_provider_change_order`
--
ALTER TABLE `contract_x_provider_change_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `change_provider_id` (`change_provider_id`);

--
-- Indizes für die Tabelle `contract_x_tariff_option`
--
ALTER TABLE `contract_x_tariff_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_id` (`contract_id`),
  ADD KEY `tariff_option_id` (`tariff_option_id`);

--
-- Indizes für die Tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_adress_id` (`postal_adress_id`),
  ADD KEY `tech_address_id` (`tech_address_id`),
  ADD KEY `legal_form_id` (`legal_form_id`);

--
-- Indizes für die Tabelle `customer_class`
--
ALTER TABLE `customer_class`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_connection_requests`
--
ALTER TABLE `customer_connection_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_ftth_request`
--
ALTER TABLE `customer_ftth_request`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `customer_x_technology`
--
ALTER TABLE `customer_x_technology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `technology_id` (`technology_id`);

--
-- Indizes für die Tabelle `debator`
--
ALTER TABLE `debator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indizes für die Tabelle `expansion_area`
--
ALTER TABLE `expansion_area`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `expansion_state`
--
ALTER TABLE `expansion_state`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `house_intro_types`
--
ALTER TABLE `house_intro_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `house_owner`
--
ALTER TABLE `house_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `legal_form`
--
ALTER TABLE `legal_form`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `numerically`
--
ALTER TABLE `numerically`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `phone_numbers`
--
ALTER TABLE `phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `provider_change_order`
--
ALTER TABLE `provider_change_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_holder_id` (`data_holder_id`),
  ADD KEY `phone_nr_id` (`phone_nr_id`),
  ADD KEY `tele_system_id` (`tele_system_id`);

--
-- Indizes für die Tabelle `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indizes für die Tabelle `tariff_category`
--
ALTER TABLE `tariff_category`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tariff_option`
--
ALTER TABLE `tariff_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_class_id` (`customer_class_id`);

--
-- Indizes für die Tabelle `tariff_x_tariff_option`
--
ALTER TABLE `tariff_x_tariff_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tariff_id` (`tariff_id`),
  ADD KEY `tariff_option_id` (`tariff_option_id`);

--
-- Indizes für die Tabelle `tariff_x_technology`
--
ALTER TABLE `tariff_x_technology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tariff_id` (`tariff_id`),
  ADD KEY `technology_id` (`technology_id`);

--
-- Indizes für die Tabelle `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `telecommunication_system`
--
ALTER TABLE `telecommunication_system`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `television`
--
ALTER TABLE `television`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `address_x_television`
--
ALTER TABLE `address_x_television`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `asb_availability`
--
ALTER TABLE `asb_availability`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `asb_availability_x_customer`
--
ALTER TABLE `asb_availability_x_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `commissioned_house_types`
--
ALTER TABLE `commissioned_house_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `connection_data_holder`
--
ALTER TABLE `connection_data_holder`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `connection_point_types`
--
ALTER TABLE `connection_point_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `contact_person`
--
ALTER TABLE `contact_person`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `contract_categories`
--
ALTER TABLE `contract_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `contract_state`
--
ALTER TABLE `contract_state`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `contract_term`
--
ALTER TABLE `contract_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `contract_type`
--
ALTER TABLE `contract_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `contract_x_provider_change_order`
--
ALTER TABLE `contract_x_provider_change_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `contract_x_tariff_option`
--
ALTER TABLE `contract_x_tariff_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `customer_class`
--
ALTER TABLE `customer_class`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `customer_connection_requests`
--
ALTER TABLE `customer_connection_requests`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `customer_ftth_request`
--
ALTER TABLE `customer_ftth_request`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `customer_x_technology`
--
ALTER TABLE `customer_x_technology`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `debator`
--
ALTER TABLE `debator`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `expansion_area`
--
ALTER TABLE `expansion_area`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `expansion_state`
--
ALTER TABLE `expansion_state`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `house_intro_types`
--
ALTER TABLE `house_intro_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `house_owner`
--
ALTER TABLE `house_owner`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `legal_form`
--
ALTER TABLE `legal_form`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `numerically`
--
ALTER TABLE `numerically`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `phone_numbers`
--
ALTER TABLE `phone_numbers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `provider_change_order`
--
ALTER TABLE `provider_change_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `software`
--
ALTER TABLE `software`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `tariff`
--
ALTER TABLE `tariff`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `tariff_category`
--
ALTER TABLE `tariff_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `tariff_option`
--
ALTER TABLE `tariff_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT für Tabelle `tariff_x_tariff_option`
--
ALTER TABLE `tariff_x_tariff_option`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT für Tabelle `tariff_x_technology`
--
ALTER TABLE `tariff_x_technology`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `technology`
--
ALTER TABLE `technology`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `telecommunication_system`
--
ALTER TABLE `telecommunication_system`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `television`
--
ALTER TABLE `television`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints der Tabelle `address_x_television`
--
ALTER TABLE `address_x_television`
  ADD CONSTRAINT `address_x_television_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `address_x_television_ibfk_2` FOREIGN KEY (`tv_id`) REFERENCES `television` (`id`);

--
-- Constraints der Tabelle `asb_availability`
--
ALTER TABLE `asb_availability`
  ADD CONSTRAINT `asb_availability_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `asb_availability_ibfk_2` FOREIGN KEY (`network_node_adress_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `asb_availability_ibfk_3` FOREIGN KEY (`technology_id`) REFERENCES `technology` (`id`);

--
-- Constraints der Tabelle `asb_availability_x_customer`
--
ALTER TABLE `asb_availability_x_customer`
  ADD CONSTRAINT `asb_availability_x_customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints der Tabelle `connection_data_holder`
--
ALTER TABLE `connection_data_holder`
  ADD CONSTRAINT `connection_data_holder_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints der Tabelle `contact_person`
--
ALTER TABLE `contact_person`
  ADD CONSTRAINT `contact_person_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `contact_person_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints der Tabelle `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `contract_ibfk_2` FOREIGN KEY (`contract_type_id`) REFERENCES `contract_type` (`id`),
  ADD CONSTRAINT `contract_ibfk_3` FOREIGN KEY (`tariff_id`) REFERENCES `tariff` (`id`),
  ADD CONSTRAINT `contract_ibfk_4` FOREIGN KEY (`hardware_id`) REFERENCES `hardware` (`id`),
  ADD CONSTRAINT `contract_ibfk_5` FOREIGN KEY (`software_id`) REFERENCES `software` (`id`),
  ADD CONSTRAINT `contract_ibfk_6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `contract_ibfk_7` FOREIGN KEY (`contract_term_id`) REFERENCES `contract_term` (`id`),
  ADD CONSTRAINT `contract_ibfk_8` FOREIGN KEY (`debator_id`) REFERENCES `debator` (`id`),
  ADD CONSTRAINT `contract_ibfk_9` FOREIGN KEY (`state_id`) REFERENCES `contract_state` (`id`);

--
-- Constraints der Tabelle `contract_x_provider_change_order`
--
ALTER TABLE `contract_x_provider_change_order`
  ADD CONSTRAINT `contract_x_provider_change_order_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `contract_x_provider_change_order_ibfk_2` FOREIGN KEY (`change_provider_id`) REFERENCES `provider_change_order` (`id`);

--
-- Constraints der Tabelle `contract_x_tariff_option`
--
ALTER TABLE `contract_x_tariff_option`
  ADD CONSTRAINT `contract_x_tariff_option_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `contract` (`id`),
  ADD CONSTRAINT `contract_x_tariff_option_ibfk_2` FOREIGN KEY (`tariff_option_id`) REFERENCES `tariff_option` (`id`);

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`postal_adress_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`tech_address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`legal_form_id`) REFERENCES `legal_form` (`id`);

--
-- Constraints der Tabelle `customer_x_technology`
--
ALTER TABLE `customer_x_technology`
  ADD CONSTRAINT `customer_x_technology_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `customer_x_technology_ibfk_2` FOREIGN KEY (`technology_id`) REFERENCES `technology` (`id`);

--
-- Constraints der Tabelle `debator`
--
ALTER TABLE `debator`
  ADD CONSTRAINT `debator_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `debator_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints der Tabelle `provider_change_order`
--
ALTER TABLE `provider_change_order`
  ADD CONSTRAINT `provider_change_order_ibfk_1` FOREIGN KEY (`data_holder_id`) REFERENCES `connection_data_holder` (`id`),
  ADD CONSTRAINT `provider_change_order_ibfk_2` FOREIGN KEY (`phone_nr_id`) REFERENCES `phone_numbers` (`id`),
  ADD CONSTRAINT `provider_change_order_ibfk_3` FOREIGN KEY (`tele_system_id`) REFERENCES `telecommunication_system` (`id`);

--
-- Constraints der Tabelle `tariff`
--
ALTER TABLE `tariff`
  ADD CONSTRAINT `tariff_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tariff_category` (`id`);

--
-- Constraints der Tabelle `tariff_option`
--
ALTER TABLE `tariff_option`
  ADD CONSTRAINT `customer_class_id` FOREIGN KEY (`customer_class_id`) REFERENCES `customer_class` (`id`);

--
-- Constraints der Tabelle `tariff_x_tariff_option`
--
ALTER TABLE `tariff_x_tariff_option`
  ADD CONSTRAINT `tariff_x_tariff_option_ibfk_1` FOREIGN KEY (`tariff_id`) REFERENCES `tariff` (`id`),
  ADD CONSTRAINT `tariff_x_tariff_option_ibfk_2` FOREIGN KEY (`tariff_option_id`) REFERENCES `tariff_option` (`id`);

--
-- Constraints der Tabelle `tariff_x_technology`
--
ALTER TABLE `tariff_x_technology`
  ADD CONSTRAINT `tariff_x_technology_ibfk_1` FOREIGN KEY (`tariff_id`) REFERENCES `tariff` (`id`),
  ADD CONSTRAINT `tariff_x_technology_ibfk_2` FOREIGN KEY (`technology_id`) REFERENCES `technology` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
