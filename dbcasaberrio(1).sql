-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2023 a las 06:39:10
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
(29, 'Can add Alquiler', 8, 'add_rent'),
(30, 'Can change Alquiler', 8, 'change_rent'),
(31, 'Can delete Alquiler', 8, 'delete_rent'),
(32, 'Can view Alquiler', 8, 'view_rent'),
(33, 'Can add Reserva', 9, 'add_reserva'),
(34, 'Can change Reserva', 9, 'change_reserva'),
(35, 'Can delete Reserva', 9, 'delete_reserva'),
(36, 'Can view Reserva', 9, 'view_reserva'),
(37, 'Can add Tarjeta de credito y debito', 10, 'add_tarjetadecd'),
(38, 'Can change Tarjeta de credito y debito', 10, 'change_tarjetadecd'),
(39, 'Can delete Tarjeta de credito y debito', 10, 'delete_tarjetadecd'),
(40, 'Can view Tarjeta de credito y debito', 10, 'view_tarjetadecd'),
(41, 'Can add Seleccion de banco', 11, 'add_selectbank'),
(42, 'Can change Seleccion de banco', 11, 'change_selectbank'),
(43, 'Can delete Seleccion de banco', 11, 'delete_selectbank'),
(44, 'Can view Seleccion de banco', 11, 'view_selectbank'),
(45, 'Can add Tipo de identificacion', 12, 'add_typeid'),
(46, 'Can change Tipo de identificacion', 12, 'change_typeid'),
(47, 'Can delete Tipo de identificacion', 12, 'delete_typeid'),
(48, 'Can view Tipo de identificacion', 12, 'view_typeid'),
(49, 'Can add Tipo de persona', 13, 'add_typeperson'),
(50, 'Can change Tipo de persona', 13, 'change_typeperson'),
(51, 'Can delete Tipo de persona', 13, 'delete_typeperson'),
(52, 'Can view Tipo de persona', 13, 'view_typeperson'),
(53, 'Can add PSE Cuenta de ahorro y corriente', 14, 'add_pse'),
(54, 'Can change PSE Cuenta de ahorro y corriente', 14, 'change_pse'),
(55, 'Can delete PSE Cuenta de ahorro y corriente', 14, 'delete_pse'),
(56, 'Can view PSE Cuenta de ahorro y corriente', 14, 'view_pse'),
(57, 'Can add Como prefire ser contactado', 15, 'add_preferencecontact'),
(58, 'Can change Como prefire ser contactado', 15, 'change_preferencecontact'),
(59, 'Can delete Como prefire ser contactado', 15, 'delete_preferencecontact'),
(60, 'Can view Como prefire ser contactado', 15, 'view_preferencecontact'),
(61, 'Can add Fidelizacion', 16, 'add_loyalty'),
(62, 'Can change Fidelizacion', 16, 'change_loyalty'),
(63, 'Can delete Fidelizacion', 16, 'delete_loyalty'),
(64, 'Can view Fidelizacion', 16, 'view_loyalty'),
(65, 'Can add Estado pqrsd', 17, 'add_statepqrsd'),
(66, 'Can change Estado pqrsd', 17, 'change_statepqrsd'),
(67, 'Can delete Estado pqrsd', 17, 'delete_statepqrsd'),
(68, 'Can view Estado pqrsd', 17, 'view_statepqrsd'),
(69, 'Can add Tipo pqrsd', 18, 'add_typepqrsd'),
(70, 'Can change Tipo pqrsd', 18, 'change_typepqrsd'),
(71, 'Can delete Tipo pqrsd', 18, 'delete_typepqrsd'),
(72, 'Can view Tipo pqrsd', 18, 'view_typepqrsd'),
(73, 'Can add Estado de producto ', 19, 'add_stateproduct'),
(74, 'Can change Estado de producto ', 19, 'change_stateproduct'),
(75, 'Can delete Estado de producto ', 19, 'delete_stateproduct'),
(76, 'Can view Estado de producto ', 19, 'view_stateproduct'),
(77, 'Can add Proveedor', 20, 'add_supplier'),
(78, 'Can change Proveedor', 20, 'change_supplier'),
(79, 'Can delete Proveedor', 20, 'delete_supplier'),
(80, 'Can view Proveedor', 20, 'view_supplier'),
(81, 'Can add Inventario', 21, 'add_inventory'),
(82, 'Can change Inventario', 21, 'change_inventory'),
(83, 'Can delete Inventario', 21, 'delete_inventory'),
(84, 'Can view Inventario', 21, 'view_inventory'),
(85, 'Can add Tipo de insumo', 22, 'add_typeofinput'),
(86, 'Can change Tipo de insumo', 22, 'change_typeofinput'),
(87, 'Can delete Tipo de insumo', 22, 'delete_typeofinput'),
(88, 'Can view Tipo de insumo', 22, 'view_typeofinput');

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
(1, 'pbkdf2_sha256$600000$z0WuZUMv9JCri9D1X25hk3$iqzGUQu0PY9V1BG0YPVfFjmRuvBChfZavl98Cjbfw9M=', '2023-09-24 03:28:43.946247', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-09-24 02:12:52.875238'),
(2, 'pbkdf2_sha256$600000$u2AWTajGiRXtAsRdko6f7p$1yH8XfgCPv1j0YrLseqZzzx+DvDsjm/ZJlCj16C6cXY=', '2023-09-24 03:28:11.159991', 0, 'eliana349', 'eliana', 'usma', 'elianaosorio349@gmail.com', 0, 1, '2023-09-24 02:27:13.379134');

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
(3, 'Correo Postal'),
(4, 'Numero De Teléfono'),
(5, 'Correo Electrónico');

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
(1, '2023-09-24 02:14:14.350174', '1', 'Numero De Teléfono', 1, '[{\"added\": {}}]', 15, 1),
(2, '2023-09-24 02:14:22.025968', '2', 'Correo Electrónico', 1, '[{\"added\": {}}]', 15, 1),
(3, '2023-09-24 02:14:25.425753', '3', 'Correo Postal', 1, '[{\"added\": {}}]', 15, 1),
(4, '2023-09-24 02:14:38.875978', '1', 'Petición', 1, '[{\"added\": {}}]', 18, 1),
(5, '2023-09-24 02:14:45.005045', '2', 'Queja', 1, '[{\"added\": {}}]', 18, 1),
(6, '2023-09-24 02:14:49.787670', '3', 'Reclamo', 1, '[{\"added\": {}}]', 18, 1),
(7, '2023-09-24 02:14:56.118532', '4', 'Sugerencias', 1, '[{\"added\": {}}]', 18, 1),
(8, '2023-09-24 02:15:02.048965', '5', 'Denuncias', 1, '[{\"added\": {}}]', 18, 1),
(9, '2023-09-24 02:15:23.933608', '4', 'Numero De Teléfono', 1, '[{\"added\": {}}]', 15, 1),
(10, '2023-09-24 02:15:29.638078', '5', 'Correo Electrónico', 1, '[{\"added\": {}}]', 15, 1),
(11, '2023-09-24 02:15:54.806642', '1', 'Numero De Teléfono', 3, '', 15, 1),
(12, '2023-09-24 02:15:54.809643', '2', 'Correo Electrónico', 3, '', 15, 1),
(13, '2023-09-24 02:16:47.011540', '1', 'Persona Natural', 1, '[{\"added\": {}}]', 13, 1),
(14, '2023-09-24 02:17:07.895618', '2', 'Persona Jurídica', 1, '[{\"added\": {}}]', 13, 1),
(15, '2023-09-24 02:17:23.443704', '1', 'Catering', 1, '[{\"added\": {}}]', 22, 1),
(16, '2023-09-24 02:17:28.576489', '2', 'Equipos', 1, '[{\"added\": {}}]', 22, 1),
(17, '2023-09-24 02:17:40.674328', '3', 'Bebidas', 1, '[{\"added\": {}}]', 22, 1),
(18, '2023-09-24 02:18:25.677541', '1', 'CC-Cedula De Ciudadanía', 1, '[{\"added\": {}}]', 12, 1),
(19, '2023-09-24 02:18:47.072402', '2', 'PPT- Pasaporte', 1, '[{\"added\": {}}]', 12, 1),
(20, '2023-09-24 02:19:20.602294', '3', 'CE-Cedula De Extranjería', 1, '[{\"added\": {}}]', 12, 1),
(21, '2023-09-24 02:19:44.068390', '1', 'Nequi', 1, '[{\"added\": {}}]', 11, 1),
(22, '2023-09-24 02:19:50.368561', '2', 'Daviplata', 1, '[{\"added\": {}}]', 11, 1),
(23, '2023-09-24 02:19:57.566245', '3', 'Bancolombia', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-09-24 02:20:14.010016', '4', 'Banco De Bogotá', 1, '[{\"added\": {}}]', 11, 1),
(25, '2023-09-24 02:20:30.919642', '5', 'Davivienda', 1, '[{\"added\": {}}]', 11, 1),
(26, '2023-09-24 02:22:13.385510', '1', 'Sillas', 1, '[{\"added\": {}}]', 21, 1),
(27, '2023-09-24 03:29:20.536766', '2', 'Sillas', 1, '[{\"added\": {}}]', 21, 1),
(28, '2023-09-24 03:31:07.316227', '3', 'rimax', 1, '[{\"added\": {}}]', 20, 1);

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
(21, 'core', 'inventory'),
(16, 'core', 'loyalty'),
(15, 'core', 'preferencecontact'),
(14, 'core', 'pse'),
(8, 'core', 'rent'),
(9, 'core', 'reserva'),
(11, 'core', 'selectbank'),
(17, 'core', 'statepqrsd'),
(19, 'core', 'stateproduct'),
(20, 'core', 'supplier'),
(10, 'core', 'tarjetadecd'),
(12, 'core', 'typeid'),
(22, 'core', 'typeofinput'),
(13, 'core', 'typeperson'),
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
(1, 'contenttypes', '0001_initial', '2023-09-24 02:11:07.757675'),
(2, 'auth', '0001_initial', '2023-09-24 02:11:08.063825'),
(3, 'admin', '0001_initial', '2023-09-24 02:11:08.139385'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-24 02:11:08.146729'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-24 02:11:08.155523'),
(6, 'admin_interface', '0001_initial', '2023-09-24 02:11:08.168259'),
(7, 'admin_interface', '0002_add_related_modal', '2023-09-24 02:11:08.220345'),
(8, 'admin_interface', '0003_add_logo_color', '2023-09-24 02:11:08.236290'),
(9, 'admin_interface', '0004_rename_title_color', '2023-09-24 02:11:08.244562'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-09-24 02:11:08.258808'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-09-24 02:11:08.306236'),
(12, 'admin_interface', '0007_add_favicon', '2023-09-24 02:11:08.317782'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-09-24 02:11:08.339128'),
(14, 'admin_interface', '0009_add_enviroment', '2023-09-24 02:11:08.370414'),
(15, 'admin_interface', '0010_add_localization', '2023-09-24 02:11:08.394012'),
(16, 'admin_interface', '0011_add_environment_options', '2023-09-24 02:11:08.440278'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-09-24 02:11:08.445995'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-09-24 02:11:08.458375'),
(19, 'admin_interface', '0014_name_unique', '2023-09-24 02:11:08.470462'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-09-24 02:11:08.485780'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-09-24 02:11:08.496937'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-09-24 02:11:08.504532'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-09-24 02:11:08.517877'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-09-24 02:11:08.542246'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-09-24 02:11:08.576457'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-09-24 02:11:08.587270'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-09-24 02:11:08.621434'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-09-24 02:11:08.639968'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-09-24 02:11:08.652724'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-09-24 02:11:08.668071'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-09-24 02:11:08.685577'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-09-24 02:11:08.710285'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-09-24 02:11:08.736620'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-09-24 02:11:08.751034'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-09-24 02:11:08.804859'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-09-24 02:11:08.850264'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-09-24 02:11:08.884717'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-09-24 02:11:08.896327'),
(39, 'auth', '0004_alter_user_username_opts', '2023-09-24 02:11:08.905466'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-09-24 02:11:08.930747'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-09-24 02:11:08.932788'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-09-24 02:11:08.941832'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-09-24 02:11:08.954590'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-09-24 02:11:08.965086'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-09-24 02:11:08.980657'),
(46, 'auth', '0011_update_proxy_permissions', '2023-09-24 02:11:08.993524'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-09-24 02:11:09.006789'),
(48, 'sessions', '0001_initial', '2023-09-24 02:11:09.026088'),
(49, 'core', '0001_initial', '2023-09-24 02:11:18.062445'),
(50, 'core', '0002_alter_loyalty_filing_number', '2023-09-24 02:37:40.412393'),
(51, 'core', '0003_alter_loyalty_filing_number', '2023-09-24 03:02:13.427118');

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
('iweqfe6g2vayx5olrsl26p8638vf5q2p', '.eJxVjEEOwiAQRe_C2hCYEmRcuvcMBGamUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TLHidVFWXX63XKip9Qd8CPVe9PU6jJPWe-KPmjXt8byuh7u30FJvXxrkrMhL8FaSqNkEHZsfUAjmAIKsPECOEBAMpYBCMT5AcFZJDIjqPcH9-Q30Q:1qkFnX:8YJk06RxLrri2Hq6zDbzRCTQ6iTBdI7TQMZwjVlqh7w', '2023-10-08 03:28:43.952439');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado pqrsd`
--

CREATE TABLE `estado pqrsd` (
  `id` bigint(20) NOT NULL,
  `wait` varchar(100) NOT NULL,
  `reviewed` varchar(100) NOT NULL,
  `answered` varchar(100) NOT NULL,
  `loyalty_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproducto`
--

CREATE TABLE `estadoproducto` (
  `id` bigint(20) NOT NULL,
  `asset` varchar(100) NOT NULL,
  `idle` varchar(100) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL CHECK (`amount` >= 0),
  `description` varchar(500) NOT NULL,
  `inventory_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-16', 'bvcx', 'mesas', 476447, 4, 1),
(2, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-09', 'GHJK,', 'mesas', 794478, 3, 1),
(3, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-15', 'L.', 'mesas', 913740, 3, 1),
(4, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-05', 'fcdx', 'mesas', 913740, 3, 3),
(5, 'eliana', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-29', 'vcxz', 'mesas', 198017, 4, 3),
(6, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-12-31', 'c', 'xc', 198017, 4, 1),
(7, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-13', 'cl,', 'm', 600917, 3, 1),
(8, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-01-01', 'dsx', 'mesas', 555202, 3, 2),
(9, 'Eliana Usma', 'elianaosorio349@gmail.com', '+573213317074', '2023-09-08', 'cfxz', 'mesas', 729804, 3, 4);

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
(1, 'Sillas', 34, 15000, 2, 'silla rimax', 1),
(2, 'Sillas', 23, 15000, 56, 'rimax', 1);

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
(3, 121212, 'rimax', 2);

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
  `guest_document` varchar(200) NOT NULL,
  `type_pay` varchar(200) NOT NULL,
  `eventType` varchar(200) NOT NULL,
  `campus` varchar(200) NOT NULL,
  `lounge` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Catering'),
(2, 'Equipos'),
(3, 'Bebidas');

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
-- Indices de la tabla `estado pqrsd`
--
ALTER TABLE `estado pqrsd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estado pqrsd_loyalty_id_64565aaa_fk_fidelizacion_id` (`loyalty_id`);

--
-- Indices de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `estado pqrsd`
--
ALTER TABLE `estado pqrsd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fidelizacion`
--
ALTER TABLE `fidelizacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pse cuenta de ahorro y corriente`
--
ALTER TABLE `pse cuenta de ahorro y corriente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seleccion de banco`
--
ALTER TABLE `seleccion de banco`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tarjeta de credito y debito`
--
ALTER TABLE `tarjeta de credito y debito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Filtros para la tabla `estado pqrsd`
--
ALTER TABLE `estado pqrsd`
  ADD CONSTRAINT `estado pqrsd_loyalty_id_64565aaa_fk_fidelizacion_id` FOREIGN KEY (`loyalty_id`) REFERENCES `fidelizacion` (`id`);

--
-- Filtros para la tabla `estadoproducto`
--
ALTER TABLE `estadoproducto`
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
