-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2023 a las 18:00:39
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbcasaberrio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 0, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1),
(2, 'Casa Berrio', 1, 'Administración Casa Berrio', 1, 'admin-interface/logo/LogoCasaBerrio-removebg-preview_1_J3J2E8h.png', 1, '#2B6995', '#FFFFFF', '#FFFFFF', '#FFFFFF', '#F7EC14', '#398CC6', '#FFFFFF', '#FFFFFF', '#49B4FF', 1, '#000000', '#409CDD', '#398CC6', '#49B4FF', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, 'admin-interface/favicon/LogoCasaBerrio_1.png', '0.3', 'Casa Berrio', 1, '#F7EC14', 1, 1, 1, 'code', 1, 0, 0, '#BBB983', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#2FB8B4', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` int(10) UNSIGNED NOT NULL CHECK (`phone` >= 0),
  `rental_date_and_time` date NOT NULL,
  `return_date_and_time_f` date NOT NULL,
  `description` longtext NOT NULL,
  `drink` varchar(200) NOT NULL,
  `catering` varchar(200) NOT NULL,
  `equipment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `full_name`, `phone`, `rental_date_and_time`, `return_date_and_time_f`, `description`, `drink`, `catering`, `equipment`) VALUES
(1, 'Eliana Usma', 3213317074, '2023-09-24', '2023-09-24', 'lalal', 'Gaseosa Postobón-Coca-Cola- pepe', 'pepe', 'pep'),
(4, 'Lady Midred Bejarano Leguizamon', 3214668437, '2023-09-30', '2023-10-01', 'que las cosas lleguen puntuales', '[\'Gaseosa Postobon y Coca cola\', \'Cocteles\']', '[\'Sillas\', \'Mesas\', \'Manteles\', \'Vasos\', \'amaPlatosrillo\']', '[\'Luces\', \'Sonido\', \'Lanza confetti\']'),
(5, 'Kevin Mondragon', 3202695131, '2023-09-25', '2023-09-30', 'me', '[\'Gaseosa Postobon y Coca cola\', \'Whiskey\', \'Ron\']', '[\'Sillas\', \'Mesas\', \'Manteles\']', '[\'Luces\', \'Camara de humo\', \'Lanza confetti\']');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add Inventario', 8, 'add_inventory'),
(30, 'Can change Inventario', 8, 'change_inventory'),
(31, 'Can delete Inventario', 8, 'delete_inventory'),
(32, 'Can view Inventario', 8, 'view_inventory'),
(33, 'Can add Como prefire ser contactado', 9, 'add_preferencecontact'),
(34, 'Can change Como prefire ser contactado', 9, 'change_preferencecontact'),
(35, 'Can delete Como prefire ser contactado', 9, 'delete_preferencecontact'),
(36, 'Can view Como prefire ser contactado', 9, 'view_preferencecontact'),
(37, 'Can add Alquiler', 10, 'add_rent'),
(38, 'Can change Alquiler', 10, 'change_rent'),
(39, 'Can delete Alquiler', 10, 'delete_rent'),
(40, 'Can view Alquiler', 10, 'view_rent'),
(41, 'Can add Reserva', 11, 'add_reserva'),
(42, 'Can change Reserva', 11, 'change_reserva'),
(43, 'Can delete Reserva', 11, 'delete_reserva'),
(44, 'Can view Reserva', 11, 'view_reserva'),
(45, 'Can add Seleccion de banco', 12, 'add_selectbank'),
(46, 'Can change Seleccion de banco', 12, 'change_selectbank'),
(47, 'Can delete Seleccion de banco', 12, 'delete_selectbank'),
(48, 'Can view Seleccion de banco', 12, 'view_selectbank'),
(49, 'Can add Estado pqrsd', 13, 'add_statepqrsd'),
(50, 'Can change Estado pqrsd', 13, 'change_statepqrsd'),
(51, 'Can delete Estado pqrsd', 13, 'delete_statepqrsd'),
(52, 'Can view Estado pqrsd', 13, 'view_statepqrsd'),
(53, 'Can add Tarjeta de credito y debito', 14, 'add_tarjetadecd'),
(54, 'Can change Tarjeta de credito y debito', 14, 'change_tarjetadecd'),
(55, 'Can delete Tarjeta de credito y debito', 14, 'delete_tarjetadecd'),
(56, 'Can view Tarjeta de credito y debito', 14, 'view_tarjetadecd'),
(57, 'Can add Tipo de identificacion', 15, 'add_typeid'),
(58, 'Can change Tipo de identificacion', 15, 'change_typeid'),
(59, 'Can delete Tipo de identificacion', 15, 'delete_typeid'),
(60, 'Can view Tipo de identificacion', 15, 'view_typeid'),
(61, 'Can add Tipo de insumo', 16, 'add_typeofinput'),
(62, 'Can change Tipo de insumo', 16, 'change_typeofinput'),
(63, 'Can delete Tipo de insumo', 16, 'delete_typeofinput'),
(64, 'Can view Tipo de insumo', 16, 'view_typeofinput'),
(65, 'Can add Tipo de persona', 17, 'add_typeperson'),
(66, 'Can change Tipo de persona', 17, 'change_typeperson'),
(67, 'Can delete Tipo de persona', 17, 'delete_typeperson'),
(68, 'Can view Tipo de persona', 17, 'view_typeperson'),
(69, 'Can add Tipo pqrsd', 18, 'add_typepqrsd'),
(70, 'Can change Tipo pqrsd', 18, 'change_typepqrsd'),
(71, 'Can delete Tipo pqrsd', 18, 'delete_typepqrsd'),
(72, 'Can view Tipo pqrsd', 18, 'view_typepqrsd'),
(73, 'Can add Proveedor', 19, 'add_supplier'),
(74, 'Can change Proveedor', 19, 'change_supplier'),
(75, 'Can delete Proveedor', 19, 'delete_supplier'),
(76, 'Can view Proveedor', 19, 'view_supplier'),
(77, 'Can add Estado de producto ', 20, 'add_stateproduct'),
(78, 'Can change Estado de producto ', 20, 'change_stateproduct'),
(79, 'Can delete Estado de producto ', 20, 'delete_stateproduct'),
(80, 'Can view Estado de producto ', 20, 'view_stateproduct'),
(81, 'Can add PSE Cuenta de ahorro y corriente', 21, 'add_pse'),
(82, 'Can change PSE Cuenta de ahorro y corriente', 21, 'change_pse'),
(83, 'Can delete PSE Cuenta de ahorro y corriente', 21, 'delete_pse'),
(84, 'Can view PSE Cuenta de ahorro y corriente', 21, 'view_pse'),
(85, 'Can add Fidelizacion', 22, 'add_loyalty'),
(86, 'Can change Fidelizacion', 22, 'change_loyalty'),
(87, 'Can delete Fidelizacion', 22, 'delete_loyalty'),
(88, 'Can view Fidelizacion', 22, 'view_loyalty');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$Ap9JBuYMCA67rghsy6kqCb$1o+Uvk4J5yltZ9BRBGBzBjnqXNx0bihCZrxem7NapYI=', '2023-09-25 04:10:14.250560', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-09-24 21:51:45.155501'),
(2, 'pbkdf2_sha256$600000$grnzlvjspq8rDv8wCrC5Ox$3Ek7tvbUdcLZm2/3G0O8cyvc06OWCurUvOdERTKtnqQ=', '2023-09-25 02:43:28.150364', 0, 'lady87', 'Lady Midred', 'Bejarano Leguizamon', 'pekis8731@gmail.com', 0, 1, '2023-09-25 01:29:14.473819'),
(3, 'pbkdf2_sha256$600000$G2NYiOKSdvgQWC0QI0vmT8$8zlHf824cjVMTt7lE5aEc5NtNgy49AilZih7gPonGKo=', '2023-09-25 04:07:44.871515', 0, 'eliana34', 'Lady Midred', 'usma', 'elianaosorio349@gmail.com', 0, 1, '2023-09-25 04:07:43.845458');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `como prefire ser contactado`
--

CREATE TABLE `como prefire ser contactado` (
  `id` bigint(20) NOT NULL,
  `preference_contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `como prefire ser contactado`
--

INSERT INTO `como prefire ser contactado` (`id`, `preference_contact`) VALUES
(1, 'Numero De Teléfono'),
(2, 'Correo Electrónico'),
(3, 'Correo Postal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-24 21:56:32.143941', '1', 'Petición', 1, '[{\"added\": {}}]', 18, 1),
(2, '2023-09-24 21:56:49.718149', '1', 'Numero De Teléfono', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-09-24 21:56:51.225549', '1', 'Eliana Usma', 1, '[{\"added\": {}}]', 22, 1),
(4, '2023-09-24 21:59:58.315224', '3', 'Pendiente', 1, '[{\"added\": {}}]', 13, 1),
(5, '2023-09-24 22:03:30.772467', '4', 'Resuelto', 1, '[{\"added\": {}}]', 13, 1),
(6, '2023-09-24 22:12:00.360905', '2', 'Kevin Mondragón', 1, '[{\"added\": {}}]', 22, 1),
(7, '2023-09-24 22:17:05.496936', '5', 'Cerrado', 1, '[{\"added\": {}}]', 13, 1),
(8, '2023-09-24 22:21:06.815931', '6', 'En proceso', 1, '[{\"added\": {}}]', 13, 1),
(9, '2023-09-24 22:21:24.974488', '3', 'Pendiente', 3, '', 13, 1),
(10, '2023-09-24 22:21:24.977376', '4', 'Resuelto', 3, '', 13, 1),
(11, '2023-09-24 22:21:24.979439', '5', 'Cerrado', 3, '', 13, 1),
(12, '2023-09-24 22:21:24.982628', '6', 'En proceso', 3, '', 13, 1),
(13, '2023-09-24 22:21:37.430517', '7', 'Pendiente', 1, '[{\"added\": {}}]', 13, 1),
(14, '2023-09-24 22:31:42.372006', '11', 'En proceso', 1, '[{\"added\": {}}]', 13, 1),
(15, '2023-09-24 22:38:18.380451', '1', 'Eliana Usma', 1, '[{\"added\": {}}]', 10, 1),
(16, '2023-09-24 22:38:28.488700', '2', 'Correo Electrónico', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-09-24 22:38:34.100246', '3', 'Correo Postal', 1, '[{\"added\": {}}]', 9, 1),
(18, '2023-09-24 22:44:57.066677', '1', 'Eliana Usma', 2, '[{\"changed\": {\"fields\": [\"Drink\"]}}]', 10, 1),
(19, '2023-09-24 22:45:56.317444', '1', 'Bebidas', 1, '[{\"added\": {}}]', 16, 1),
(20, '2023-09-24 22:46:35.200921', '1', 'Cocacola', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-09-24 22:46:42.004237', '1', 'Activo ', 1, '[{\"added\": {}}]', 20, 1),
(22, '2023-09-24 22:47:47.108366', '1', 'cocacola', 1, '[{\"added\": {}}]', 19, 1),
(23, '2023-09-24 23:11:44.353454', '2', '2023-09-24 18:09:56-05:00', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-09-24 23:12:13.959320', '1', 'CC-Cedula De Ciudadanía', 1, '[{\"added\": {}}]', 15, 1),
(25, '2023-09-24 23:12:19.918574', '2', 'PPT- Pasaporte', 1, '[{\"added\": {}}]', 15, 1),
(26, '2023-09-24 23:12:23.385239', '3', 'CE-Cedula De Extranjería', 1, '[{\"added\": {}}]', 15, 1),
(27, '2023-09-24 23:12:36.177066', '2', 'Catering', 1, '[{\"added\": {}}]', 16, 1),
(28, '2023-09-24 23:12:38.624039', '3', 'Equipos', 1, '[{\"added\": {}}]', 16, 1),
(29, '2023-09-24 23:12:49.386135', '1', 'Persona Natural', 1, '[{\"added\": {}}]', 17, 1),
(30, '2023-09-24 23:12:52.219881', '2', 'Persona Jurídica', 1, '[{\"added\": {}}]', 17, 1),
(31, '2023-09-24 23:13:01.792394', '2', 'Queja', 1, '[{\"added\": {}}]', 18, 1),
(32, '2023-09-24 23:13:05.532069', '3', 'Reclamo', 1, '[{\"added\": {}}]', 18, 1),
(33, '2023-09-24 23:13:07.968962', '4', 'Sugerencias', 1, '[{\"added\": {}}]', 18, 1),
(34, '2023-09-24 23:13:10.570544', '5', 'Denuncias', 1, '[{\"added\": {}}]', 18, 1),
(35, '2023-09-25 00:01:16.048052', '2', 'Eliana Usma', 1, '[{\"added\": {}}]', 14, 1),
(36, '2023-09-25 00:01:20.505729', '2', 'Eliana Usma', 2, '[{\"changed\": {\"fields\": [\"Numero de Tarjeta\"]}}]', 14, 1),
(37, '2023-09-25 00:01:26.384835', '1', 'Eliana Usma', 2, '[{\"changed\": {\"fields\": [\"Numero de Tarjeta\"]}}]', 14, 1),
(38, '2023-09-25 00:03:04.621809', '1', 'Eliana Usma', 2, '[{\"changed\": {\"fields\": [\"Numero de Tarjeta\"]}}]', 14, 1),
(39, '2023-09-25 00:03:14.321208', '1', 'Eliana Usma', 2, '[]', 14, 1),
(40, '2023-09-25 00:03:25.509213', '1', 'Eliana Usma', 2, '[]', 14, 1),
(41, '2023-09-25 02:05:13.990401', '1', 'Nequi', 1, '[{\"added\": {}}]', 12, 1),
(42, '2023-09-25 02:05:16.857266', '2', 'Daviplata', 1, '[{\"added\": {}}]', 12, 1),
(43, '2023-09-25 02:05:19.489778', '3', 'Bancolombia', 1, '[{\"added\": {}}]', 12, 1),
(44, '2023-09-25 02:05:22.680314', '4', 'Banco De Bogotá', 1, '[{\"added\": {}}]', 12, 1),
(45, '2023-09-25 02:05:25.757253', '5', 'Davivienda', 1, '[{\"added\": {}}]', 12, 1),
(46, '2023-09-25 03:42:06.700322', '12', 'En proceso', 1, '[{\"added\": {}}]', 13, 1),
(47, '2023-09-25 04:14:31.877704', '3', 'Eliana Usma O', 2, '[{\"changed\": {\"fields\": [\"Nombres Completos\", \"Numero Celular\", \"Descripcion\"]}}]', 10, 1),
(48, '2023-09-25 04:14:43.511932', '2', 'Eliana Usma', 3, '', 10, 1),
(49, '2023-09-25 04:14:43.523912', '3', 'Eliana Usma O', 3, '', 10, 1),
(50, '2023-09-25 04:15:18.692207', '13', 'Resuelto', 1, '[{\"added\": {}}]', 13, 1),
(51, '2023-09-25 04:15:49.656240', '1', 'cocacola', 3, '', 19, 1),
(52, '2023-09-25 04:16:11.467396', '2', 'cocacola', 1, '[{\"added\": {}}]', 19, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'core', 'inventory'),
(22, 'core', 'loyalty'),
(9, 'core', 'preferencecontact'),
(21, 'core', 'pse'),
(10, 'core', 'rent'),
(11, 'core', 'reserva'),
(12, 'core', 'selectbank'),
(13, 'core', 'statepqrsd'),
(20, 'core', 'stateproduct'),
(19, 'core', 'supplier'),
(14, 'core', 'tarjetadecd'),
(15, 'core', 'typeid'),
(16, 'core', 'typeofinput'),
(17, 'core', 'typeperson'),
(18, 'core', 'typepqrsd'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-24 21:50:37.705593'),
(2, 'auth', '0001_initial', '2023-09-24 21:50:37.990204'),
(3, 'admin', '0001_initial', '2023-09-24 21:50:38.075506'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-24 21:50:38.083212'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-24 21:50:38.090920'),
(6, 'admin_interface', '0001_initial', '2023-09-24 21:50:38.107308'),
(7, 'admin_interface', '0002_add_related_modal', '2023-09-24 21:50:38.158172'),
(8, 'admin_interface', '0003_add_logo_color', '2023-09-24 21:50:38.172039'),
(9, 'admin_interface', '0004_rename_title_color', '2023-09-24 21:50:38.181115'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-09-24 21:50:38.195997'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-09-24 21:50:38.261547'),
(12, 'admin_interface', '0007_add_favicon', '2023-09-24 21:50:38.274513'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-09-24 21:50:38.296530'),
(14, 'admin_interface', '0009_add_enviroment', '2023-09-24 21:50:38.320269'),
(15, 'admin_interface', '0010_add_localization', '2023-09-24 21:50:38.336538'),
(16, 'admin_interface', '0011_add_environment_options', '2023-09-24 21:50:38.380541'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-09-24 21:50:38.390136'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-09-24 21:50:38.403103'),
(19, 'admin_interface', '0014_name_unique', '2023-09-24 21:50:38.411937'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-09-24 21:50:38.422412'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-09-24 21:50:38.431177'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-09-24 21:50:38.436222'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-09-24 21:50:38.445699'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-09-24 21:50:38.465254'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-09-24 21:50:38.495227'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-09-24 21:50:38.503028'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-09-24 21:50:38.521824'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-09-24 21:50:38.533441'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-09-24 21:50:38.540235'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-09-24 21:50:38.552887'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-09-24 21:50:38.562452'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-09-24 21:50:38.573887'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-09-24 21:50:38.594318'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-09-24 21:50:38.607415'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-09-24 21:50:38.647118'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-09-24 21:50:38.681526'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-09-24 21:50:38.709871'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-09-24 21:50:38.723722'),
(39, 'auth', '0004_alter_user_username_opts', '2023-09-24 21:50:38.733052'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-09-24 21:50:38.754712'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-09-24 21:50:38.756956'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-09-24 21:50:38.762486'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-09-24 21:50:38.773973'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-09-24 21:50:38.785275'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-09-24 21:50:38.797101'),
(46, 'auth', '0011_update_proxy_permissions', '2023-09-24 21:50:38.806996'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-09-24 21:50:38.818917'),
(48, 'core', '0001_initial', '2023-09-24 21:50:39.236409'),
(49, 'sessions', '0001_initial', '2023-09-24 21:50:39.258833'),
(50, 'core', '0002_alter_statepqrsd_options_and_more', '2023-09-24 21:59:41.446504'),
(51, 'core', '0003_statepqrsd_loyalty', '2023-09-24 22:10:17.724587'),
(52, 'core', '0004_alter_statepqrsd_loyalty', '2023-09-24 22:16:27.726350'),
(53, 'core', '0005_remove_statepqrsd_loyalty', '2023-09-24 22:16:27.794667'),
(54, 'core', '0006_statepqrsd_loyalty', '2023-09-24 22:19:40.376984'),
(55, 'core', '0007_alter_stateproduct_options_and_more', '2023-09-24 22:45:24.141315'),
(56, 'core', '0008_remove_reserva_guest_document_and_more', '2023-09-24 23:06:50.116789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gmf8issq9f75mfgvtobp4s0w1oqfrqvm', '.eJxVjE0OwiAYBe_C2hAoIMWl-56h-f6UqoGktCvj3W2TLnT7Zua91Qjrkse1yTxOrC7KqtPvhkBPKTvgB5R71VTLMk-od0UftOmhsryuh_t3kKHlrQaTPKHpbpE9cUCPxOLtORrqGUjYiY8OE4rrKZkgAdFZTnbzkuuM-nwBD4444A:1qkcvG:UPRjgXHYVw5utTcpbFMGVgOme1WY1MiZrvW8vlju9kk', '2023-10-09 04:10:14.259928');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pqrsd`
--

CREATE TABLE `estado_pqrsd` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `loyalty_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_pqrsd`
--

INSERT INTO `estado_pqrsd` (`id`, `estado`, `loyalty_id`) VALUES
(7, 'Pendiente', 1),
(11, 'En proceso', 1),
(12, 'En proceso', 3),
(13, 'Resuelto', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_producto`
--

CREATE TABLE `estado_producto` (
  `id` bigint(20) NOT NULL,
  `inventory_id` bigint(20) DEFAULT NULL,
  `estadoP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_producto`
--

INSERT INTO `estado_producto` (`id`, `inventory_id`, `estadoP`) VALUES
(1, 1, 'Activo ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fidelizacion`
--

CREATE TABLE `fidelizacion` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `incident_date` date NOT NULL,
  `detailed_description` longtext NOT NULL,
  `product_or_services_name` varchar(50) NOT NULL,
  `filing_number` int(10) UNSIGNED NOT NULL CHECK (`filing_number` >= 0),
  `preference_contact_id` bigint(20) NOT NULL,
  `type_pqrsd_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fidelizacion`
--

INSERT INTO `fidelizacion` (`id`, `full_name`, `email`, `phone`, `incident_date`, `detailed_description`, `product_or_services_name`, `filing_number`, `preference_contact_id`, `type_pqrsd_id`) VALUES
(1, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-12', 'lalala', 'mesas', 951231, 1, 1),
(2, 'Kevin Mondragón', 'kevin@gmail.com', '+573202695131', '2023-09-24', 'gfdfc', 'hrht', 293427, 1, 1),
(3, 'Lady Midred Bejarano Leguizamon', 'pekis8731@gmail.com', '+573214668437', '2023-10-28', 'no me dejaron llevar la decoración y esta estaba paga con el evento', 'decoracion', 969717, 2, 2),
(4, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-13', 'No me gusto la atencion', 'mesas', 489666, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_code` int(10) UNSIGNED NOT NULL CHECK (`product_code` >= 0),
  `product_price` int(10) UNSIGNED NOT NULL CHECK (`product_price` >= 0),
  `amount` int(10) UNSIGNED NOT NULL CHECK (`amount` >= 0),
  `product_characteristics` longtext NOT NULL,
  `type_of_input_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `product_name`, `product_code`, `product_price`, `amount`, `product_characteristics`, `type_of_input_id`) VALUES
(1, 'Cocacola', 56, 15000, 25, '.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` bigint(20) NOT NULL,
  `nit` int(10) UNSIGNED NOT NULL CHECK (`nit` >= 0),
  `company_name` varchar(100) NOT NULL,
  `inventory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nit`, `company_name`, `inventory_id`) VALUES
(2, 12323, 'cocacola', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pse cuenta de ahorro y corriente`
--

CREATE TABLE `pse cuenta de ahorro y corriente` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `identification_number` int(10) UNSIGNED NOT NULL CHECK (`identification_number` >= 0),
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(128) NOT NULL,
  `select_bank_id` bigint(20) NOT NULL,
  `type_id_id` bigint(20) NOT NULL,
  `type_person_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pse cuenta de ahorro y corriente`
--

INSERT INTO `pse cuenta de ahorro y corriente` (`id`, `full_name`, `identification_number`, `email`, `phone_number`, `select_bank_id`, `type_id_id`, `type_person_id`) VALUES
(1, 'Lady Midred Bejarano Leguizamon', 1023870173, 'pekis8731@gmail.com', '+573214668437', 5, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `event_date` datetime(6) NOT NULL,
  `event_start_time` time(6) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `special_need` varchar(200) NOT NULL,
  `eventType` varchar(200) NOT NULL,
  `campus` varchar(200) NOT NULL,
  `lounge` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `name`, `lastname`, `email`, `phone`, `gender`, `event_date`, `event_start_time`, `theme`, `description`, `special_need`, `eventType`, `campus`, `lounge`) VALUES
(2, 'ELIANA', 'USMA', 'elianaosorio349@gmail.com', '+573213317074', 'Femenino', '2023-09-24 23:09:56.000000', '18:09:58.000000', 'Neon', 'ELOA', 'PERSONA', 'matrimonio', 'teusaquillo', '3'),
(3, 'Lady', 'Bejarano', 'pekis8731@gmail.com', '+573214668437', 'F', '2023-10-21 05:00:00.000000', '19:30:00.000000', 'Noche_estrellas', 'mantelería rosada, borlas doradas', 'espacio para persona en silla de ruedas y silla para bebes', 'M', 'F', 'F'),
(4, 'ELIAN', 'USMA', 'elianaosorio49@gmail.com', '+573213317074', 'F', '2023-09-30 05:00:00.000000', '18:00:00.000000', 'Noche_estrellas', 'Manteleria azul', 'espacio para persona en silla de ruedas y silla para bebes', 'F', 'F', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seleccion de banco`
--

CREATE TABLE `seleccion de banco` (
  `id` bigint(20) NOT NULL,
  `select_bank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seleccion de banco`
--

INSERT INTO `seleccion de banco` (`id`, `select_bank`) VALUES
(1, 'Nequi'),
(2, 'Daviplata'),
(3, 'Bancolombia'),
(4, 'Banco De Bogotá'),
(5, 'Davivienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta de credito y debito`
--

CREATE TABLE `tarjeta de credito y debito` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `card_number` int(10) UNSIGNED NOT NULL CHECK (`card_number` >= 0),
  `expiration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjeta de credito y debito`
--

INSERT INTO `tarjeta de credito y debito` (`id`, `full_name`, `card_number`, `expiration`) VALUES
(1, 'Eliana Usma', 2554, '0000-00-00'),
(2, 'Eliana Usma', 121212, '0000-00-00'),
(3, 'Eliana Usma', 120120120, '0000-00-00'),
(4, 'Lady Midred Bejarano Leguizamon', 1009876324, '0000-00-00'),
(5, 'Lady Midred Bejarano Leguizamon', 12343221, '0000-00-00'),
(6, 'Lady Midred Bejarano Leguizamon', 1234, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de identificacion`
--

CREATE TABLE `tipo de identificacion` (
  `id` bigint(20) NOT NULL,
  `type_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo de identificacion`
--

INSERT INTO `tipo de identificacion` (`id`, `type_id`) VALUES
(1, 'CC-Cedula De Ciudadanía'),
(2, 'PPT- Pasaporte'),
(3, 'CE-Cedula De Extranjería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de insumo`
--

CREATE TABLE `tipo de insumo` (
  `id` bigint(20) NOT NULL,
  `type_of_input` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo de insumo`
--

INSERT INTO `tipo de insumo` (`id`, `type_of_input`) VALUES
(1, 'Bebidas'),
(2, 'Catering'),
(3, 'Equipos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de persona`
--

CREATE TABLE `tipo de persona` (
  `id` bigint(20) NOT NULL,
  `type_person` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo de persona`
--

INSERT INTO `tipo de persona` (`id`, `type_person`) VALUES
(1, 'Persona Natural'),
(2, 'Persona Jurídica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo pqrsd`
--

CREATE TABLE `tipo pqrsd` (
  `id` bigint(20) NOT NULL,
  `type_pqrsd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo pqrsd`
--

INSERT INTO `tipo pqrsd` (`id`, `type_pqrsd`) VALUES
(1, 'Petición'),
(2, 'Queja'),
(3, 'Reclamo'),
(4, 'Sugerencias'),
(5, 'Denuncias');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `como prefire ser contactado`
--
ALTER TABLE `como prefire ser contactado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `estado_pqrsd`
--
ALTER TABLE `estado_pqrsd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado_pqrsd_loyalty_id_b7e88a36_fk_fidelizacion_id` (`loyalty_id`);

--
-- Indices de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estadoproducto_inventory_id_e42ac868_fk_inventario_id` (`inventory_id`);

--
-- Indices de la tabla `fidelizacion`
--
ALTER TABLE `fidelizacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fidelizacion_preference_contact_i_aa92e962_fk_Como pref` (`preference_contact_id`),
  ADD KEY `fidelizacion_type_pqrsd_id_4b56f6cd_fk_tipo pqrsd_id` (`type_pqrsd_id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_type_of_input_id_da8b4832_fk_Tipo de insumo_id` (`type_of_input_id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor_inventory_id_c9fd353c_fk_inventario_id` (`inventory_id`);

--
-- Indices de la tabla `pse cuenta de ahorro y corriente`
--
ALTER TABLE `pse cuenta de ahorro y corriente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PSE Cuenta de ahorro_select_bank_id_6d27ab0d_fk_Seleccion` (`select_bank_id`),
  ADD KEY `PSE Cuenta de ahorro_type_id_id_aeee4370_fk_Tipo de i` (`type_id_id`),
  ADD KEY `PSE Cuenta de ahorro_type_person_id_36626c73_fk_Tipo de p` (`type_person_id`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seleccion de banco`
--
ALTER TABLE `seleccion de banco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjeta de credito y debito`
--
ALTER TABLE `tarjeta de credito y debito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo de identificacion`
--
ALTER TABLE `tipo de identificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo de insumo`
--
ALTER TABLE `tipo de insumo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo de persona`
--
ALTER TABLE `tipo de persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo pqrsd`
--
ALTER TABLE `tipo pqrsd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `como prefire ser contactado`
--
ALTER TABLE `como prefire ser contactado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `estado_pqrsd`
--
ALTER TABLE `estado_pqrsd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `fidelizacion`
--
ALTER TABLE `fidelizacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pse cuenta de ahorro y corriente`
--
ALTER TABLE `pse cuenta de ahorro y corriente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `seleccion de banco`
--
ALTER TABLE `seleccion de banco`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tarjeta de credito y debito`
--
ALTER TABLE `tarjeta de credito y debito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipo de identificacion`
--
ALTER TABLE `tipo de identificacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo de insumo`
--
ALTER TABLE `tipo de insumo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo de persona`
--
ALTER TABLE `tipo de persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo pqrsd`
--
ALTER TABLE `tipo pqrsd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `estado_pqrsd`
--
ALTER TABLE `estado_pqrsd`
  ADD CONSTRAINT `estado_pqrsd_loyalty_id_b7e88a36_fk_fidelizacion_id` FOREIGN KEY (`loyalty_id`) REFERENCES `fidelizacion` (`id`);

--
-- Filtros para la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  ADD CONSTRAINT `estadoproducto_inventory_id_e42ac868_fk_inventario_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventario` (`id`);

--
-- Filtros para la tabla `fidelizacion`
--
ALTER TABLE `fidelizacion`
  ADD CONSTRAINT `fidelizacion_preference_contact_i_aa92e962_fk_Como pref` FOREIGN KEY (`preference_contact_id`) REFERENCES `como prefire ser contactado` (`id`),
  ADD CONSTRAINT `fidelizacion_type_pqrsd_id_4b56f6cd_fk_tipo pqrsd_id` FOREIGN KEY (`type_pqrsd_id`) REFERENCES `tipo pqrsd` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_type_of_input_id_da8b4832_fk_Tipo de insumo_id` FOREIGN KEY (`type_of_input_id`) REFERENCES `tipo de insumo` (`id`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_inventory_id_c9fd353c_fk_inventario_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventario` (`id`);

--
-- Filtros para la tabla `pse cuenta de ahorro y corriente`
--
ALTER TABLE `pse cuenta de ahorro y corriente`
  ADD CONSTRAINT `PSE Cuenta de ahorro_select_bank_id_6d27ab0d_fk_Seleccion` FOREIGN KEY (`select_bank_id`) REFERENCES `seleccion de banco` (`id`),
  ADD CONSTRAINT `PSE Cuenta de ahorro_type_id_id_aeee4370_fk_Tipo de i` FOREIGN KEY (`type_id_id`) REFERENCES `tipo de identificacion` (`id`),
  ADD CONSTRAINT `PSE Cuenta de ahorro_type_person_id_36626c73_fk_Tipo de p` FOREIGN KEY (`type_person_id`) REFERENCES `tipo de persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
