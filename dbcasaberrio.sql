-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2023 a las 19:53:17
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
  `rental_date_and_time` datetime(6) NOT NULL,
  `return_date_and_time_f` datetime(6) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_catering`
--

CREATE TABLE `alquiler_catering` (
  `id` bigint(20) NOT NULL,
  `rent_id` bigint(20) NOT NULL,
  `catering_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_drink`
--

CREATE TABLE `alquiler_drink` (
  `id` bigint(20) NOT NULL,
  `rent_id` bigint(20) NOT NULL,
  `drink_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler_equipment`
--

CREATE TABLE `alquiler_equipment` (
  `id` bigint(20) NOT NULL,
  `rent_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL
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
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Tarjeta de credito y debito', 7, 'add_tarjetadecd'),
(26, 'Can change Tarjeta de credito y debito', 7, 'change_tarjetadecd'),
(27, 'Can delete Tarjeta de credito y debito', 7, 'delete_tarjetadecd'),
(28, 'Can view Tarjeta de credito y debito', 7, 'view_tarjetadecd'),
(29, 'Can add Sede', 8, 'add_campus'),
(30, 'Can change Sede', 8, 'change_campus'),
(31, 'Can delete Sede', 8, 'delete_campus'),
(32, 'Can view Sede', 8, 'view_campus'),
(33, 'Can add Reserva', 9, 'add_reserva'),
(34, 'Can change Reserva', 9, 'change_reserva'),
(35, 'Can delete Reserva', 9, 'delete_reserva'),
(36, 'Can view Reserva', 9, 'view_reserva'),
(37, 'Can add Tipo de pago  ', 10, 'add_typepay'),
(38, 'Can change Tipo de pago  ', 10, 'change_typepay'),
(39, 'Can delete Tipo de pago  ', 10, 'delete_typepay'),
(40, 'Can view Tipo de pago  ', 10, 'view_typepay'),
(41, 'Can add Tipo evento', 11, 'add_eventtype'),
(42, 'Can change Tipo evento', 11, 'change_eventtype'),
(43, 'Can delete Tipo evento', 11, 'delete_eventtype'),
(44, 'Can view Tipo evento', 11, 'view_eventtype'),
(45, 'Can add Genero', 12, 'add_gender'),
(46, 'Can change Genero', 12, 'change_gender'),
(47, 'Can delete Genero', 12, 'delete_gender'),
(48, 'Can view Genero', 12, 'view_gender'),
(49, 'Can add Salon', 13, 'add_lounge'),
(50, 'Can change Salon', 13, 'change_lounge'),
(51, 'Can delete Salon', 13, 'delete_lounge'),
(52, 'Can view Salon', 13, 'view_lounge'),
(53, 'Can add Seleccion de banco', 14, 'add_selectbank'),
(54, 'Can change Seleccion de banco', 14, 'change_selectbank'),
(55, 'Can delete Seleccion de banco', 14, 'delete_selectbank'),
(56, 'Can view Seleccion de banco', 14, 'view_selectbank'),
(57, 'Can add Tipo de identificacion', 15, 'add_typeid'),
(58, 'Can change Tipo de identificacion', 15, 'change_typeid'),
(59, 'Can delete Tipo de identificacion', 15, 'delete_typeid'),
(60, 'Can view Tipo de identificacion', 15, 'view_typeid'),
(61, 'Can add Tipo de persona', 16, 'add_typeperson'),
(62, 'Can change Tipo de persona', 16, 'change_typeperson'),
(63, 'Can delete Tipo de persona', 16, 'delete_typeperson'),
(64, 'Can view Tipo de persona', 16, 'view_typeperson'),
(65, 'Can add PSE Cuenta de ahorro y corriente', 17, 'add_pse'),
(66, 'Can change PSE Cuenta de ahorro y corriente', 17, 'change_pse'),
(67, 'Can delete PSE Cuenta de ahorro y corriente', 17, 'delete_pse'),
(68, 'Can view PSE Cuenta de ahorro y corriente', 17, 'view_pse'),
(69, 'Can add Tipo Producto', 18, 'add_producttype'),
(70, 'Can change Tipo Producto', 18, 'change_producttype'),
(71, 'Can delete Tipo Producto', 18, 'delete_producttype'),
(72, 'Can view Tipo Producto', 18, 'view_producttype'),
(73, 'Can add Catering', 19, 'add_catering'),
(74, 'Can change Catering', 19, 'change_catering'),
(75, 'Can delete Catering', 19, 'delete_catering'),
(76, 'Can view Catering', 19, 'view_catering'),
(77, 'Can add Equipo', 20, 'add_equipment'),
(78, 'Can change Equipo', 20, 'change_equipment'),
(79, 'Can delete Equipo', 20, 'delete_equipment'),
(80, 'Can view Equipo', 20, 'view_equipment'),
(81, 'Can add Alquiler', 21, 'add_rent'),
(82, 'Can change Alquiler', 21, 'change_rent'),
(83, 'Can delete Alquiler', 21, 'delete_rent'),
(84, 'Can view Alquiler', 21, 'view_rent'),
(85, 'Can add Bebida', 22, 'add_drink'),
(86, 'Can change Bebida', 22, 'change_drink'),
(87, 'Can delete Bebida', 22, 'delete_drink'),
(88, 'Can view Bebida', 22, 'view_drink'),
(89, 'Can add Tipo pqrsd', 23, 'add_typepqrsd'),
(90, 'Can change Tipo pqrsd', 23, 'change_typepqrsd'),
(91, 'Can delete Tipo pqrsd', 23, 'delete_typepqrsd'),
(92, 'Can view Tipo pqrsd', 23, 'view_typepqrsd'),
(93, 'Can add Como prefire ser contactado', 24, 'add_preferencecontact'),
(94, 'Can change Como prefire ser contactado', 24, 'change_preferencecontact'),
(95, 'Can delete Como prefire ser contactado', 24, 'delete_preferencecontact'),
(96, 'Can view Como prefire ser contactado', 24, 'view_preferencecontact'),
(97, 'Can add Estado pqrsd', 25, 'add_statepqrsd'),
(98, 'Can change Estado pqrsd', 25, 'change_statepqrsd'),
(99, 'Can delete Estado pqrsd', 25, 'delete_statepqrsd'),
(100, 'Can view Estado pqrsd', 25, 'view_statepqrsd'),
(101, 'Can add Fidelizacion', 26, 'add_loyalty'),
(102, 'Can change Fidelizacion', 26, 'change_loyalty'),
(103, 'Can delete Fidelizacion', 26, 'delete_loyalty'),
(104, 'Can view Fidelizacion', 26, 'view_loyalty'),
(105, 'Can add Estado de producto ', 27, 'add_stateproduct'),
(106, 'Can change Estado de producto ', 27, 'change_stateproduct'),
(107, 'Can delete Estado de producto ', 27, 'delete_stateproduct'),
(108, 'Can view Estado de producto ', 27, 'view_stateproduct'),
(109, 'Can add Inventario', 28, 'add_inventory'),
(110, 'Can change Inventario', 28, 'change_inventory'),
(111, 'Can delete Inventario', 28, 'delete_inventory'),
(112, 'Can view Inventario', 28, 'view_inventory'),
(113, 'Can add Tipo de insumo', 29, 'add_typeofinput'),
(114, 'Can change Tipo de insumo', 29, 'change_typeofinput'),
(115, 'Can delete Tipo de insumo', 29, 'delete_typeofinput'),
(116, 'Can view Tipo de insumo', 29, 'view_typeofinput'),
(117, 'Can add Proveedor', 30, 'add_supplier'),
(118, 'Can change Proveedor', 30, 'change_supplier'),
(119, 'Can delete Proveedor', 30, 'delete_supplier'),
(120, 'Can view Proveedor', 30, 'view_supplier'),
(121, 'Can add Theme', 31, 'add_theme'),
(122, 'Can change Theme', 31, 'change_theme'),
(123, 'Can delete Theme', 31, 'delete_theme'),
(124, 'Can view Theme', 31, 'view_theme');

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
(1, 'pbkdf2_sha256$600000$AVx8ibS2G5fnALQ5XNlSDV$K0LZTNW5KijC9No0IHv4poZTFomdv/PUs6CrDeyCK/s=', '2023-09-15 19:13:29.077284', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-09-15 06:14:56.304866'),
(2, 'pbkdf2_sha256$600000$b0oFszrCKgIoDXGkLCTAuZ$bnUZgUu1eLmLnImhbMkzdqcoKkpTOZ2J8KHSroyVXrs=', '2023-09-15 21:03:18.448147', 0, 'eliana349', 'Eliana Valentina', 'Usma Osorio', 'elianaosorio349@gomail.com', 0, 1, '2023-09-15 17:42:36.158688'),
(4, 'pbkdf2_sha256$600000$384pJT7jsMSCxXtKSqrb4a$M6IYWFb6fnRlIvw6Tmb6O+dpxG5y0D62s26tLYu3MbA=', '2023-09-15 21:07:02.497370', 0, 'kerly11', 'kerly', 'yeray', 'kevinduban77@gmail.com', 0, 1, '2023-09-15 21:07:01.574120');

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
-- Estructura de tabla para la tabla `bebida`
--

CREATE TABLE `bebida` (
  `id` bigint(20) NOT NULL,
  `schnapps` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bebida`
--

INSERT INTO `bebida` (`id`, `schnapps`) VALUES
(1, 'Gaseosa Postobon y Coca-Cola'),
(2, 'Whiskey'),
(3, 'Ron'),
(4, 'Cócteles'),
(5, 'Agua');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catering`
--

CREATE TABLE `catering` (
  `id` bigint(20) NOT NULL,
  `household` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catering`
--

INSERT INTO `catering` (`id`, `household`) VALUES
(1, 'Sillas'),
(2, 'Mesas'),
(3, 'Manteles'),
(4, 'Copas'),
(5, 'Vasos'),
(6, 'Platos'),
(7, 'Mesa Redonda (Ponque)');

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
(1, 'Correo Electrónico'),
(2, 'Teléfono'),
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
(1, '2023-09-15 15:24:16.547266', '1', 'Petición', 1, '[{\"added\": {}}]', 23, 1),
(2, '2023-09-15 15:24:29.209481', '2', 'Queja', 1, '[{\"added\": {}}]', 23, 1),
(3, '2023-09-15 15:24:37.222408', '3', 'Reclamo', 1, '[{\"added\": {}}]', 23, 1),
(4, '2023-09-15 15:25:03.181161', '4', 'Sugerencias', 1, '[{\"added\": {}}]', 23, 1),
(5, '2023-09-15 15:25:14.252126', '5', 'Denuncias', 1, '[{\"added\": {}}]', 23, 1),
(6, '2023-09-15 15:25:36.967901', '1', 'Email', 1, '[{\"added\": {}}]', 24, 1),
(7, '2023-09-15 15:26:30.309401', '1', 'Correo Electrónico', 2, '[{\"changed\": {\"fields\": [\"Como prefire ser contactado\"]}}]', 24, 1),
(8, '2023-09-15 15:26:49.909482', '2', 'Teléfono', 1, '[{\"added\": {}}]', 24, 1),
(9, '2023-09-15 15:27:09.341085', '3', 'Correo Postal', 1, '[{\"added\": {}}]', 24, 1),
(10, '2023-09-15 15:29:13.549681', '1', 'Gaseosa Postobon y Coca-Cola', 1, '[{\"added\": {}}]', 22, 1),
(11, '2023-09-15 15:30:52.068852', '2', 'Whiskey', 1, '[{\"added\": {}}]', 22, 1),
(12, '2023-09-15 15:31:11.084090', '3', 'Ron', 1, '[{\"added\": {}}]', 22, 1),
(13, '2023-09-15 15:31:39.314726', '4', 'Cócteles', 1, '[{\"added\": {}}]', 22, 1),
(14, '2023-09-15 15:31:48.148508', '5', 'Agua', 1, '[{\"added\": {}}]', 22, 1),
(15, '2023-09-15 15:32:00.262357', '1', 'Sillas', 1, '[{\"added\": {}}]', 19, 1),
(16, '2023-09-15 15:32:07.522515', '2', 'Mesas', 1, '[{\"added\": {}}]', 19, 1),
(17, '2023-09-15 15:32:17.328352', '3', 'Manteles', 1, '[{\"added\": {}}]', 19, 1),
(18, '2023-09-15 15:32:28.744840', '4', 'Copas', 1, '[{\"added\": {}}]', 19, 1),
(19, '2023-09-15 15:32:36.277115', '5', 'Vasos', 1, '[{\"added\": {}}]', 19, 1),
(20, '2023-09-15 15:32:42.499114', '6', 'Platos', 1, '[{\"added\": {}}]', 19, 1),
(21, '2023-09-15 15:33:09.966430', '7', 'Mesa Redonda (Ponque)', 1, '[{\"added\": {}}]', 19, 1),
(22, '2023-09-15 15:33:27.349021', '1', 'Luces', 1, '[{\"added\": {}}]', 20, 1),
(23, '2023-09-15 15:33:38.202863', '2', 'Sonido', 1, '[{\"added\": {}}]', 20, 1),
(24, '2023-09-15 15:34:33.870315', '3', 'Cámara de Humo', 1, '[{\"added\": {}}]', 20, 1),
(25, '2023-09-15 15:34:57.520499', '4', 'Lanza Confetti', 1, '[{\"added\": {}}]', 20, 1),
(26, '2023-09-15 15:36:41.255469', '1', 'Masculino', 1, '[{\"added\": {}}]', 12, 1),
(27, '2023-09-15 17:19:39.730408', '2', 'Femenino', 1, '[{\"added\": {}}]', 12, 1),
(28, '2023-09-15 17:21:15.275482', '3', 'No Binario', 1, '[{\"added\": {}}]', 12, 1),
(29, '2023-09-15 17:21:58.260328', '1', 'Persona Natural', 1, '[{\"added\": {}}]', 16, 1),
(30, '2023-09-15 17:22:17.856632', '2', 'Persona Juridica', 1, '[{\"added\": {}}]', 16, 1),
(31, '2023-09-15 17:22:27.038067', '1', 'Nequi', 1, '[{\"added\": {}}]', 14, 1),
(32, '2023-09-15 17:22:34.221747', '2', 'Daviplata', 1, '[{\"added\": {}}]', 14, 1),
(33, '2023-09-15 17:22:42.552686', '3', 'Bancolombia', 1, '[{\"added\": {}}]', 14, 1),
(34, '2023-09-15 17:22:52.474995', '4', 'Caja Social', 1, '[{\"added\": {}}]', 14, 1),
(35, '2023-09-15 17:23:05.420229', '5', 'Banco De Bogotá', 1, '[{\"added\": {}}]', 14, 1),
(36, '2023-09-15 17:23:19.690903', '6', 'Davivienda', 1, '[{\"added\": {}}]', 14, 1),
(37, '2023-09-15 17:25:23.193048', '1', 'CC- Cedula De Ciudadania', 1, '[{\"added\": {}}]', 15, 1),
(38, '2023-09-15 17:28:23.156573', '2', 'CE- Cédula De Extranjería', 1, '[{\"added\": {}}]', 15, 1),
(39, '2023-09-15 17:28:47.043393', '3', 'PPN- Pasaporte', 1, '[{\"added\": {}}]', 15, 1),
(40, '2023-09-15 17:29:59.153138', '1', 'Matrimonio', 1, '[{\"added\": {}}]', 11, 1),
(41, '2023-09-15 17:30:09.351048', '2', 'Bautizos', 1, '[{\"added\": {}}]', 11, 1),
(42, '2023-09-15 17:30:18.446837', '3', '15 Años', 1, '[{\"added\": {}}]', 11, 1),
(43, '2023-09-15 17:30:42.039950', '4', 'Conferencias', 1, '[{\"added\": {}}]', 11, 1),
(44, '2023-09-15 17:31:40.360987', '5', 'Grados', 1, '[{\"added\": {}}]', 11, 1),
(45, '2023-09-15 17:31:56.234252', '6', 'Cumpleaños', 1, '[{\"added\": {}}]', 11, 1),
(46, '2023-09-15 17:32:46.153824', '4', 'Despedidas Empresariales', 2, '[{\"changed\": {\"fields\": [\"Tipo de evento\"]}}]', 11, 1),
(47, '2023-09-15 17:33:09.969189', '1', 'Teusaquillo', 1, '[{\"added\": {}}]', 8, 1),
(48, '2023-09-15 17:33:20.619289', '2', 'Santa Isabel', 1, '[{\"added\": {}}]', 8, 1),
(49, '2023-09-15 17:33:30.035564', '3', 'Comuneros', 1, '[{\"added\": {}}]', 8, 1),
(50, '2023-09-15 17:33:41.988733', '1', 'Salon 1', 1, '[{\"added\": {}}]', 13, 1),
(51, '2023-09-15 17:33:48.369323', '2', 'Salon 2', 1, '[{\"added\": {}}]', 13, 1),
(52, '2023-09-15 17:34:03.049889', '3', 'Salon 3', 1, '[{\"added\": {}}]', 13, 1),
(53, '2023-09-15 17:34:11.359117', '3', 'Salón 3', 2, '[{\"changed\": {\"fields\": [\"Numero de salon\"]}}]', 13, 1),
(54, '2023-09-15 17:34:41.571304', '2', 'Salón 2', 2, '[{\"changed\": {\"fields\": [\"Numero de salon\"]}}]', 13, 1),
(55, '2023-09-15 17:35:26.748127', '1', 'Salón 1', 2, '[{\"changed\": {\"fields\": [\"Numero de salon\"]}}]', 13, 1),
(56, '2023-09-15 17:38:53.047448', '6', 'Bebidas', 1, '[{\"added\": {}}]', 23, 1),
(57, '2023-09-15 17:38:58.641937', '7', 'Catering', 1, '[{\"added\": {}}]', 23, 1),
(58, '2023-09-15 17:39:04.661362', '8', 'Equipos', 1, '[{\"added\": {}}]', 23, 1),
(59, '2023-09-15 18:24:02.429984', '1', 'nequi', 1, '[{\"added\": {}}]', 10, 1),
(60, '2023-09-15 18:49:13.109029', '2', 'Casa Berrio', 1, '[{\"added\": {}}]', 31, 1),
(61, '2023-09-15 18:52:39.008988', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Color\"]}}]', 31, 1),
(62, '2023-09-15 18:53:07.414950', '2', 'Casa Berrio', 2, '[]', 31, 1),
(63, '2023-09-15 18:54:04.480396', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Favicon\"]}}]', 31, 1),
(64, '2023-09-15 18:55:05.785003', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 31, 1),
(65, '2023-09-15 18:56:31.614535', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Favicon\", \"Title\", \"Color\", \"Background color\"]}}]', 31, 1),
(66, '2023-09-15 18:58:47.878013', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\", \"Text color\"]}}]', 31, 1),
(67, '2023-09-15 18:59:38.632530', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link color\"]}}]', 31, 1),
(68, '2023-09-15 19:00:07.164164', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link color\", \"Link hover color\"]}}]', 31, 1),
(69, '2023-09-15 19:00:40.979264', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link hover color\"]}}]', 31, 1),
(70, '2023-09-15 19:01:45.418529', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link hover color\", \"Background color\"]}}]', 31, 1),
(71, '2023-09-15 19:02:52.400084', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\", \"Background selected color\"]}}]', 31, 1),
(72, '2023-09-15 19:03:23.434934', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background selected color\", \"Link hover color\"]}}]', 31, 1),
(73, '2023-09-15 19:03:36.165018', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link hover color\"]}}]', 31, 1),
(74, '2023-09-15 19:04:04.107227', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link hover color\"]}}]', 31, 1),
(75, '2023-09-15 19:04:24.731075', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link hover color\"]}}]', 31, 1),
(76, '2023-09-15 19:04:52.938383', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link hover color\", \"Link color\"]}}]', 31, 1),
(77, '2023-09-15 19:05:32.536365', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link color\", \"Link hover color\"]}}]', 31, 1),
(78, '2023-09-15 19:05:51.909282', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link active color\"]}}]', 31, 1),
(79, '2023-09-15 19:06:58.854851', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link active color\", \"Background color\"]}}]', 31, 1),
(80, '2023-09-15 19:07:23.379596', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\", \"Background hover color\", \"Text color\"]}}]', 31, 1),
(81, '2023-09-15 19:07:38.370835', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Text color\"]}}]', 31, 1),
(82, '2023-09-15 19:08:50.499505', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link active color\"]}}]', 31, 1),
(83, '2023-09-15 19:09:57.560708', '2', 'Casa Berrio', 2, '[]', 31, 1),
(84, '2023-09-15 19:10:26.578098', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 31, 1),
(85, '2023-09-15 19:10:50.692384', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\", \"Text color\"]}}]', 31, 1),
(86, '2023-09-15 19:11:29.464298', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\", \"Text color\", \"Link color\"]}}]', 31, 1),
(87, '2023-09-15 19:11:40.613350', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Link color\"]}}]', 31, 1),
(88, '2023-09-15 19:12:08.465068', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Background color\"]}}]', 31, 1),
(89, '2023-09-15 19:12:27.374751', '2', 'Casa Berrio', 2, '[]', 31, 1),
(90, '2023-09-15 19:13:03.218264', '3', 'eliana34', 3, '', 4, 1),
(91, '2023-09-15 19:18:41.263892', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Logo\"]}}]', 31, 1),
(92, '2023-09-15 19:21:29.169616', '2', 'Casa Berrio', 2, '[{\"changed\": {\"fields\": [\"Favicon\"]}}]', 31, 1);

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
(1, 'admin', 'logentry'),
(31, 'admin_interface', 'theme'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'core', 'campus'),
(19, 'core', 'catering'),
(22, 'core', 'drink'),
(20, 'core', 'equipment'),
(11, 'core', 'eventtype'),
(12, 'core', 'gender'),
(28, 'core', 'inventory'),
(13, 'core', 'lounge'),
(26, 'core', 'loyalty'),
(24, 'core', 'preferencecontact'),
(18, 'core', 'producttype'),
(17, 'core', 'pse'),
(21, 'core', 'rent'),
(9, 'core', 'reserva'),
(14, 'core', 'selectbank'),
(25, 'core', 'statepqrsd'),
(27, 'core', 'stateproduct'),
(30, 'core', 'supplier'),
(7, 'core', 'tarjetadecd'),
(15, 'core', 'typeid'),
(29, 'core', 'typeofinput'),
(10, 'core', 'typepay'),
(16, 'core', 'typeperson'),
(23, 'core', 'typepqrsd'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2023-09-15 06:09:36.340840'),
(2, 'auth', '0001_initial', '2023-09-15 06:09:36.664470'),
(3, 'admin', '0001_initial', '2023-09-15 06:09:36.739050'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-15 06:09:36.749487'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-15 06:09:36.755724'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-15 06:09:36.794925'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-15 06:09:36.838252'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-15 06:09:36.855126'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-15 06:09:36.862939'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-15 06:09:36.892442'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-15 06:09:36.895308'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-15 06:09:36.903680'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-15 06:09:36.915467'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-15 06:09:36.927468'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-15 06:09:36.950849'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-15 06:09:36.965450'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-15 06:09:36.975114'),
(18, 'sessions', '0001_initial', '2023-09-15 06:09:36.998374'),
(19, 'core', '0001_initial', '2023-09-15 06:13:11.937724'),
(20, 'core', '0002_alter_typepay_type_pay', '2023-09-15 14:28:53.416073'),
(21, 'admin_interface', '0001_initial', '2023-09-15 18:47:58.579843'),
(22, 'admin_interface', '0002_add_related_modal', '2023-09-15 18:47:58.653317'),
(23, 'admin_interface', '0003_add_logo_color', '2023-09-15 18:47:58.668775'),
(24, 'admin_interface', '0004_rename_title_color', '2023-09-15 18:47:58.681173'),
(25, 'admin_interface', '0005_add_recent_actions_visible', '2023-09-15 18:47:58.697196'),
(26, 'admin_interface', '0006_bytes_to_str', '2023-09-15 18:47:58.751244'),
(27, 'admin_interface', '0007_add_favicon', '2023-09-15 18:47:58.766349'),
(28, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-09-15 18:47:58.794064'),
(29, 'admin_interface', '0009_add_enviroment', '2023-09-15 18:47:58.836967'),
(30, 'admin_interface', '0010_add_localization', '2023-09-15 18:47:58.861919'),
(31, 'admin_interface', '0011_add_environment_options', '2023-09-15 18:47:58.910652'),
(32, 'admin_interface', '0012_update_verbose_names', '2023-09-15 18:47:58.918105'),
(33, 'admin_interface', '0013_add_related_modal_close_button', '2023-09-15 18:47:58.933499'),
(34, 'admin_interface', '0014_name_unique', '2023-09-15 18:47:58.947832'),
(35, 'admin_interface', '0015_add_language_chooser_active', '2023-09-15 18:47:58.964172'),
(36, 'admin_interface', '0016_add_language_chooser_display', '2023-09-15 18:47:58.981570'),
(37, 'admin_interface', '0017_change_list_filter_dropdown', '2023-09-15 18:47:58.986621'),
(38, 'admin_interface', '0018_theme_list_filter_sticky', '2023-09-15 18:47:59.002674'),
(39, 'admin_interface', '0019_add_form_sticky', '2023-09-15 18:47:59.032304'),
(40, 'admin_interface', '0020_module_selected_colors', '2023-09-15 18:47:59.084354'),
(41, 'admin_interface', '0021_file_extension_validator', '2023-09-15 18:47:59.093358'),
(42, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-09-15 18:47:59.123279'),
(43, 'admin_interface', '0023_theme_foldable_apps', '2023-09-15 18:47:59.143922'),
(44, 'admin_interface', '0024_remove_theme_css', '2023-09-15 18:47:59.158010'),
(45, 'admin_interface', '0025_theme_language_chooser_control', '2023-09-15 18:47:59.172245'),
(46, 'admin_interface', '0026_theme_list_filter_highlight', '2023-09-15 18:47:59.191527'),
(47, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-09-15 18:47:59.206502'),
(48, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-09-15 18:47:59.235612'),
(49, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-09-15 18:47:59.251244'),
(50, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-09-15 18:47:59.305894');

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
('6xnz2x96ncgb293igfraftokpuk87o0z', '.eJxVjDsOwjAQBe_iGlm7TvyjpOcM1jq7JgEUS3FSIe4OkVJA-2bmvVSibR3T1mRJE6uzQnX63TIND5l3wHeab1UPdV6XKetd0Qdt-lpZnpfD_TsYqY3f2gnljryUXIztPUYIzhYLwWJg710ARBTHHbgYe4Fo2BmwAwmaUrhX7w_L9Tcb:1qh9O4:QtFFcwXmq-_quPoqYL80w6ECOv_yuCLL8Y1fJJWqp3Q', '2023-09-29 14:01:36.279537'),
('mif8u2xcjspb247en8oxnokbsfnhzkfx', '.eJxVjEEOwiAQRe_C2hDoMDC4dO8ZCDBUqoYmpV0Z765NutDtf-_9lwhxW2vYelnCxOIsjDj9binmR2k74Htst1nmua3LlOSuyIN2eZ25PC-H-3dQY6_fevBK-ZEJCZMtNKLypLPNNrKOBAYTsXNMjhAwMQCBI7KDMdpDzla8P8QLNrI:1qhG1m:o5pmxUiBbpk6dBCFMTMW0Gu_LcTTCTWh8vHAEvoWFV8', '2023-09-29 21:07:02.503859');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` bigint(20) NOT NULL,
  `lightning` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `lightning`) VALUES
(1, 'Luces'),
(2, 'Sonido'),
(3, 'Cámara de Humo'),
(4, 'Lanza Confetti');

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
  `phone` int(10) UNSIGNED NOT NULL CHECK (`phone` >= 0),
  `incident_date` date NOT NULL,
  `detailed_description` longtext NOT NULL,
  `product_or_services_name` varchar(50) NOT NULL,
  `invoice_or_transacion_number` int(10) UNSIGNED NOT NULL CHECK (`invoice_or_transacion_number` >= 0),
  `preference_contact_id` bigint(20) NOT NULL,
  `type_pqrsd_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fidelizacion`
--

INSERT INTO `fidelizacion` (`id`, `full_name`, `email`, `phone`, `incident_date`, `detailed_description`, `product_or_services_name`, `invoice_or_transacion_number`, `preference_contact_id`, `type_pqrsd_id`) VALUES
(1, 'Juan Ospina', 'hola@gmail.com', 3245345, '2023-09-20', 'reclamo', 'manteles malaos', 45354656, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` bigint(20) NOT NULL,
  `genero` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'No Binario');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productotipo`
--

CREATE TABLE `productotipo` (
  `id` bigint(20) NOT NULL,
  `catering_id` bigint(20) NOT NULL,
  `drink_id` bigint(20) NOT NULL,
  `equipment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pse cuenta de ahorro y corriente`
--

CREATE TABLE `pse cuenta de ahorro y corriente` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `identification_number` int(10) UNSIGNED NOT NULL CHECK (`identification_number` >= 0),
  `email` varchar(254) NOT NULL,
  `phone_number` int(10) UNSIGNED NOT NULL CHECK (`phone_number` >= 0),
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
  `phone` int(10) UNSIGNED NOT NULL CHECK (`phone` >= 0),
  `event_date` datetime(6) NOT NULL,
  `event_start_time` time(6) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `special_need` varchar(200) NOT NULL,
  `guest_document` varchar(200) NOT NULL,
  `campus_id` bigint(20) NOT NULL,
  `eventType_id` bigint(20) NOT NULL,
  `gender_id` bigint(20) NOT NULL,
  `lounge_id` bigint(20) NOT NULL,
  `type_pay_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`id`, `name`, `lastname`, `email`, `phone`, `event_date`, `event_start_time`, `theme`, `description`, `special_need`, `guest_document`, `campus_id`, `eventType_id`, `gender_id`, `lounge_id`, `type_pay_id`) VALUES
(1, 'juan', 'ospina', 'hola@gmail.com', 2352345, '2023-09-20 05:00:00.000000', '09:00:00.000000', 'flores', 'que sea buena', 'campo para silla de ruedas', '67645765', 2, 3, 1, 2, 1),
(2, 'kerly', 'yeray', 'kevinduban77@gmail.com', 321321, '2023-09-20 05:00:00.000000', '09:00:00.000000', 'flores', 'que sea buena', 'campo para silla de ruedas', '67645765', 3, 3, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salon`
--

CREATE TABLE `salon` (
  `id` bigint(20) NOT NULL,
  `lounge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salon`
--

INSERT INTO `salon` (`id`, `lounge`) VALUES
(1, 'Salón 1'),
(2, 'Salón 2'),
(3, 'Salón 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `id` bigint(20) NOT NULL,
  `campus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`id`, `campus`) VALUES
(1, 'Teusaquillo'),
(2, 'Santa Isabel'),
(3, 'Comuneros');

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
(4, 'Caja Social'),
(5, 'Banco De Bogotá'),
(6, 'Davivienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta de credito y debito`
--

CREATE TABLE `tarjeta de credito y debito` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `card_number` int(10) UNSIGNED NOT NULL CHECK (`card_number` >= 0),
  `expiration` date NOT NULL,
  `cw` bigint(20) UNSIGNED NOT NULL CHECK (`cw` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjeta de credito y debito`
--

INSERT INTO `tarjeta de credito y debito` (`id`, `full_name`, `card_number`, `expiration`, `cw`) VALUES
(1, 'Juan Ospina', 10345454, '2023-09-10', 5654754),
(2, 'Juan Ospina', 1234555, '2022-10-09', 2323);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de identificacion`
--

CREATE TABLE `tipo de identificacion` (
  `id` bigint(20) NOT NULL,
  `type_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo de identificacion`
--

INSERT INTO `tipo de identificacion` (`id`, `type_id`) VALUES
(1, 'CC- Cedula De Ciudad'),
(2, 'CE- Cédula De Extran'),
(3, 'PPN- Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de insumo`
--

CREATE TABLE `tipo de insumo` (
  `id` bigint(20) NOT NULL,
  `type_of_input` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, 'Persona Juridica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoevento`
--

CREATE TABLE `tipoevento` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoevento`
--

INSERT INTO `tipoevento` (`id`, `event_type`) VALUES
(1, 'Matrimonio'),
(2, 'Bautizos'),
(3, '15 Años'),
(4, 'Despedidas Empresariales'),
(5, 'Grados'),
(6, 'Cumpleaños');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `id` bigint(20) NOT NULL,
  `type_pay` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`id`, `type_pay`) VALUES
(1, 'nequi');

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
(5, 'Denuncias'),
(6, 'Bebidas'),
(7, 'Catering'),
(8, 'Equipos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alquiler_catering`
--
ALTER TABLE `alquiler_catering`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alquiler_catering_rent_id_catering_id_fbdc889a_uniq` (`rent_id`,`catering_id`),
  ADD KEY `alquiler_catering_catering_id_9e9911fb_fk_catering_id` (`catering_id`);

--
-- Indices de la tabla `alquiler_drink`
--
ALTER TABLE `alquiler_drink`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alquiler_drink_rent_id_drink_id_b4561b59_uniq` (`rent_id`,`drink_id`),
  ADD KEY `alquiler_drink_drink_id_74759ca6_fk_bebida_id` (`drink_id`);

--
-- Indices de la tabla `alquiler_equipment`
--
ALTER TABLE `alquiler_equipment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alquiler_equipment_rent_id_equipment_id_f06a3e82_uniq` (`rent_id`,`equipment_id`),
  ADD KEY `alquiler_equipment_equipment_id_6bfbe52a_fk_equipos_id` (`equipment_id`);

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
-- Indices de la tabla `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventario_type_of_input_id_da8b4832_fk_Tipo de insumo_id` (`type_of_input_id`);

--
-- Indices de la tabla `productotipo`
--
ALTER TABLE `productotipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catering_id` (`catering_id`),
  ADD UNIQUE KEY `drink_id` (`drink_id`),
  ADD UNIQUE KEY `equipment_id` (`equipment_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `Reserva_campus_id_995f53fc_fk_sede_id` (`campus_id`),
  ADD KEY `Reserva_eventType_id_a9a7db55_fk_tipoevento_id` (`eventType_id`),
  ADD KEY `Reserva_gender_id_2f607784_fk_Genero_id` (`gender_id`),
  ADD KEY `Reserva_lounge_id_c6536743_fk_salon_id` (`lounge_id`),
  ADD KEY `Reserva_type_pay_id_797df3e4_fk_tipopago_id` (`type_pay_id`);

--
-- Indices de la tabla `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
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
-- Indices de la tabla `tipoevento`
--
ALTER TABLE `tipoevento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
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
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alquiler_catering`
--
ALTER TABLE `alquiler_catering`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alquiler_drink`
--
ALTER TABLE `alquiler_drink`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alquiler_equipment`
--
ALTER TABLE `alquiler_equipment`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT de la tabla `bebida`
--
ALTER TABLE `bebida`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `catering`
--
ALTER TABLE `catering`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `como prefire ser contactado`
--
ALTER TABLE `como prefire ser contactado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productotipo`
--
ALTER TABLE `productotipo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pse cuenta de ahorro y corriente`
--
ALTER TABLE `pse cuenta de ahorro y corriente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `salon`
--
ALTER TABLE `salon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seleccion de banco`
--
ALTER TABLE `seleccion de banco`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tarjeta de credito y debito`
--
ALTER TABLE `tarjeta de credito y debito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo de identificacion`
--
ALTER TABLE `tipo de identificacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo de insumo`
--
ALTER TABLE `tipo de insumo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo de persona`
--
ALTER TABLE `tipo de persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoevento`
--
ALTER TABLE `tipoevento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo pqrsd`
--
ALTER TABLE `tipo pqrsd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler_catering`
--
ALTER TABLE `alquiler_catering`
  ADD CONSTRAINT `alquiler_catering_catering_id_9e9911fb_fk_catering_id` FOREIGN KEY (`catering_id`) REFERENCES `catering` (`id`),
  ADD CONSTRAINT `alquiler_catering_rent_id_e4c172a9_fk_alquiler_id` FOREIGN KEY (`rent_id`) REFERENCES `alquiler` (`id`);

--
-- Filtros para la tabla `alquiler_drink`
--
ALTER TABLE `alquiler_drink`
  ADD CONSTRAINT `alquiler_drink_drink_id_74759ca6_fk_bebida_id` FOREIGN KEY (`drink_id`) REFERENCES `bebida` (`id`),
  ADD CONSTRAINT `alquiler_drink_rent_id_d3747ff2_fk_alquiler_id` FOREIGN KEY (`rent_id`) REFERENCES `alquiler` (`id`);

--
-- Filtros para la tabla `alquiler_equipment`
--
ALTER TABLE `alquiler_equipment`
  ADD CONSTRAINT `alquiler_equipment_equipment_id_6bfbe52a_fk_equipos_id` FOREIGN KEY (`equipment_id`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `alquiler_equipment_rent_id_8c2b5be2_fk_alquiler_id` FOREIGN KEY (`rent_id`) REFERENCES `alquiler` (`id`);

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
-- Filtros para la tabla `productotipo`
--
ALTER TABLE `productotipo`
  ADD CONSTRAINT `productotipo_catering_id_0879ecf0_fk_catering_id` FOREIGN KEY (`catering_id`) REFERENCES `catering` (`id`),
  ADD CONSTRAINT `productotipo_drink_id_47f4fa52_fk_bebida_id` FOREIGN KEY (`drink_id`) REFERENCES `bebida` (`id`),
  ADD CONSTRAINT `productotipo_equipment_id_c262227a_fk_equipos_id` FOREIGN KEY (`equipment_id`) REFERENCES `equipos` (`id`);

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

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `Reserva_campus_id_995f53fc_fk_sede_id` FOREIGN KEY (`campus_id`) REFERENCES `sede` (`id`),
  ADD CONSTRAINT `Reserva_eventType_id_a9a7db55_fk_tipoevento_id` FOREIGN KEY (`eventType_id`) REFERENCES `tipoevento` (`id`),
  ADD CONSTRAINT `Reserva_gender_id_2f607784_fk_Genero_id` FOREIGN KEY (`gender_id`) REFERENCES `genero` (`id`),
  ADD CONSTRAINT `Reserva_lounge_id_c6536743_fk_salon_id` FOREIGN KEY (`lounge_id`) REFERENCES `salon` (`id`),
  ADD CONSTRAINT `Reserva_type_pay_id_797df3e4_fk_tipopago_id` FOREIGN KEY (`type_pay_id`) REFERENCES `tipopago` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
