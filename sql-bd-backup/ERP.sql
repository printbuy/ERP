-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 23, 2024 at 10:23 PM
-- Server version: 8.0.37
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ERP`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `entity_id` bigint UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `options` json DEFAULT NULL,
  `scope` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'view-customer', 'View customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(2, 'create-customer', 'Create customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(3, 'edit-customer', 'Edit customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(4, 'delete-customer', 'Delete customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(5, 'view-item', 'View item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(6, 'create-item', 'Create item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(7, 'edit-item', 'Edit item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(8, 'delete-item', 'Delete item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(9, 'view-tax-type', 'View tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(10, 'create-tax-type', 'Create tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(11, 'edit-tax-type', 'Edit tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(12, 'delete-tax-type', 'Delete tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(13, 'view-estimate', 'View estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(14, 'create-estimate', 'Create estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(15, 'edit-estimate', 'Edit estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(16, 'delete-estimate', 'Delete estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(17, 'send-estimate', 'Send estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(18, 'view-invoice', 'View invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(19, 'create-invoice', 'Create invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(20, 'edit-invoice', 'Edit invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(21, 'delete-invoice', 'Delete invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(22, 'send-invoice', 'Send invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(23, 'view-recurring-invoice', 'View recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(24, 'create-recurring-invoice', 'Create recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(25, 'edit-recurring-invoice', 'Edit recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(26, 'delete-recurring-invoice', 'Delete recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(27, 'view-payment', 'View payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(28, 'create-payment', 'Create payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(29, 'edit-payment', 'Edit payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(30, 'delete-payment', 'Delete payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(31, 'send-payment', 'Send payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(32, 'view-expense', 'View expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(33, 'create-expense', 'Create expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(34, 'edit-expense', 'Edit expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(35, 'delete-expense', 'Delete expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(36, 'view-custom-field', 'View custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(37, 'create-custom-field', 'Create custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(38, 'edit-custom-field', 'Edit custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(39, 'delete-custom-field', 'Delete custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(40, 'view-financial-reports', 'View financial reports', NULL, NULL, 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(41, 'view-exchange-rate-provider', 'View exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(42, 'create-exchange-rate-provider', 'Create exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(43, 'edit-exchange-rate-provider', 'Edit exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(44, 'delete-exchange-rate-provider', 'Delete exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(45, 'dashboard', 'Dashboard', NULL, NULL, 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(46, 'view-all-notes', 'View all notes notes', NULL, 'InvoiceShelf\\Models\\Note', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(47, 'manage-all-notes', 'Manage all notes notes', NULL, 'InvoiceShelf\\Models\\Note', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(48, 'view-installer', 'View installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(49, 'create-installer', 'Create installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(50, 'edit-installer', 'Edit installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(51, 'delete-installer', 'Delete installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(52, 'view-customer', 'View customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(53, 'create-customer', 'Create customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(54, 'edit-customer', 'Edit customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(55, 'delete-customer', 'Delete customer customers', NULL, 'InvoiceShelf\\Models\\Customer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(56, 'view-installer', 'View installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(57, 'create-installer', 'Create installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(58, 'edit-installer', 'Edit installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(59, 'delete-installer', 'Delete installer installers', NULL, 'InvoiceShelf\\Models\\Installer', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(60, 'view-item', 'View item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(61, 'create-item', 'Create item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(62, 'edit-item', 'Edit item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(63, 'delete-item', 'Delete item items', NULL, 'InvoiceShelf\\Models\\Item', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(64, 'view-tax-type', 'View tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(65, 'create-tax-type', 'Create tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(66, 'edit-tax-type', 'Edit tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(67, 'delete-tax-type', 'Delete tax type tax types', NULL, 'InvoiceShelf\\Models\\TaxType', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(68, 'view-estimate', 'View estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(69, 'create-estimate', 'Create estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(70, 'edit-estimate', 'Edit estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(71, 'delete-estimate', 'Delete estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(72, 'send-estimate', 'Send estimate estimates', NULL, 'InvoiceShelf\\Models\\Estimate', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(73, 'view-invoice', 'View invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(74, 'create-invoice', 'Create invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(75, 'edit-invoice', 'Edit invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(76, 'delete-invoice', 'Delete invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(77, 'send-invoice', 'Send invoice invoices', NULL, 'InvoiceShelf\\Models\\Invoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(78, 'view-recurring-invoice', 'View recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(79, 'create-recurring-invoice', 'Create recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(80, 'edit-recurring-invoice', 'Edit recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(81, 'delete-recurring-invoice', 'Delete recurring invoice recurring invoices', NULL, 'InvoiceShelf\\Models\\RecurringInvoice', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(82, 'view-payment', 'View payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(83, 'create-payment', 'Create payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(84, 'edit-payment', 'Edit payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(85, 'delete-payment', 'Delete payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(86, 'send-payment', 'Send payment payments', NULL, 'InvoiceShelf\\Models\\Payment', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(87, 'view-expense', 'View expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(88, 'create-expense', 'Create expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(89, 'edit-expense', 'Edit expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(90, 'delete-expense', 'Delete expense expenses', NULL, 'InvoiceShelf\\Models\\Expense', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(91, 'view-custom-field', 'View custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(92, 'create-custom-field', 'Create custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(93, 'edit-custom-field', 'Edit custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(94, 'delete-custom-field', 'Delete custom field custom fields', NULL, 'InvoiceShelf\\Models\\CustomField', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(95, 'view-financial-reports', 'View financial reports', NULL, NULL, 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(96, 'view-exchange-rate-provider', 'View exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(97, 'create-exchange-rate-provider', 'Create exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(98, 'edit-exchange-rate-provider', 'Edit exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(99, 'delete-exchange-rate-provider', 'Delete exchange rate provider exchange rate providers', NULL, 'InvoiceShelf\\Models\\ExchangeRateProvider', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(100, 'dashboard', 'Dashboard', NULL, NULL, 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(101, 'view-all-notes', 'View all notes notes', NULL, 'InvoiceShelf\\Models\\Note', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(102, 'manage-all-notes', 'Manage all notes notes', NULL, 'InvoiceShelf\\Models\\Note', 0, NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_street_1` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_street_2` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `installer_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `address_street_1`, `address_street_2`, `city`, `state`, `country_id`, `zip`, `phone`, `fax`, `type`, `user_id`, `created_at`, `updated_at`, `company_id`, `customer_id`, `installer_id`) VALUES
(1, NULL, '36 Newbridge Ave', NULL, 'Richmond Hill', 'ON', 38, 'L4E 3Z9', '6478047100', NULL, NULL, NULL, '2024-05-04 07:20:53', '2024-05-04 07:20:53', 1, NULL, NULL),
(4, 'Antenor', '33 Newbridge Ave', NULL, 'Richmond Hill', 'ON', 38, 'L4E 3Z9', '6478047150', NULL, 'shipping', NULL, '2024-05-04 07:25:01', '2024-05-04 07:25:01', NULL, 1, NULL),
(5, 'Antenor', '33 Newbridge Ave', NULL, 'Richmond Hill', 'ON', 38, 'L4E 3Z9', '6478047150', NULL, 'billing', NULL, '2024-05-04 07:25:01', '2024-05-04 07:25:01', NULL, 1, NULL),
(6, 'Customer2', '45 street', NULL, 'Richmond Hill', 'ON', 38, 'L4E 3Z9', '99999999', NULL, 'shipping', NULL, '2024-05-05 06:20:34', '2024-05-05 06:20:34', NULL, 2, NULL),
(7, 'Customer2', '45 street', NULL, 'Richmond Hill', 'ON', 38, 'L4E 3Z9', '99999999', NULL, 'billing', NULL, '2024-05-05 06:20:34', '2024-05-05 06:20:34', NULL, 2, NULL),
(9, 'Installer 1', '01 Newbridge Ave', NULL, 'Richmond Hill', 'ON', 38, 'L4E 3Z999', '999999999999999', NULL, 'billing', NULL, '2024-05-14 23:06:48', '2024-05-14 23:06:48', NULL, NULL, 1),
(15, 'Installer 03', '55 Newbridge Ave', NULL, 'Richmond Hill', 'ON', NULL, 'L4E 3Z9', '6478047150asdas', NULL, 'billing', NULL, '2024-05-27 19:53:38', '2024-05-27 19:53:38', NULL, NULL, 6),
(16, NULL, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, NULL, '2024-06-08 05:02:48', '2024-06-08 05:02:48', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `entity_id` bigint UNSIGNED NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `restricted_to_id` bigint UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `scope` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(1, 1, 1, 'InvoiceShelf\\Models\\User', NULL, NULL, 1),
(3, 3, 1, 'InvoiceShelf\\Models\\User', NULL, NULL, 2),
(4, 3, 3, 'InvoiceShelf\\Models\\User', NULL, NULL, 2),
(5, 1, 4, 'InvoiceShelf\\Models\\User', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unique_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `vat_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `owner_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `unique_hash`, `vat_id`, `tax_id`, `created_at`, `updated_at`, `slug`, `owner_id`) VALUES
(1, 'Company Test', NULL, '1z45L67EP1gPW3qxVK2n', '8888888888888', '9999999999', '2024-05-04 07:12:17', '2024-05-04 07:20:53', 'xyz', 1),
(2, 'Company Test 2', NULL, 'K1V8AnBEO2BP29xq5L4z', NULL, NULL, '2024-06-08 05:02:47', '2024-06-08 05:02:47', 'company-test-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_settings`
--

CREATE TABLE `company_settings` (
  `id` int UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `company_settings`
--

INSERT INTO `company_settings` (`id`, `option`, `value`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'invoice_auto_generate', 'YES', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(2, 'payment_auto_generate', 'YES', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(3, 'estimate_auto_generate', 'YES', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(4, 'save_pdf_to_disk', 'NO', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(5, 'invoice_mail_body', 'You have received a new invoice from <b>{COMPANY_NAME}</b>.</br> Please download using the button below:', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(6, 'estimate_mail_body', 'You have received a new estimate from <b>{COMPANY_NAME}</b>.</br> Please download using the button below:', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(7, 'payment_mail_body', 'Thank you for the payment.</b></br> Please download your payment receipt using the button below:', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(8, 'invoice_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(9, 'invoice_shipping_address_format', '<h3>{SHIPPING_ADDRESS_NAME}</h3><p>{SHIPPING_ADDRESS_STREET_1}</p><p>{SHIPPING_ADDRESS_STREET_2}</p><p>{SHIPPING_CITY}  {SHIPPING_STATE}</p><p>{SHIPPING_COUNTRY}  {SHIPPING_ZIP_CODE}</p><p>{SHIPPING_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(10, 'invoice_billing_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY}  {BILLING_STATE}</p><p>{BILLING_COUNTRY}  {BILLING_ZIP_CODE}</p><p>{BILLING_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(11, 'estimate_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(12, 'estimate_shipping_address_format', '<h3>{SHIPPING_ADDRESS_NAME}</h3><p>{SHIPPING_ADDRESS_STREET_1}</p><p>{SHIPPING_ADDRESS_STREET_2}</p><p>{SHIPPING_CITY}  {SHIPPING_STATE}</p><p>{SHIPPING_COUNTRY}  {SHIPPING_ZIP_CODE}</p><p>{SHIPPING_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(13, 'estimate_billing_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY}  {BILLING_STATE}</p><p>{BILLING_COUNTRY}  {BILLING_ZIP_CODE}</p><p>{BILLING_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(14, 'payment_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(15, 'payment_from_customer_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY} {BILLING_STATE} {BILLING_ZIP_CODE}</p><p>{BILLING_COUNTRY}</p><p>{BILLING_PHONE}</p>', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(16, 'currency', '11', 1, '2024-05-04 07:12:17', '2024-05-04 07:21:29'),
(17, 'time_zone', 'America/Toronto', 1, '2024-05-04 07:12:18', '2024-05-04 07:21:29'),
(18, 'language', 'en', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(19, 'fiscal_year', '1-12', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(20, 'carbon_date_format', 'd M Y', 1, '2024-05-04 07:12:18', '2024-05-04 07:21:29'),
(21, 'moment_date_format', 'YYYY/MM/DD', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(22, 'notification_email', 'noreply@invoiceshelf.com', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(23, 'notify_invoice_viewed', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(24, 'notify_estimate_viewed', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(25, 'tax_per_item', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(26, 'discount_per_item', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(27, 'invoice_email_attachment', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(28, 'estimate_email_attachment', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(29, 'payment_email_attachment', 'NO', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(30, 'retrospective_edits', 'allow', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(31, 'invoice_number_format', '{{SERIES:INV}}{{DELIMITER:-}}{{SEQUENCE:6}}', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(32, 'estimate_number_format', '{{SERIES:EST}}{{DELIMITER:-}}{{SEQUENCE:6}}', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(33, 'payment_number_format', '{{SERIES:PAY}}{{DELIMITER:-}}{{SEQUENCE:6}}', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(34, 'estimate_set_expiry_date_automatically', 'YES', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(35, 'estimate_expiry_date_days', '7', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(36, 'invoice_set_due_date_automatically', 'YES', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(37, 'invoice_due_date_days', '7', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(38, 'bulk_exchange_rate_configured', 'YES', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(39, 'estimate_convert_action', 'no_action', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(40, 'automatically_expire_public_links', 'YES', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(41, 'link_expiry_days', '7', 1, '2024-05-04 07:12:18', '2024-05-04 07:12:18'),
(42, 'invoice_auto_generate', 'YES', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(43, 'payment_auto_generate', 'YES', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(44, 'estimate_auto_generate', 'YES', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(45, 'save_pdf_to_disk', 'NO', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(46, 'invoice_mail_body', 'You have received a new invoice from <b>{COMPANY_NAME}</b>.</br> Please download using the button below:', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(47, 'estimate_mail_body', 'You have received a new estimate from <b>{COMPANY_NAME}</b>.</br> Please download using the button below:', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(48, 'payment_mail_body', 'Thank you for the payment.</b></br> Please download your payment receipt using the button below:', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(49, 'invoice_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(50, 'invoice_shipping_address_format', '<h3>{SHIPPING_ADDRESS_NAME}</h3><p>{SHIPPING_ADDRESS_STREET_1}</p><p>{SHIPPING_ADDRESS_STREET_2}</p><p>{SHIPPING_CITY}  {SHIPPING_STATE}</p><p>{SHIPPING_COUNTRY}  {SHIPPING_ZIP_CODE}</p><p>{SHIPPING_PHONE}</p>', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(51, 'invoice_billing_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY}  {BILLING_STATE}</p><p>{BILLING_COUNTRY}  {BILLING_ZIP_CODE}</p><p>{BILLING_PHONE}</p>', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(52, 'estimate_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(53, 'estimate_shipping_address_format', '<h3>{SHIPPING_ADDRESS_NAME}</h3><p>{SHIPPING_ADDRESS_STREET_1}</p><p>{SHIPPING_ADDRESS_STREET_2}</p><p>{SHIPPING_CITY}  {SHIPPING_STATE}</p><p>{SHIPPING_COUNTRY}  {SHIPPING_ZIP_CODE}</p><p>{SHIPPING_PHONE}</p>', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(54, 'estimate_billing_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY}  {BILLING_STATE}</p><p>{BILLING_COUNTRY}  {BILLING_ZIP_CODE}</p><p>{BILLING_PHONE}</p>', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(55, 'payment_company_address_format', '<h3><strong>{COMPANY_NAME}</strong></h3><p>{COMPANY_ADDRESS_STREET_1}</p><p>{COMPANY_ADDRESS_STREET_2}</p><p>{COMPANY_CITY} {COMPANY_STATE}</p><p>{COMPANY_COUNTRY}  {COMPANY_ZIP_CODE}</p><p>{COMPANY_PHONE}</p>', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(56, 'payment_from_customer_address_format', '<h3>{BILLING_ADDRESS_NAME}</h3><p>{BILLING_ADDRESS_STREET_1}</p><p>{BILLING_ADDRESS_STREET_2}</p><p>{BILLING_CITY} {BILLING_STATE} {BILLING_ZIP_CODE}</p><p>{BILLING_COUNTRY}</p><p>{BILLING_PHONE}</p>', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(57, 'currency', '11', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(58, 'time_zone', 'Asia/Kolkata', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(59, 'language', 'en', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(60, 'fiscal_year', '1-12', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(61, 'carbon_date_format', 'Y/m/d', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(62, 'moment_date_format', 'YYYY/MM/DD', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(63, 'notification_email', 'noreply@invoiceshelf.com', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(64, 'notify_invoice_viewed', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(65, 'notify_estimate_viewed', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(66, 'tax_per_item', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(67, 'discount_per_item', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(68, 'invoice_email_attachment', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(69, 'estimate_email_attachment', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(70, 'payment_email_attachment', 'NO', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(71, 'retrospective_edits', 'allow', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(72, 'invoice_number_format', '{{SERIES:INV}}{{DELIMITER:-}}{{SEQUENCE:6}}', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(73, 'estimate_number_format', '{{SERIES:EST}}{{DELIMITER:-}}{{SEQUENCE:6}}', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(74, 'payment_number_format', '{{SERIES:PAY}}{{DELIMITER:-}}{{SEQUENCE:6}}', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(75, 'estimate_set_expiry_date_automatically', 'YES', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(76, 'estimate_expiry_date_days', '7', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(77, 'invoice_set_due_date_automatically', 'YES', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(78, 'invoice_due_date_days', '7', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(79, 'bulk_exchange_rate_configured', 'YES', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(80, 'estimate_convert_action', 'no_action', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(81, 'automatically_expire_public_links', 'YES', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48'),
(82, 'link_expiry_days', '7', 2, '2024-06-08 05:02:48', '2024-06-08 05:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phonecode` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Congo', 242),
(50, 'CD', 'Congo The Democratic Republic Of The', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `precision` int NOT NULL,
  `thousand_separator` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `swap_currency_symbol` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `swap_currency_symbol`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(2, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(3, 'Euro', 'EUR', '€', 2, '.', ',', 1, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(4, 'Bosnia and Herzegovina Convertible Mark', 'BAM', 'KM', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(5, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(6, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(7, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(8, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(9, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(10, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(11, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(12, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(13, 'Nepali Rupee', 'NPR', 'रू', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(14, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(15, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(16, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(17, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(18, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(19, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(20, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(21, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(22, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(23, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(24, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(25, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(26, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(27, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(28, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(29, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(30, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2024-05-04 07:12:16', '2024-05-04 07:12:16'),
(31, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(32, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(33, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(34, 'Central African Franc', 'XAF', 'CFA ', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(35, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(36, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(37, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(38, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(39, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(40, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(41, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(42, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(43, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(44, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(45, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(46, 'Turkmenistani manat', 'TMT', 'M ', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(47, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(48, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(49, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(50, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(51, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(52, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(53, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(54, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(55, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(56, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(57, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(58, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(59, 'Tunisian Dinar', 'TND', '‎د.ت', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(60, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(61, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(62, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(63, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(64, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(65, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(66, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(67, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(68, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(69, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(70, 'Iraqi Dinar', 'IQD', 'ع.د', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(71, 'Peruvian Soles', 'PEN', 'S/', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(72, 'Moroccan Dirham', 'MAD', 'DH', 2, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(73, 'Jamaican Dollar', 'JMD', '$', 0, ',', '.', 0, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(74, 'Macedonian Denar', 'MKD', 'ден', 0, '.', ',', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(75, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(76, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(77, 'Euro', 'EUR', '€', 2, '.', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(78, 'Bosnia and Herzegovina Convertible Mark', 'BAM', 'KM', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(79, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(80, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(81, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(82, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(83, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(84, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(85, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(86, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(87, 'Nepali Rupee', 'NPR', 'रू', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(88, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(89, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(90, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(91, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(92, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(93, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(94, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(95, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(96, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(97, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(98, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(99, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(100, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(101, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(102, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(103, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(104, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(105, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(106, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(107, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(108, 'Central African Franc', 'XAF', 'CFA ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(109, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(110, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(111, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(112, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(113, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(114, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(115, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(116, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(117, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(118, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(119, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(120, 'Turkmenistani manat', 'TMT', 'M ', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(121, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(122, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(123, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(124, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(125, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(126, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(127, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(128, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(129, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(130, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(131, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(132, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(133, 'Tunisian Dinar', 'TND', '‎د.ت', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(134, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(135, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(136, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(137, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(138, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(139, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(140, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(141, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(142, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(143, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(144, 'Iraqi Dinar', 'IQD', 'ع.د', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(145, 'Peruvian Soles', 'PEN', 'S/', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(146, 'Moroccan Dirham', 'MAD', 'DH', 2, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(147, 'Jamaican Dollar', 'JMD', '$', 0, ',', '.', 0, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(148, 'Macedonian Denar', 'MKD', 'ден', 0, '.', ',', 1, '2024-07-20 05:43:56', '2024-07-20 05:43:56'),
(149, 'US Dollar', 'USD', '$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(150, 'British Pound', 'GBP', '£', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(151, 'Euro', 'EUR', '€', 2, '.', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(152, 'Bosnia and Herzegovina Convertible Mark', 'BAM', 'KM', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(153, 'South African Rand', 'ZAR', 'R', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(154, 'Danish Krone', 'DKK', 'kr', 2, '.', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(155, 'Israeli Shekel', 'ILS', 'NIS ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(156, 'Swedish Krona', 'SEK', 'kr', 2, '.', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(157, 'Kenyan Shilling', 'KES', 'KSh ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(158, 'Kuwaiti Dinar', 'KWD', 'KWD ', 3, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(159, 'Canadian Dollar', 'CAD', 'C$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(160, 'Philippine Peso', 'PHP', 'P ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(161, 'Nepali Rupee', 'NPR', 'रू', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(162, 'Indian Rupee', 'INR', '₹', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(163, 'Australian Dollar', 'AUD', '$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(164, 'Singapore Dollar', 'SGD', 'S$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(165, 'Norske Kroner', 'NOK', 'kr', 2, '.', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(166, 'New Zealand Dollar', 'NZD', '$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(167, 'Vietnamese Dong', 'VND', '₫', 0, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(168, 'Swiss Franc', 'CHF', 'Fr.', 2, '\'', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(169, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(170, 'Malaysian Ringgit', 'MYR', 'RM', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(171, 'Brazilian Real', 'BRL', 'R$', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(172, 'Thai Baht', 'THB', '฿', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(173, 'Nigerian Naira', 'NGN', '₦', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(174, 'Argentine Peso', 'ARS', '$', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(175, 'Bangladeshi Taka', 'BDT', 'Tk', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(176, 'United Arab Emirates Dirham', 'AED', 'DH ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(177, 'Hong Kong Dollar', 'HKD', 'HK$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(178, 'Indonesian Rupiah', 'IDR', 'Rp', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(179, 'Mexican Peso', 'MXN', '$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(180, 'Egyptian Pound', 'EGP', 'E£', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(181, 'Colombian Peso', 'COP', '$', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(182, 'Central African Franc', 'XAF', 'CFA ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(183, 'West African Franc', 'XOF', 'CFA ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(184, 'Chinese Renminbi', 'CNY', 'RMB ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(185, 'Rwandan Franc', 'RWF', 'RF ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(186, 'Tanzanian Shilling', 'TZS', 'TSh ', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(187, 'Netherlands Antillean Guilder', 'ANG', 'NAƒ', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(188, 'Trinidad and Tobago Dollar', 'TTD', 'TT$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(189, 'East Caribbean Dollar', 'XCD', 'EC$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(190, 'Ghanaian Cedi', 'GHS', '‎GH₵', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(191, 'Bulgarian Lev', 'BGN', 'Лв.', 2, ' ', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(192, 'Aruban Florin', 'AWG', 'Afl. ', 2, ' ', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(193, 'Turkish Lira', 'TRY', 'TL ', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(194, 'Turkmenistani manat', 'TMT', 'M ', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(195, 'Romanian New Leu', 'RON', 'RON', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(196, 'Croatian Kuna', 'HRK', 'kn', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(197, 'Saudi Riyal', 'SAR', '‎SِAR', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(198, 'Japanese Yen', 'JPY', '¥', 0, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(199, 'Maldivian Rufiyaa', 'MVR', 'Rf', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(200, 'Costa Rican Colón', 'CRC', '₡', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(201, 'Pakistani Rupee', 'PKR', 'Rs ', 0, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(202, 'Polish Zloty', 'PLN', 'zł', 2, ' ', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(203, 'Sri Lankan Rupee', 'LKR', 'LKR', 2, ',', '.', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(204, 'Czech Koruna', 'CZK', 'Kč', 2, ' ', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(205, 'Uruguayan Peso', 'UYU', '$', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(206, 'Namibian Dollar', 'NAD', '$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(207, 'Tunisian Dinar', 'TND', '‎د.ت', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(208, 'Russian Ruble', 'RUB', '₽', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(209, 'Mozambican Metical', 'MZN', 'MT', 2, '.', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(210, 'Omani Rial', 'OMR', 'ر.ع.', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(211, 'Ukrainian Hryvnia', 'UAH', '₴', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(212, 'Macanese Pataca', 'MOP', 'MOP$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(213, 'Taiwan New Dollar', 'TWD', 'NT$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(214, 'Dominican Peso', 'DOP', 'RD$', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(215, 'Chilean Peso', 'CLP', '$', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(216, 'Serbian Dinar', 'RSD', 'RSD', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(217, 'Kyrgyzstani som', 'KGS', 'С̲ ', 2, '.', ',', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(218, 'Iraqi Dinar', 'IQD', 'ع.د', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(219, 'Peruvian Soles', 'PEN', 'S/', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(220, 'Moroccan Dirham', 'MAD', 'DH', 2, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(221, 'Jamaican Dollar', 'JMD', '$', 0, ',', '.', 0, '2024-07-20 05:44:11', '2024-07-20 05:44:11'),
(222, 'Macedonian Denar', 'MKD', 'ден', 0, '.', ',', 1, '2024-07-20 05:44:11', '2024-07-20 05:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enable_portal` tinyint(1) DEFAULT '0',
  `currency_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `prefix`, `name`, `email`, `phone`, `password`, `remember_token`, `facebook_id`, `google_id`, `github_id`, `contact_name`, `company_name`, `website`, `enable_portal`, `currency_id`, `company_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Antenor Queiroz', 'antenorq@gmail.com', '6478047150', '$2y$10$uVSzX9WkADDC1vyfjVXpQOvLmcWHC0e5N1xQRiTVxUI0OwQ8VqXGO', NULL, NULL, NULL, NULL, 'Antenor', NULL, NULL, 1, 11, 1, 1, '2024-05-04 07:22:01', '2024-05-04 07:25:01'),
(2, NULL, 'Customer 2', 'Customer2@gmail.com', '99999999', NULL, NULL, NULL, NULL, NULL, 'Customer2', NULL, NULL, 0, 11, 1, 1, '2024-05-05 06:20:34', '2024-05-05 06:20:34'),
(5, NULL, 'Customer test', 'customer_test2@uioui.com', '54146546454654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, 1, 1, '2024-06-08 03:11:32', '2024-06-08 03:11:32'),
(6, NULL, 'customer company 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, 2, 1, '2024-06-08 05:04:07', '2024-06-08 05:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `placeholder` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `options` json DEFAULT NULL,
  `boolean_answer` tinyint(1) DEFAULT NULL,
  `date_answer` date DEFAULT NULL,
  `time_answer` time DEFAULT NULL,
  `string_answer` text COLLATE utf8mb3_unicode_ci,
  `number_answer` bigint UNSIGNED DEFAULT NULL,
  `date_time_answer` datetime DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `order` bigint UNSIGNED NOT NULL DEFAULT '1',
  `company_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint UNSIGNED NOT NULL,
  `custom_field_valuable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `custom_field_valuable_id` int UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `boolean_answer` tinyint(1) DEFAULT NULL,
  `date_answer` date DEFAULT NULL,
  `time_answer` time DEFAULT NULL,
  `string_answer` text COLLATE utf8mb3_unicode_ci,
  `number_answer` bigint UNSIGNED DEFAULT NULL,
  `date_time_answer` datetime DEFAULT NULL,
  `custom_field_id` bigint UNSIGNED NOT NULL,
  `company_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `domain`, `tenant_id`, `created_at`, `updated_at`) VALUES
(2, 'antenor.localhost', 'antenor', '2024-07-11 02:57:14', '2024-07-11 02:57:14'),
(3, 'maria.localhost', 'maria', '2024-07-11 06:25:38', '2024-07-11 06:25:38'),
(4, 'danny.localhost', 'danny', '2024-07-14 03:34:12', '2024-07-14 03:34:12'),
(5, 'admin.localhost', 'admin', '2024-07-14 03:34:12', '2024-07-14 03:34:12'),
(6, 'pedro.localhost', 'pedro', '2024-07-23 22:36:44', '2024-07-23 22:36:44'),
(7, 'edson.localhost', 'edson', '2024-07-24 05:45:05', '2024-07-24 05:45:05'),
(8, 'popo.localhost', 'popo', '2024-07-26 06:02:57', '2024-07-26 06:02:57'),
(9, 'blabla.localhost', 'blabla', '2024-07-26 06:33:12', '2024-07-26 06:33:12'),
(11, 'kkk.localhost', 'kkk', '2024-07-26 19:45:23', '2024-07-26 19:45:23'),
(12, 'qqq.localhost', 'qqq', '2024-07-26 19:46:51', '2024-07-26 19:46:51'),
(13, 'carwrap.localhost', 'carwrap', '2024-07-27 01:47:18', '2024-07-27 01:47:18'),
(14, 'mmm.printby.ca', 'mmm', '2024-09-23 17:34:49', '2024-09-23 17:34:49'),
(15, 'isadora.localhost', 'isadora', '2024-09-23 17:53:13', '2024-09-23 17:53:13'),
(16, 'test01.localhost', 'test01', '2024-09-23 21:23:00', '2024-09-23 21:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `from` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `mailable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `mailable_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `from`, `to`, `subject`, `body`, `mailable_type`, `mailable_id`, `created_at`, `updated_at`, `token`) VALUES
(1, 'antenorq@gmail.com', 'antenorq@gmail.com', 'New Estimate', 'You have received a new estimate from <b>Company Test</b>.</br> Please download using the button below:', 'InvoiceShelf\\Models\\Estimate', '1', '2024-05-05 06:05:02', '2024-05-05 06:05:02', 'P6wKND1VY387e458O20J'),
(2, 'antenorq@gmail.com', 'antenorq@gmail.com', 'New Estimate', 'You have received a new estimate from <b>Company Test</b>.</br> Please download using the button below:', 'InvoiceShelf\\Models\\Estimate', '1', '2024-05-05 06:05:08', '2024-05-05 06:05:08', 'g8ml21ODx0g7V4Rq0NJ5');

-- --------------------------------------------------------

--
-- Table structure for table `estimates`
--

CREATE TABLE `estimates` (
  `id` int UNSIGNED NOT NULL,
  `sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `customer_sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `estimate_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `estimate_number` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `tax_per_item` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `sub_total` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `unique_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `template_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint UNSIGNED DEFAULT NULL,
  `base_sub_total` bigint UNSIGNED DEFAULT NULL,
  `base_total` bigint UNSIGNED DEFAULT NULL,
  `base_tax` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `sales_tax_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sales_tax_address_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `estimates`
--

INSERT INTO `estimates` (`id`, `sequence_number`, `customer_sequence_number`, `estimate_date`, `expiry_date`, `estimate_number`, `status`, `reference_number`, `tax_per_item`, `discount_per_item`, `notes`, `discount`, `discount_type`, `discount_val`, `sub_total`, `total`, `tax`, `unique_hash`, `company_id`, `created_at`, `updated_at`, `creator_id`, `template_name`, `customer_id`, `exchange_rate`, `base_discount_val`, `base_sub_total`, `base_total`, `base_tax`, `currency_id`, `sales_tax_type`, `sales_tax_address_type`) VALUES
(1, 1, 1, '2024-05-05', '2024-05-12', 'EST-000001', 'EXPIRED', NULL, 'NO', 'NO', '<p>Note of this estimate</p><p>{CONTACT_PHONE}</p><p>{CONTACT_DISPLAY_NAME}</p>{COMPANY_NAME}', 10.00, 'percentage', 11000, 110000, 111870, 12870, 'z3X01krAe1XeVbW786dn', 1, '2024-05-05 06:02:14', '2024-05-13 00:00:01', 1, 'estimate2', 1, 1.000000, 11000, 110000, 111870, 12870, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `estimate_items`
--

CREATE TABLE `estimate_items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `estimate_id` int UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint UNSIGNED DEFAULT NULL,
  `base_price` bigint UNSIGNED DEFAULT NULL,
  `base_tax` bigint UNSIGNED DEFAULT NULL,
  `base_total` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `estimate_items`
--

INSERT INTO `estimate_items` (`id`, `name`, `description`, `discount_type`, `quantity`, `unit_name`, `discount`, `discount_val`, `price`, `tax`, `total`, `item_id`, `estimate_id`, `company_id`, `created_at`, `updated_at`, `exchange_rate`, `base_discount_val`, `base_price`, `base_tax`, `base_total`) VALUES
(1, 'Item of service 01', 'Description of Item of service 01', 'fixed', 1.00, 'pc', 0.00, 0, 15000, 0, 15000, 1, 1, 1, '2024-05-05 06:02:14', '2024-05-05 06:02:14', 1.000000, 0, 15000, 12870, 15000),
(2, 'Item of service 02', 'Description Item of service 01', 'fixed', 1.00, 'pc', 0.00, 0, 25000, 0, 25000, 2, 1, 1, '2024-05-05 06:02:14', '2024-05-05 06:02:14', 1.000000, 0, 25000, 12870, 25000),
(3, 'Item of service 03', 'Description Item of service 03', 'fixed', 2.00, NULL, 0.00, 0, 35000, 0, 70000, NULL, 1, 1, '2024-05-05 06:02:14', '2024-05-05 06:02:14', 1.000000, 0, 35000, 12870, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rate_logs`
--

CREATE TABLE `exchange_rate_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `base_currency_id` int UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rate_providers`
--

CREATE TABLE `exchange_rate_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `driver` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `currencies` json DEFAULT NULL,
  `driver_config` json DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `attachment_receipt` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci,
  `expense_category_id` int UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `payment_method_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_disks`
--

CREATE TABLE `file_disks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'REMOTE',
  `driver` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `set_as_default` tinyint(1) NOT NULL DEFAULT '0',
  `credentials` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `file_disks`
--

INSERT INTO `file_disks` (`id`, `name`, `type`, `driver`, `set_as_default`, `credentials`, `created_at`, `updated_at`) VALUES
(1, 'local_public', 'SYSTEM', 'local', 0, '\"{\\\"driver\\\":\\\"local\\\",\\\"root\\\":\\\"\\\\/var\\\\/www\\\\/storage\\\\/app\\\\/public\\\",\\\"url\\\":\\\"http:\\\\/\\\\/invoiceshelf.test\\\\/storage\\\",\\\"visibility\\\":\\\"public\\\"}\"', '2024-05-04 07:12:10', '2024-05-04 07:12:10'),
(2, 'local_private', 'SYSTEM', 'local', 1, '\"{\\\"root\\\":\\\"\\\\/var\\\\/www\\\\/storage\\\\/app\\\",\\\"driver\\\":\\\"local\\\"}\"', '2024-05-04 07:12:10', '2024-05-04 07:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `installers`
--

CREATE TABLE `installers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enable_portal` tinyint(1) DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `installers`
--

INSERT INTO `installers` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `facebook_id`, `google_id`, `github_id`, `contact_name`, `company_name`, `website`, `enable_portal`, `currency_id`, `company_id`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 'Installer 1', 'installer1@test.com', '9999999999', NULL, NULL, NULL, NULL, NULL, 'Installer 1', NULL, 'https://installer1.com.br', 0, 11, 1, 1, '2024-05-13 18:32:45', '2024-05-13 18:32:45'),
(2, 'Installer 2', 'installer2@test.com', '888888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://installer2.com.br', 0, 11, 1, 1, '2024-05-14 22:56:03', '2024-05-14 22:56:03'),
(6, 'Installer 3', 'Installer03@gmail.com', '5555555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, 1, 1, '2024-05-27 19:52:29', '2024-05-27 19:53:38'),
(7, 'asadasd', 'asaasdas@asdad.com', 'asasas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, 1, 1, '2024-06-07 23:37:50', '2024-06-07 23:37:50'),
(8, 'installer company 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, 2, 3, '2024-06-08 05:08:38', '2024-06-08 05:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int UNSIGNED NOT NULL,
  `sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `customer_sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `paid_status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tax_per_item` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `sub_total` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `due_amount` bigint UNSIGNED NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `unique_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `template_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `recurring_invoice_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint UNSIGNED DEFAULT NULL,
  `base_sub_total` bigint UNSIGNED DEFAULT NULL,
  `base_total` bigint UNSIGNED DEFAULT NULL,
  `base_tax` bigint UNSIGNED DEFAULT NULL,
  `base_due_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `sales_tax_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sales_tax_address_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `overdue` tinyint(1) NOT NULL DEFAULT '0',
  `installer_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `sequence_number`, `customer_sequence_number`, `invoice_date`, `due_date`, `invoice_number`, `reference_number`, `status`, `paid_status`, `tax_per_item`, `discount_per_item`, `notes`, `discount_type`, `discount`, `discount_val`, `sub_total`, `total`, `tax`, `due_amount`, `sent`, `viewed`, `unique_hash`, `company_id`, `created_at`, `updated_at`, `creator_id`, `template_name`, `customer_id`, `recurring_invoice_id`, `exchange_rate`, `base_discount_val`, `base_sub_total`, `base_total`, `base_tax`, `base_due_amount`, `currency_id`, `sales_tax_type`, `sales_tax_address_type`, `overdue`, `installer_id`) VALUES
(1, 1, 1, '2024-05-05', '2024-05-12', 'INV-000001', NULL, 'DRAFT', 'UNPAID', 'NO', 'NO', '<p>Note Incoice INV-000001</p><p></p><p>Installer: {PRIMARY_CONTACT_NAME}</p>', 'percentage', 10.00, 1500, 15000, 13500, 0, 13500, 0, 0, '4mO29Nj675870YbDA51z', 1, '2024-05-05 06:06:29', '2024-05-05 08:02:35', 1, 'invoice3', 1, NULL, 1.000000, 1500, 15000, 13500, 0, 13500, 11, NULL, NULL, 0, NULL),
(2, 2, 1, '2024-05-15', '2024-05-22', 'INV-000002', NULL, 'DRAFT', 'UNPAID', 'NO', 'NO', '<p>note</p>', 'fixed', 0.00, 0, 25000, 25000, 0, 25000, 0, 0, 'O42LmNe57ObW6D19YVP8', 1, '2024-05-15 04:28:40', '2024-06-23 07:05:16', 1, 'invoice3', 2, NULL, 1.000000, 0, 25000, 25000, 0, 25000, 11, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` bigint UNSIGNED NOT NULL,
  `quantity` decimal(15,2) NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recurring_invoice_id` bigint UNSIGNED DEFAULT NULL,
  `base_price` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_discount_val` bigint UNSIGNED DEFAULT NULL,
  `base_tax` bigint UNSIGNED DEFAULT NULL,
  `base_total` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `name`, `description`, `discount_type`, `price`, `quantity`, `unit_name`, `discount`, `discount_val`, `tax`, `total`, `invoice_id`, `item_id`, `company_id`, `created_at`, `updated_at`, `recurring_invoice_id`, `base_price`, `exchange_rate`, `base_discount_val`, `base_tax`, `base_total`) VALUES
(3, 'Item of service 01', 'Description of Item of service 01', 'fixed', 15000, 1.00, 'pc', 0.00, 0, 0, 15000, 1, 1, 1, '2024-05-05 08:02:35', '2024-05-05 08:02:35', NULL, 15000, 1.000000, 0, 0, 15000),
(5, 'Item of service 02', NULL, 'fixed', 25000, 1.00, 'pc', 0.00, 0, 0, 25000, 2, 2, 1, '2024-06-23 07:05:16', '2024-06-23 07:05:16', NULL, 25000, 1.000000, 0, 0, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `price` bigint UNSIGNED NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `tax_per_item` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `company_id`, `unit_id`, `created_at`, `updated_at`, `creator_id`, `currency_id`, `tax_per_item`) VALUES
(1, 'Item of service 01', 'Description of Item of service 01', 15000, 1, 11, '2024-05-05 05:39:24', '2024-05-05 05:39:24', 1, 11, 0),
(2, 'Item of service 02', 'Description Item of service 01', 25000, 1, 11, '2024-05-05 05:39:48', '2024-05-05 05:39:48', 1, 11, 0),
(3, 'item3', 'item 3', 1000, 1, 11, '2024-07-11 05:02:31', '2024-07-11 05:02:31', 1, 11, 0),
(4, 'item 4', NULL, 0, 1, NULL, '2024-07-11 05:12:01', '2024-07-11 05:12:01', 1, 11, 0),
(5, 'item5', NULL, 0, 1, NULL, '2024-07-11 05:57:40', '2024-07-11 05:57:40', 1, 11, 0),
(6, 'item6', NULL, 0, 1, NULL, '2024-07-11 22:09:42', '2024-07-11 22:09:42', 1, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` int UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `generated_conversions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`, `uuid`, `conversions_disk`, `generated_conversions`) VALUES
(1, 'InvoiceShelf\\Models\\User', 1, 'admin_avatar', 'antenor', 'antenor.jpeg', 'image/jpeg', 'public', 7417, '[]', '[]', '[]', 1, '2024-05-04 07:18:10', '2024-05-04 07:18:10', '386078fb-1923-41f3-b039-bab017438f33', 'public', '[]'),
(2, 'InvoiceShelf\\Models\\Company', 1, 'logo', 'media-libraryrTKDs1', 'car_wrap.jpg', 'image/jpeg', 'public', 15694, '[]', '[]', '[]', 1, '2024-05-04 07:20:53', '2024-05-04 07:20:53', '368e3c5b-5853-4a39-ba09-e9fdac32ff6f', 'public', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_071840_create_companies_table', 1),
(2, '2014_10_11_125754_create_currencies_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_05_13_060834_create_settings_table', 1),
(6, '2017_04_11_064308_create_units_table', 1),
(7, '2017_04_11_081227_create_items_table', 1),
(8, '2017_04_12_090759_create_invoices_table', 1),
(9, '2017_04_12_091015_create_invoice_items_table', 1),
(10, '2017_05_05_055609_create_estimates_table', 1),
(11, '2017_05_05_073927_create_notifications_table', 1),
(12, '2017_05_06_173745_create_countries_table', 1),
(13, '2017_10_02_123501_create_estimate_items_table', 1),
(14, '2018_11_02_133825_create_ expense_categories_table', 1),
(15, '2018_11_02_133956_create_expenses_table', 1),
(16, '2019_08_30_072639_create_addresses_table', 1),
(17, '2019_09_02_053155_create_payment_methods_table', 1),
(18, '2019_09_03_135234_create_payments_table', 1),
(19, '2019_09_14_120124_create_media_table', 1),
(20, '2019_09_21_052540_create_tax_types_table', 1),
(21, '2019_09_21_052548_create_taxes_table', 1),
(22, '2019_09_26_145012_create_company_settings_table', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(24, '2020_02_01_063235_create_custom_fields_table', 1),
(25, '2020_02_01_063509_create_custom_field_values_table', 1),
(26, '2020_05_12_154129_add_user_id_to_expenses_table', 1),
(27, '2020_09_07_103054_create_file_disks_table', 1),
(28, '2020_09_22_153617_add_columns_to_media_table', 1),
(29, '2020_09_26_100951_create_user_settings_table', 1),
(30, '2020_10_01_102913_add_company_to_addresses_table', 1),
(31, '2020_10_17_074745_create_notes_table', 1),
(32, '2020_10_24_091934_change_value_column_to_text_on_company_settings_table', 1),
(33, '2020_11_23_050206_add_creator_in_invoices_table', 1),
(34, '2020_11_23_050252_add_creator_in_estimates_table', 1),
(35, '2020_11_23_050316_add_creator_in_payments_table', 1),
(36, '2020_11_23_050333_add_creator_in_expenses_table', 1),
(37, '2020_11_23_050406_add_creator_in_items_table', 1),
(38, '2020_11_23_065815_add_creator_in_users_table', 1),
(39, '2020_11_23_074154_create_email_logs_table', 1),
(40, '2020_12_02_064933_update_crater_version_320', 1),
(41, '2020_12_02_090527_update_crater_version_400', 1),
(42, '2020_12_08_065715_change_description_and_notes_column_type', 1),
(43, '2020_12_08_133131_update_crater_version_401', 1),
(44, '2020_12_14_044717_add_template_name_to_invoices_table', 1),
(45, '2020_12_14_045310_add_template_name_to_estimates_table', 1),
(46, '2020_12_14_051450_remove_template_id_from_invoices_and_estimates_table', 1),
(47, '2020_12_23_061302_update_crater_version_402', 1),
(48, '2020_12_31_100816_update_crater_version_403', 1),
(49, '2021_01_22_085644_update_crater_version_404', 1),
(50, '2021_03_03_155223_add_unit_name_to_pdf', 1),
(51, '2021_03_23_145012_add_number_length_setting', 1),
(52, '2021_05_05_063533_update_crater_version_410', 1),
(53, '2021_06_19_121939_update_crater_version_420', 1),
(54, '2021_06_28_105334_create_bouncer_tables', 1),
(55, '2021_06_28_111647_create_customers_table', 1),
(56, '2021_06_28_120010_add_customer_id_to_estimates_table', 1),
(57, '2021_06_28_120133_add_customer_id_to_expenses_table', 1),
(58, '2021_06_28_120208_add_customer_id_to_invoices_table', 1),
(59, '2021_06_28_120231_add_customer_id_to_payments_table', 1),
(60, '2021_06_29_052745_add_customer_id_to_addresses_table', 1),
(61, '2021_06_30_062411_update_customer_id_in_all_tables', 1),
(62, '2021_07_01_060700_create_user_company_table', 1),
(63, '2021_07_05_100256_change_relationship_of_company', 1),
(64, '2021_07_06_070204_add_owner_id_to_companies_table', 1),
(65, '2021_07_08_110940_add_company_to_notes_table', 1),
(66, '2021_07_09_063502_create_recurring_invoices_table', 1),
(67, '2021_07_09_063712_add_recurring_invoice_id_to_invoices_table', 1),
(68, '2021_07_09_063755_add_recurring_invoice_id_to_invoice_items_table', 1),
(69, '2021_07_15_054753_make_due_date_optional_in_invoices_table', 1),
(70, '2021_07_15_054929_make_expiry_date_optional_estimates_table', 1),
(71, '2021_07_16_072458_add_base_columns_into_invoices_table', 1),
(72, '2021_07_16_072925_add_base_columns_into_invoice_items_table', 1),
(73, '2021_07_16_073040_add_base_columns_into_estimates_table', 1),
(74, '2021_07_16_073441_add_base_columns_into_estimate_items_table', 1),
(75, '2021_07_16_074810_add_base_column_into_payments_table', 1),
(76, '2021_07_16_075100_add_base_values_into_taxes_table', 1),
(77, '2021_07_16_080253_add_currency_id_into_invoices_table', 1),
(78, '2021_07_16_080508_add_currency_id_into_payments_table', 1),
(79, '2021_07_16_080611_add_currency_id_into_items_table', 1),
(80, '2021_07_16_080702_add_currency_id_into_taxes_table', 1),
(81, '2021_07_16_112429_add_currency_id_into_estimates_table', 1),
(82, '2021_08_05_103535_create_exchange_rate_logs_table', 1),
(83, '2021_08_16_091413_add_tax_per_item_into_items_table', 1),
(84, '2021_08_19_063244_add_base_columns_to_expense_table', 1),
(85, '2021_09_28_081543_create_exchange_rate_providers_table', 1),
(86, '2021_09_28_130822_add_sequence_column', 1),
(87, '2021_10_06_100539_add_recurring_invoice_id_to_taxes_table', 1),
(88, '2021_11_13_051127_add_payment_method_to_expense_table', 1),
(89, '2021_11_13_114808_calculate_base_values_for_existing_data', 1),
(90, '2021_11_23_092111_add_new_company_settings', 1),
(91, '2021_11_23_093811_update_crater_version_500', 1),
(92, '2021_12_01_120956_update_crater_version_501', 1),
(93, '2021_12_02_063005_calculate_base_due_amount', 1),
(94, '2021_12_02_074516_migrate_templates_from_version_4', 1),
(95, '2021_12_02_123007_update_crater_version_502', 1),
(96, '2021_12_03_154423_update_crater_version_503', 1),
(97, '2021_12_04_122255_create_transactions_table', 1),
(98, '2021_12_04_123315_add_transaction_id_to_payments_table', 1),
(99, '2021_12_04_123415_add_type_to_payment_methods_table', 1),
(100, '2021_12_06_131201_update_crater_version_504', 1),
(101, '2021_12_09_054033_calculate_base_values_for_expenses', 1),
(102, '2021_12_09_062434_update_crater_version_505', 1),
(103, '2021_12_09_065718_drop_unique_email_on_customers_table', 1),
(104, '2021_12_10_121739_update_creater_version_506', 1),
(105, '2021_12_13_055813_calculate_base_amount_of_payments_table', 1),
(106, '2021_12_13_093701_add_fields_to_email_logs_table', 1),
(107, '2021_12_15_053223_create_modules_table', 1),
(108, '2021_12_21_102521_change_enable_portal_field_of_customers_table', 1),
(109, '2021_12_31_042453_add_type_to_tax_types_table', 1),
(110, '2022_01_05_101841_add_sales_tax_fields_to_invoices_table', 1),
(111, '2022_01_05_102538_add_sales_tax_fields_to_estimates_table', 1),
(112, '2022_01_05_103607_add_sales_tax_fields_to_recurring_invoices_table', 1),
(113, '2022_01_05_115423_update_crater_version_600', 1),
(114, '2022_01_06_103536_add_slug_to_companies', 1),
(115, '2022_01_12_132859_update_crater_version_601', 1),
(116, '2022_01_13_123829_update_crater_version_602', 1),
(117, '2022_02_15_113648_update_crater_version_603', 1),
(118, '2022_02_17_081723_update_crater_version_604', 1),
(119, '2022_02_23_130108_update_value_column_to_nullable_on_settings_table', 1),
(120, '2022_03_02_120210_add_overdue_to_invoices_table', 1),
(121, '2022_03_03_060121_crater_version_605', 1),
(122, '2022_03_03_063237_change_over_due_status_to_sent', 1),
(123, '2022_03_04_051438_calculate_base_values_for_invoice_items', 1),
(124, '2022_03_06_070829_update_crater_version_606', 1),
(125, '2024_01_28_114715_add_generated_conversions_to_media_table', 1),
(126, '2024_02_04_005632_update_version_100', 1),
(127, '2024_02_08_181804_taxes_amount_as_signed', 1),
(128, '2024_02_11_075831_update_version_110', 1),
(129, '2024_02_17_211900_add_expires_at_to_personal_access_tokens', 1),
(130, '2024_04_12_162703_add_tax_ids_to_companies', 1),
(131, '2024_04_14_173940_replace_crater_type', 1),
(132, '2024_05_05_065117_create_installers_table', 2),
(133, '2024_05_13_120208_add_installer_id_to_invoices_table', 3),
(134, '2024_05_13_132745_add_installer_id_to_addresses_table', 4),
(139, '2024_05_27_093011_create_schedules_table', 5),
(140, '2019_09_15_000010_create_tenants_table', 6),
(141, '2019_09_15_000020_create_domains_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `customer_sequence_number` mediumint UNSIGNED DEFAULT NULL,
  `payment_number` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci,
  `amount` bigint UNSIGNED NOT NULL,
  `unique_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `payment_method_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` enum('GENERAL','MODULE') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'GENERAL',
  `settings` json DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `use_test_env` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `company_id`, `created_at`, `updated_at`, `driver`, `type`, `settings`, `active`, `use_test_env`) VALUES
(1, 'Cash', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17', NULL, 'GENERAL', NULL, 0, 0),
(2, 'Check', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17', NULL, 'GENERAL', NULL, 0, 0),
(3, 'Credit Card', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17', NULL, 'GENERAL', NULL, 0, 0),
(4, 'Bank Transfer', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17', NULL, 'GENERAL', NULL, 0, 0),
(5, 'Cash', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47', NULL, 'GENERAL', NULL, 0, 0),
(6, 'Check', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47', NULL, 'GENERAL', NULL, 0, 0),
(7, 'Credit Card', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47', NULL, 'GENERAL', NULL, 0, 0),
(8, 'Bank Transfer', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47', NULL, 'GENERAL', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `ability_id` bigint UNSIGNED NOT NULL,
  `entity_id` bigint UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 1, 1, 'roles', 0, 1),
(2, 2, 1, 'roles', 0, 1),
(3, 3, 1, 'roles', 0, 1),
(4, 4, 1, 'roles', 0, 1),
(5, 5, 1, 'roles', 0, 1),
(6, 6, 1, 'roles', 0, 1),
(7, 7, 1, 'roles', 0, 1),
(8, 8, 1, 'roles', 0, 1),
(9, 9, 1, 'roles', 0, 1),
(10, 10, 1, 'roles', 0, 1),
(11, 11, 1, 'roles', 0, 1),
(12, 12, 1, 'roles', 0, 1),
(13, 13, 1, 'roles', 0, 1),
(14, 14, 1, 'roles', 0, 1),
(15, 15, 1, 'roles', 0, 1),
(16, 16, 1, 'roles', 0, 1),
(17, 17, 1, 'roles', 0, 1),
(18, 18, 1, 'roles', 0, 1),
(19, 19, 1, 'roles', 0, 1),
(20, 20, 1, 'roles', 0, 1),
(21, 21, 1, 'roles', 0, 1),
(22, 22, 1, 'roles', 0, 1),
(23, 23, 1, 'roles', 0, 1),
(24, 24, 1, 'roles', 0, 1),
(25, 25, 1, 'roles', 0, 1),
(26, 26, 1, 'roles', 0, 1),
(27, 27, 1, 'roles', 0, 1),
(28, 28, 1, 'roles', 0, 1),
(29, 29, 1, 'roles', 0, 1),
(30, 30, 1, 'roles', 0, 1),
(31, 31, 1, 'roles', 0, 1),
(32, 32, 1, 'roles', 0, 1),
(33, 33, 1, 'roles', 0, 1),
(34, 34, 1, 'roles', 0, 1),
(35, 35, 1, 'roles', 0, 1),
(36, 36, 1, 'roles', 0, 1),
(37, 37, 1, 'roles', 0, 1),
(38, 38, 1, 'roles', 0, 1),
(39, 39, 1, 'roles', 0, 1),
(40, 40, 1, 'roles', 0, 1),
(41, 41, 1, 'roles', 0, 1),
(42, 42, 1, 'roles', 0, 1),
(43, 43, 1, 'roles', 0, 1),
(44, 44, 1, 'roles', 0, 1),
(45, 45, 1, 'roles', 0, 1),
(46, 46, 1, 'roles', 0, 1),
(47, 47, 1, 'roles', 0, 1),
(99, 48, 1, 'roles', 0, 1),
(100, 49, 1, 'roles', 0, 1),
(101, 50, 1, 'roles', 0, 1),
(102, 51, 1, 'roles', 0, 1),
(103, 52, 3, 'roles', 0, 2),
(104, 53, 3, 'roles', 0, 2),
(105, 54, 3, 'roles', 0, 2),
(106, 55, 3, 'roles', 0, 2),
(107, 56, 3, 'roles', 0, 2),
(108, 57, 3, 'roles', 0, 2),
(109, 58, 3, 'roles', 0, 2),
(110, 59, 3, 'roles', 0, 2),
(111, 60, 3, 'roles', 0, 2),
(112, 61, 3, 'roles', 0, 2),
(113, 62, 3, 'roles', 0, 2),
(114, 63, 3, 'roles', 0, 2),
(115, 64, 3, 'roles', 0, 2),
(116, 65, 3, 'roles', 0, 2),
(117, 66, 3, 'roles', 0, 2),
(118, 67, 3, 'roles', 0, 2),
(119, 68, 3, 'roles', 0, 2),
(120, 69, 3, 'roles', 0, 2),
(121, 70, 3, 'roles', 0, 2),
(122, 71, 3, 'roles', 0, 2),
(123, 72, 3, 'roles', 0, 2),
(124, 73, 3, 'roles', 0, 2),
(125, 74, 3, 'roles', 0, 2),
(126, 75, 3, 'roles', 0, 2),
(127, 76, 3, 'roles', 0, 2),
(128, 77, 3, 'roles', 0, 2),
(129, 78, 3, 'roles', 0, 2),
(130, 79, 3, 'roles', 0, 2),
(131, 80, 3, 'roles', 0, 2),
(132, 81, 3, 'roles', 0, 2),
(133, 82, 3, 'roles', 0, 2),
(134, 83, 3, 'roles', 0, 2),
(135, 84, 3, 'roles', 0, 2),
(136, 85, 3, 'roles', 0, 2),
(137, 86, 3, 'roles', 0, 2),
(138, 87, 3, 'roles', 0, 2),
(139, 88, 3, 'roles', 0, 2),
(140, 89, 3, 'roles', 0, 2),
(141, 90, 3, 'roles', 0, 2),
(142, 91, 3, 'roles', 0, 2),
(143, 92, 3, 'roles', 0, 2),
(144, 93, 3, 'roles', 0, 2),
(145, 94, 3, 'roles', 0, 2),
(146, 95, 3, 'roles', 0, 2),
(147, 96, 3, 'roles', 0, 2),
(148, 97, 3, 'roles', 0, 2),
(149, 98, 3, 'roles', 0, 2),
(150, 99, 3, 'roles', 0, 2),
(151, 100, 3, 'roles', 0, 2),
(152, 101, 3, 'roles', 0, 2),
(153, 102, 3, 'roles', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurring_invoices`
--

CREATE TABLE `recurring_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `starts_at` datetime NOT NULL,
  `send_automatically` tinyint(1) NOT NULL DEFAULT '0',
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `status` enum('COMPLETED','ON_HOLD','ACTIVE') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `next_invoice_at` datetime DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `limit_by` enum('NONE','COUNT','DATE') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'NONE',
  `limit_count` int DEFAULT NULL,
  `limit_date` date DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `tax_per_item` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `discount_per_item` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb3_unicode_ci,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `discount_val` bigint UNSIGNED DEFAULT NULL,
  `sub_total` bigint UNSIGNED NOT NULL,
  `total` bigint UNSIGNED NOT NULL,
  `tax` bigint UNSIGNED NOT NULL,
  `template_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `due_amount` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_tax_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sales_tax_address_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` int UNSIGNED DEFAULT NULL,
  `scope` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'Super Admin', NULL, 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(3, 'super admin', 'Super Admin', NULL, 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `color` varchar(25) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `installer_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `title`, `description`, `color`, `start`, `end`, `user_id`, `company_id`, `customer_id`, `installer_id`, `created_at`, `updated_at`) VALUES
(68, 'asdasd', 'asd', '#00d5ff', '2024-05-29 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, '2024-06-10 03:40:47', '2024-06-19 22:20:41'),
(74, 'ccc', 'ccc', '#7c6a7c', '2024-05-31 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, '2024-06-10 07:01:25', '2024-06-17 08:20:16'),
(76, 'qqq', 'qqq', '#dddddd', '2024-05-28 00:00:00', '0000-00-00 00:00:00', 1, 1, 1, 1, '2024-06-17 08:17:36', '2024-06-17 08:20:19'),
(77, 'oooooooo', 'oooooo', '#e53e3e', '2024-05-29 04:20:00', NULL, 1, 1, 2, 6, '2024-06-17 08:20:49', '2024-06-23 00:59:22'),
(78, 'fffff2222', 'fffffff2222', '#0040ff', '2024-05-28 00:00:00', NULL, 1, 1, 2, 6, '2024-06-22 06:07:00', '2024-06-22 06:45:34'),
(79, 'zzzzz', 'zzzz', '#ff000d', '2024-05-31 10:00:00', '0000-00-00 00:00:00', 1, 1, 2, 7, '2024-06-22 06:16:41', '2024-06-23 23:12:13'),
(80, 'sssss', 'sssssssss', '#9e9e9e', '2024-05-27 08:00:00', NULL, 1, 1, 5, 7, '2024-06-22 07:23:24', '2024-06-22 07:53:28'),
(81, 'GGGGG', 'ASJKD HAJKDHASJKDASDASD ASDHAS', '#1ffff0', '2024-06-04 10:00:00', '2024-06-05 11:30:00', 1, 1, 5, 1, '2024-06-23 01:20:06', '2024-06-23 01:20:47'),
(82, 'QWEQWE', 'QWEQW', '#ff2ee3', '2024-06-05 21:21:00', '0000-00-00 00:00:00', 1, 1, 1, 2, '2024-06-23 01:21:18', '2024-06-23 01:21:37'),
(83, 'asdsad2', 'asdasd', '#b861ff', '2024-07-10 11:30:00', NULL, 1, 1, 1, 1, '2024-07-09 06:03:42', '2024-07-09 08:00:57'),
(84, 'opipoipo', 'kjkljkljkljkl', '#fd6868', '2024-07-02 08:00:00', '2024-07-03 09:00:00', 1, 1, 1, 2, '2024-07-09 08:14:22', '2024-07-10 00:58:40'),
(85, 'asdasdsa', 'asdas', '#f462be', '2024-07-05 00:00:00', NULL, 1, 1, 2, 2, '2024-07-11 03:00:15', '2024-07-11 03:00:15'),
(86, 'qweqwe', 'qwewq', '#a3dbc6', '2024-07-05 00:00:00', '2024-07-06 22:24:00', 1, 1, 2, 2, '2024-07-26 02:24:11', '2024-07-26 02:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1, 'version', '1.1.0', '2024-05-04 07:12:10', '2024-05-04 07:12:16'),
(2, 'profile_complete', 'COMPLETED', '2024-05-04 07:12:18', '2024-05-04 07:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int UNSIGNED NOT NULL,
  `tax_type_id` int UNSIGNED NOT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `estimate_id` int UNSIGNED DEFAULT NULL,
  `invoice_item_id` int UNSIGNED DEFAULT NULL,
  `estimate_item_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` bigint NOT NULL,
  `percent` decimal(5,2) NOT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exchange_rate` decimal(19,6) DEFAULT NULL,
  `base_amount` bigint UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `recurring_invoice_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_type_id`, `invoice_id`, `estimate_id`, `invoice_item_id`, `estimate_item_id`, `item_id`, `company_id`, `name`, `amount`, `percent`, `compound_tax`, `created_at`, `updated_at`, `exchange_rate`, `base_amount`, `currency_id`, `recurring_invoice_id`) VALUES
(1, 1, NULL, 1, NULL, NULL, NULL, 1, 'hst', 12870, 13.00, 0, '2024-05-05 06:02:14', '2024-05-05 06:02:14', 1.000000, 12870, 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `percent` decimal(5,2) NOT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `collective_tax` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb3_unicode_ci,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('GENERAL','MODULE') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'GENERAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tax_types`
--

INSERT INTO `tax_types` (`id`, `name`, `percent`, `compound_tax`, `collective_tax`, `description`, `company_id`, `created_at`, `updated_at`, `type`) VALUES
(1, 'hst', 13.00, 0, 0, 'Ontario HST', 1, '2024-05-05 06:01:54', '2024-05-05 06:01:54', 'GENERAL');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `created_at`, `updated_at`, `data`) VALUES
('admin', '2024-07-11 06:25:15', '2024-07-11 06:25:15', '{\"plan\": \"free\", \"created_at\": \"2024-07-11 06:25:15\", \"updated_at\": \"2024-07-11 06:25:15\", \"tenancy_db_name\": \"ERP\"}'),
('antenor', '2024-07-11 02:56:19', '2024-07-11 02:56:19', '{\"plan\": \"free\", \"created_at\": \"2024-07-11 02:56:19\", \"updated_at\": \"2024-07-11 02:56:19\", \"tenancy_db_name\": \"tenantantenor\"}'),
('blabla', '2024-07-26 06:33:03', '2024-07-26 06:33:03', '{\"plan\": \"free\", \"created_at\": \"2024-07-26 06:33:03\", \"updated_at\": \"2024-07-26 06:33:03\", \"tenancy_db_name\": \"tenantblabla\"}'),
('carwrap', '2024-07-27 01:47:09', '2024-07-27 01:47:09', '{\"plan\": \"free\", \"created_at\": \"2024-07-27 01:47:09\", \"updated_at\": \"2024-07-27 01:47:09\", \"tenancy_db_name\": \"tenantcarwrap\"}'),
('danny', '2024-07-14 03:33:18', '2024-07-14 03:33:18', '{\"plan\": \"free\", \"created_at\": \"2024-07-14 03:33:18\", \"updated_at\": \"2024-07-14 03:33:18\", \"tenancy_db_name\": \"tenantdanny\"}'),
('edson', '2024-07-24 05:44:16', '2024-07-24 05:44:16', '{\"plan\": \"free\", \"created_at\": \"2024-07-24 05:44:16\", \"updated_at\": \"2024-07-24 05:44:16\", \"tenancy_db_name\": \"tenantedson\"}'),
('isadora', '2024-09-23 17:53:01', '2024-09-23 17:53:01', '{\"plan\": \"free\", \"created_at\": \"2024-09-23 17:53:01\", \"updated_at\": \"2024-09-23 17:53:01\", \"tenancy_db_name\": \"tenantisadora\"}'),
('kkk', '2024-07-26 19:45:14', '2024-07-26 19:45:14', '{\"plan\": \"free\", \"created_at\": \"2024-07-26 19:45:14\", \"updated_at\": \"2024-07-26 19:45:14\", \"tenancy_db_name\": \"tenantkkk\"}'),
('maria', '2024-07-11 06:25:15', '2024-07-11 06:25:15', '{\"plan\": \"free\", \"created_at\": \"2024-07-11 06:25:15\", \"updated_at\": \"2024-07-11 06:25:15\", \"tenancy_db_name\": \"tenantmaria\"}'),
('mmm', '2024-09-23 17:34:37', '2024-09-23 17:34:37', '{\"plan\": \"free\", \"created_at\": \"2024-09-23 17:34:37\", \"updated_at\": \"2024-09-23 17:34:37\", \"tenancy_db_name\": \"tenantmmm\"}'),
('pedro', '2024-07-23 22:36:07', '2024-07-23 22:36:07', '{\"plan\": \"free\", \"created_at\": \"2024-07-23 22:36:07\", \"updated_at\": \"2024-07-23 22:36:07\", \"tenancy_db_name\": \"tenantpedro\"}'),
('popo', '2024-07-26 06:02:20', '2024-07-26 06:02:20', '{\"plan\": \"free\", \"created_at\": \"2024-07-26 06:02:20\", \"updated_at\": \"2024-07-26 06:02:20\", \"tenancy_db_name\": \"tenantpopo\"}'),
('qqq', '2024-07-26 19:46:43', '2024-07-26 19:46:43', '{\"plan\": \"free\", \"created_at\": \"2024-07-26 19:46:43\", \"updated_at\": \"2024-07-26 19:46:43\", \"tenancy_db_name\": \"tenantqqq\"}'),
('test01', '2024-09-23 21:22:49', '2024-09-23 21:22:49', '{\"plan\": \"free\", \"created_at\": \"2024-09-23 21:22:49\", \"updated_at\": \"2024-09-23 21:22:49\", \"tenancy_db_name\": \"tenanttest01\"}');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `unique_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `transaction_date` datetime NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `invoice_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'box', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(2, 'cm', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(3, 'dz', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(4, 'ft', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(5, 'g', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(6, 'in', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(7, 'kg', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(8, 'km', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(9, 'lb', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(10, 'mg', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(11, 'pc', 1, '2024-05-04 07:12:17', '2024-05-04 07:12:17'),
(12, 'box', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(13, 'cm', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(14, 'dz', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(15, 'ft', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(16, 'g', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(17, 'in', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(18, 'kg', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(19, 'km', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(20, 'lb', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(21, 'mg', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47'),
(22, 'pc', 2, '2024-06-08 05:02:47', '2024-06-08 05:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `enable_portal` tinyint(1) DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `creator_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `remember_token`, `facebook_id`, `google_id`, `github_id`, `contact_name`, `company_name`, `website`, `enable_portal`, `currency_id`, `created_at`, `updated_at`, `creator_id`) VALUES
(1, 'Antenor Admin', 'antenorq@gmail.com', NULL, '$2y$10$pBm8rztd3ifSHIP5G2IHv.0ulZN6bP3WzDsNy9Yb.hMnUs7zbt43G', 'Super Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-04 07:12:17', '2024-05-05 06:10:01', NULL),
(2, 'User Test 1', 'test1@gmail.com', '6478047199', '$2y$10$humBgwNZ4vhPw92B9cUmsuGC4AqRzyC4xpopPJNGSQreQWv4td6om', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-05 06:09:06', '2024-05-05 06:09:06', 1),
(3, 'user company 2', 'usercompany2@asdads.com', NULL, '$2y$10$3jBZamxlkizpRjlYyqvByue5rExZs7f8Ay1iaOBYu4lsT63WWzdHS', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-08 05:07:34', '2024-06-08 05:07:34', 1),
(4, 'user 3', 'user3@asdasdas.com', NULL, '$2y$10$.WkvgCzwvj72S06n59DL/.48oNjreIJARj9xwq9b4swVC6ebrzaWe', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-11 08:15:29', '2024-07-11 08:15:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_company`
--

CREATE TABLE `user_company` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_company`
--

INSERT INTO `user_company` (`id`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 1, 2, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'language', 'en', 1, '2024-05-04 07:21:29', '2024-05-04 07:21:29'),
(2, 'language', 'en', 2, '2024-05-05 06:09:06', '2024-05-05 06:09:06'),
(3, 'language', 'en', 3, '2024-06-08 05:07:34', '2024-06-08 05:07:34'),
(4, 'language', 'en', 4, '2024-07-11 08:15:29', '2024-07-11 08:15:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_company_id_foreign` (`company_id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_installer_id_foreign` (`installer_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_settings_company_id_foreign` (`company_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_currency_id_foreign` (`currency_id`),
  ADD KEY `customers_company_id_foreign` (`company_id`),
  ADD KEY `customers_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_company_id_foreign` (`company_id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`),
  ADD KEY `custom_field_values_company_id_foreign` (`company_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_logs_token_unique` (`token`);

--
-- Indexes for table `estimates`
--
ALTER TABLE `estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimates_company_id_foreign` (`company_id`),
  ADD KEY `estimates_creator_id_foreign` (`creator_id`),
  ADD KEY `estimates_customer_id_foreign` (`customer_id`),
  ADD KEY `estimates_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estimate_items_item_id_foreign` (`item_id`),
  ADD KEY `estimate_items_estimate_id_foreign` (`estimate_id`),
  ADD KEY `estimate_items_company_id_foreign` (`company_id`);

--
-- Indexes for table `exchange_rate_logs`
--
ALTER TABLE `exchange_rate_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exchange_rate_logs_company_id_foreign` (`company_id`),
  ADD KEY `exchange_rate_logs_base_currency_id_foreign` (`base_currency_id`),
  ADD KEY `exchange_rate_logs_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `exchange_rate_providers`
--
ALTER TABLE `exchange_rate_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exchange_rate_providers_company_id_foreign` (`company_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_company_id_foreign` (`company_id`),
  ADD KEY `expenses_creator_id_foreign` (`creator_id`),
  ADD KEY `expenses_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `file_disks`
--
ALTER TABLE `file_disks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installers`
--
ALTER TABLE `installers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `installers_email_unique` (`email`),
  ADD KEY `installers_currency_id_foreign` (`currency_id`),
  ADD KEY `installers_company_id_foreign` (`company_id`),
  ADD KEY `installers_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_company_id_foreign` (`company_id`),
  ADD KEY `invoices_creator_id_foreign` (`creator_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`),
  ADD KEY `invoices_recurring_invoice_id_foreign` (`recurring_invoice_id`),
  ADD KEY `invoices_currency_id_foreign` (`currency_id`),
  ADD KEY `invoices_installer_id_foreign` (`installer_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_item_id_foreign` (`item_id`),
  ADD KEY `invoice_items_company_id_foreign` (`company_id`),
  ADD KEY `invoice_items_recurring_invoice_id_foreign` (`recurring_invoice_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_company_id_foreign` (`company_id`),
  ADD KEY `items_unit_id_foreign` (`unit_id`),
  ADD KEY `items_creator_id_foreign` (`creator_id`),
  ADD KEY `items_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_company_id_foreign` (`company_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_invoice_id_foreign` (`invoice_id`),
  ADD KEY `payments_company_id_foreign` (`company_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_creator_id_foreign` (`creator_id`),
  ADD KEY `payments_customer_id_foreign` (`customer_id`),
  ADD KEY `payments_currency_id_foreign` (`currency_id`),
  ADD KEY `payments_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_company_id_foreign` (`company_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recurring_invoices_customer_id_foreign` (`customer_id`),
  ADD KEY `recurring_invoices_company_id_foreign` (`company_id`),
  ADD KEY `recurring_invoices_creator_id_foreign` (`creator_id`),
  ADD KEY `recurring_invoices_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_user_id_foreign` (`user_id`),
  ADD KEY `schedules_company_id_foreign` (`company_id`),
  ADD KEY `schedules_customer_id_foreign` (`customer_id`),
  ADD KEY `schedules_installer_id_foreign` (`installer_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_tax_type_id_foreign` (`tax_type_id`),
  ADD KEY `taxes_invoice_id_foreign` (`invoice_id`),
  ADD KEY `taxes_estimate_id_foreign` (`estimate_id`),
  ADD KEY `taxes_invoice_item_id_foreign` (`invoice_item_id`),
  ADD KEY `taxes_estimate_item_id_foreign` (`estimate_item_id`),
  ADD KEY `taxes_item_id_foreign` (`item_id`),
  ADD KEY `taxes_company_id_foreign` (`company_id`),
  ADD KEY `taxes_currency_id_foreign` (`currency_id`),
  ADD KEY `taxes_recurring_invoice_id_foreign` (`recurring_invoice_id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_company_id_foreign` (`company_id`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_currency_id_foreign` (`currency_id`),
  ADD KEY `users_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `user_company`
--
ALTER TABLE `user_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_company_user_id_foreign` (`user_id`),
  ADD KEY `user_company_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_settings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_settings`
--
ALTER TABLE `company_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `estimates`
--
ALTER TABLE `estimates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `estimate_items`
--
ALTER TABLE `estimate_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exchange_rate_logs`
--
ALTER TABLE `exchange_rate_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_rate_providers`
--
ALTER TABLE `exchange_rate_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_disks`
--
ALTER TABLE `file_disks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `installers`
--
ALTER TABLE `installers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_company`
--
ALTER TABLE `user_company`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `addresses_installer_id_foreign` FOREIGN KEY (`installer_id`) REFERENCES `installers` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `company_settings`
--
ALTER TABLE `company_settings`
  ADD CONSTRAINT `company_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `customers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD CONSTRAINT `custom_fields_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`);

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `estimates`
--
ALTER TABLE `estimates`
  ADD CONSTRAINT `estimates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimates_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `estimates_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `estimate_items`
--
ALTER TABLE `estimate_items`
  ADD CONSTRAINT `estimate_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_items_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exchange_rate_logs`
--
ALTER TABLE `exchange_rate_logs`
  ADD CONSTRAINT `exchange_rate_logs_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `exchange_rate_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `exchange_rate_logs_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `exchange_rate_providers`
--
ALTER TABLE `exchange_rate_providers`
  ADD CONSTRAINT `exchange_rate_providers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `installers`
--
ALTER TABLE `installers`
  ADD CONSTRAINT `installers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `installers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `installers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `invoices_installer_id_foreign` FOREIGN KEY (`installer_id`) REFERENCES `installers` (`id`),
  ADD CONSTRAINT `invoices_recurring_invoice_id_foreign` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`);

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_recurring_invoice_id_foreign` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recurring_invoices`
--
ALTER TABLE `recurring_invoices`
  ADD CONSTRAINT `recurring_invoices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `recurring_invoices_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `recurring_invoices_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `recurring_invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `schedules_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `schedules_installer_id_foreign` FOREIGN KEY (`installer_id`) REFERENCES `installers` (`id`),
  ADD CONSTRAINT `schedules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `taxes_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `taxes_estimate_id_foreign` FOREIGN KEY (`estimate_id`) REFERENCES `estimates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_estimate_item_id_foreign` FOREIGN KEY (`estimate_item_id`) REFERENCES `estimate_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_invoice_item_id_foreign` FOREIGN KEY (`invoice_item_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `taxes_recurring_invoice_id_foreign` FOREIGN KEY (`recurring_invoice_id`) REFERENCES `recurring_invoices` (`id`),
  ADD CONSTRAINT `taxes_tax_type_id_foreign` FOREIGN KEY (`tax_type_id`) REFERENCES `tax_types` (`id`);

--
-- Constraints for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD CONSTRAINT `tax_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_company`
--
ALTER TABLE `user_company`
  ADD CONSTRAINT `user_company_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_company_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
