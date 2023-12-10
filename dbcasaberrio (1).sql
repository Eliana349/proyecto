-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2023 a las 17:19:22
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
(1, 'Django', 1, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` bigint(20) NOT NULL,
  `date_start` datetime(6) NOT NULL,
  `date_finish` datetime(6) NOT NULL,
  `elementos_alquilar` longtext NOT NULL,
  `precio_total` int(11) NOT NULL,
  `nombre_usuario_id` int(11) NOT NULL
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
(29, 'Can add Categoria alquiler', 8, 'add_category'),
(30, 'Can change Categoria alquiler', 8, 'change_category'),
(31, 'Can delete Categoria alquiler', 8, 'delete_category'),
(32, 'Can view Categoria alquiler', 8, 'view_category'),
(33, 'Can add cotización', 9, 'add_cotizacion'),
(34, 'Can change cotización', 9, 'change_cotizacion'),
(35, 'Can delete cotización', 9, 'delete_cotizacion'),
(36, 'Can view cotización', 9, 'view_cotizacion'),
(37, 'Can add Inventario', 10, 'add_inventory'),
(38, 'Can change Inventario', 10, 'change_inventory'),
(39, 'Can delete Inventario', 10, 'delete_inventory'),
(40, 'Can view Inventario', 10, 'view_inventory'),
(41, 'Can add Como prefire ser contactado', 11, 'add_preferencecontact'),
(42, 'Can change Como prefire ser contactado', 11, 'change_preferencecontact'),
(43, 'Can delete Como prefire ser contactado', 11, 'delete_preferencecontact'),
(44, 'Can view Como prefire ser contactado', 11, 'view_preferencecontact'),
(45, 'Can add Nombre de producto/servicio', 12, 'add_product_or_services_name'),
(46, 'Can change Nombre de producto/servicio', 12, 'change_product_or_services_name'),
(47, 'Can delete Nombre de producto/servicio', 12, 'delete_product_or_services_name'),
(48, 'Can view Nombre de producto/servicio', 12, 'view_product_or_services_name'),
(49, 'Can add Reserva', 13, 'add_reserva'),
(50, 'Can change Reserva', 13, 'change_reserva'),
(51, 'Can delete Reserva', 13, 'delete_reserva'),
(52, 'Can view Reserva', 13, 'view_reserva'),
(53, 'Can add Seleccion de banco', 14, 'add_selectbank'),
(54, 'Can change Seleccion de banco', 14, 'change_selectbank'),
(55, 'Can delete Seleccion de banco', 14, 'delete_selectbank'),
(56, 'Can view Seleccion de banco', 14, 'view_selectbank'),
(57, 'Can add Tarjeta de credito y debito', 15, 'add_tarjetadecd'),
(58, 'Can change Tarjeta de credito y debito', 15, 'change_tarjetadecd'),
(59, 'Can delete Tarjeta de credito y debito', 15, 'delete_tarjetadecd'),
(60, 'Can view Tarjeta de credito y debito', 15, 'view_tarjetadecd'),
(61, 'Can add Tipo de identificacion', 16, 'add_typeid'),
(62, 'Can change Tipo de identificacion', 16, 'change_typeid'),
(63, 'Can delete Tipo de identificacion', 16, 'delete_typeid'),
(64, 'Can view Tipo de identificacion', 16, 'view_typeid'),
(65, 'Can add Tipo de insumo', 17, 'add_typeofinput'),
(66, 'Can change Tipo de insumo', 17, 'change_typeofinput'),
(67, 'Can delete Tipo de insumo', 17, 'delete_typeofinput'),
(68, 'Can view Tipo de insumo', 17, 'view_typeofinput'),
(69, 'Can add Tipo de persona', 18, 'add_typeperson'),
(70, 'Can change Tipo de persona', 18, 'change_typeperson'),
(71, 'Can delete Tipo de persona', 18, 'delete_typeperson'),
(72, 'Can view Tipo de persona', 18, 'view_typeperson'),
(73, 'Can add Tipo pqrsd', 19, 'add_typepqrsd'),
(74, 'Can change Tipo pqrsd', 19, 'change_typepqrsd'),
(75, 'Can delete Tipo pqrsd', 19, 'delete_typepqrsd'),
(76, 'Can view Tipo pqrsd', 19, 'view_typepqrsd'),
(77, 'Can add Alquiler', 20, 'add_carrito'),
(78, 'Can change Alquiler', 20, 'change_carrito'),
(79, 'Can delete Alquiler', 20, 'delete_carrito'),
(80, 'Can view Alquiler', 20, 'view_carrito'),
(81, 'Can add Fidelizacion', 21, 'add_loyalty'),
(82, 'Can change Fidelizacion', 21, 'change_loyalty'),
(83, 'Can delete Fidelizacion', 21, 'delete_loyalty'),
(84, 'Can view Fidelizacion', 21, 'view_loyalty'),
(85, 'Can add Producto alquiler', 22, 'add_product'),
(86, 'Can change Producto alquiler', 22, 'change_product'),
(87, 'Can delete Producto alquiler', 22, 'delete_product'),
(88, 'Can view Producto alquiler', 22, 'view_product'),
(89, 'Can add detalle compra', 23, 'add_detallecompra'),
(90, 'Can change detalle compra', 23, 'change_detallecompra'),
(91, 'Can delete detalle compra', 23, 'delete_detallecompra'),
(92, 'Can view detalle compra', 23, 'view_detallecompra'),
(93, 'Can add Estado pqrsd', 24, 'add_statepqrsd'),
(94, 'Can change Estado pqrsd', 24, 'change_statepqrsd'),
(95, 'Can delete Estado pqrsd', 24, 'delete_statepqrsd'),
(96, 'Can view Estado pqrsd', 24, 'view_statepqrsd'),
(97, 'Can add Estado Producto', 25, 'add_stateproduct'),
(98, 'Can change Estado Producto', 25, 'change_stateproduct'),
(99, 'Can delete Estado Producto', 25, 'delete_stateproduct'),
(100, 'Can view Estado Producto', 25, 'view_stateproduct'),
(101, 'Can add Proveedor', 26, 'add_supplier'),
(102, 'Can change Proveedor', 26, 'change_supplier'),
(103, 'Can delete Proveedor', 26, 'delete_supplier'),
(104, 'Can view Proveedor', 26, 'view_supplier'),
(105, 'Can add Tipo de producto alquilar', 27, 'add_tipodeproducto'),
(106, 'Can change Tipo de producto alquilar', 27, 'change_tipodeproducto'),
(107, 'Can delete Tipo de producto alquilar', 27, 'delete_tipodeproducto'),
(108, 'Can view Tipo de producto alquilar', 27, 'view_tipodeproducto'),
(109, 'Can add PSE Cuenta de ahorro y corriente', 28, 'add_pse'),
(110, 'Can change PSE Cuenta de ahorro y corriente', 28, 'change_pse'),
(111, 'Can delete PSE Cuenta de ahorro y corriente', 28, 'delete_pse'),
(112, 'Can view PSE Cuenta de ahorro y corriente', 28, 'view_pse'),
(113, 'Can add pqrs', 29, 'add_pqrs'),
(114, 'Can change pqrs', 29, 'change_pqrs'),
(115, 'Can delete pqrs', 29, 'delete_pqrs'),
(116, 'Can view pqrs', 29, 'view_pqrs');

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
(1, 'pbkdf2_sha256$720000$78a2oTOgIsZxEFlGcdKZmv$R1bTKE7QEZrXxwNs92Sg62cVxsyAVbDuXzpnGGRdZd8=', '2023-12-10 16:10:23.957699', 0, 'kerly1122', 'kerly', 'gutierrez', 'kerly@gmail.com', 0, 1, '2023-12-10 16:10:23.765656'),
(2, 'pbkdf2_sha256$720000$63I6rFC2H1gsWmHS6CcIM4$i90xW+CC158KxqZO8JzL9AufgJ6N2BozzwwE7EWnmv4=', '2023-12-10 16:13:31.189783', 1, 'admin', '', '', 'sekek@gmail.com', 1, 1, '2023-12-10 16:13:19.047451');

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
-- Estructura de tabla para la tabla `categoria_alquilar`
--

CREATE TABLE `categoria_alquilar` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `como prefire ser contactado`
--

CREATE TABLE `como prefire ser contactado` (
  `id` bigint(20) NOT NULL,
  `preference_contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_detallecompra`
--

CREATE TABLE `core_detallecompra` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `cotizacion_id` bigint(20) NOT NULL,
  `Product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_pqrs`
--

CREATE TABLE `core_pqrs` (
  `id` bigint(20) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `descripcion` longtext NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_pqrs`
--

INSERT INTO `core_pqrs` (`id`, `tipo`, `descripcion`, `estado`) VALUES
(1, 'P', 'jejejejeje', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_duration` int(10) UNSIGNED NOT NULL CHECK (`event_duration` >= 0),
  `event_location` varchar(100) NOT NULL,
  `salon_number` varchar(100) NOT NULL,
  `number_of_guests` int(10) UNSIGNED NOT NULL CHECK (`number_of_guests` >= 0),
  `menu` varchar(20) NOT NULL,
  `childrens_menu` int(10) UNSIGNED NOT NULL CHECK (`childrens_menu` >= 0),
  `additional_entries` varchar(20) NOT NULL,
  `additional_comments` longtext NOT NULL,
  `additional_services` varchar(200) NOT NULL,
  `required_services` longtext NOT NULL,
  `theme` varchar(200) NOT NULL,
  `special_need` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, '2023-12-10 16:15:30.411402', '1', 'Petición - Pendiente', 1, '[{\"added\": {}}]', 29, 2);

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
(20, 'core', 'carrito'),
(8, 'core', 'category'),
(9, 'core', 'cotizacion'),
(23, 'core', 'detallecompra'),
(10, 'core', 'inventory'),
(21, 'core', 'loyalty'),
(29, 'core', 'pqrs'),
(11, 'core', 'preferencecontact'),
(22, 'core', 'product'),
(12, 'core', 'product_or_services_name'),
(28, 'core', 'pse'),
(13, 'core', 'reserva'),
(14, 'core', 'selectbank'),
(24, 'core', 'statepqrsd'),
(25, 'core', 'stateproduct'),
(26, 'core', 'supplier'),
(15, 'core', 'tarjetadecd'),
(27, 'core', 'tipodeproducto'),
(16, 'core', 'typeid'),
(17, 'core', 'typeofinput'),
(18, 'core', 'typeperson'),
(19, 'core', 'typepqrsd'),
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
(1, 'contenttypes', '0001_initial', '2023-12-10 16:09:53.375341'),
(2, 'auth', '0001_initial', '2023-12-10 16:09:54.057838'),
(3, 'admin', '0001_initial', '2023-12-10 16:09:54.217831'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-10 16:09:54.226833'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-10 16:09:54.233835'),
(6, 'admin_interface', '0001_initial', '2023-12-10 16:09:54.254840'),
(7, 'admin_interface', '0002_add_related_modal', '2023-12-10 16:09:54.308855'),
(8, 'admin_interface', '0003_add_logo_color', '2023-12-10 16:09:54.326856'),
(9, 'admin_interface', '0004_rename_title_color', '2023-12-10 16:09:54.338858'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-12-10 16:09:54.354862'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-12-10 16:09:54.384868'),
(12, 'admin_interface', '0007_add_favicon', '2023-12-10 16:09:54.400872'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-12-10 16:09:54.427878'),
(14, 'admin_interface', '0009_add_enviroment', '2023-12-10 16:09:54.455884'),
(15, 'admin_interface', '0010_add_localization', '2023-12-10 16:09:54.466887'),
(16, 'admin_interface', '0011_add_environment_options', '2023-12-10 16:09:54.513897'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-12-10 16:09:54.520899'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-12-10 16:09:54.534902'),
(19, 'admin_interface', '0014_name_unique', '2023-12-10 16:09:54.557907'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-12-10 16:09:54.575912'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-12-10 16:09:54.589915'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-12-10 16:09:54.594916'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-12-10 16:09:54.609919'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-12-10 16:09:54.637925'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-12-10 16:09:54.670933'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-12-10 16:09:54.677934'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-12-10 16:09:54.705940'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-12-10 16:09:54.722944'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-12-10 16:09:54.733947'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-12-10 16:09:54.750951'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-12-10 16:09:54.766954'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-12-10 16:09:54.780957'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-12-10 16:09:54.810964'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-12-10 16:09:54.826968'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-12-10 16:09:54.879979'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-12-10 16:09:54.984002'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-12-10 16:09:55.055019'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-12-10 16:09:55.073023'),
(39, 'auth', '0004_alter_user_username_opts', '2023-12-10 16:09:55.080024'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-12-10 16:09:55.132042'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-12-10 16:09:55.136036'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-12-10 16:09:55.144038'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-12-10 16:09:55.158041'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-12-10 16:09:55.174046'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-12-10 16:09:55.188048'),
(46, 'auth', '0011_update_proxy_permissions', '2023-12-10 16:09:55.197050'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-12-10 16:09:55.213055'),
(48, 'core', '0001_initial', '2023-12-10 16:09:56.565572'),
(49, 'sessions', '0001_initial', '2023-12-10 16:09:56.610591'),
(50, 'core', '0002_pqrs', '2023-12-10 16:15:10.881907');

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
('g8r26m25ica4xkvwr9wgnegbetqveslg', '.eJxVjEEOwiAQRe_C2hDKCAwu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERWpx-t0jpkdsO-E7tNss0t3WZotwVedAux5nz83q4fweVev3W1kFJDrVK3sVUEJlQEdgYkyZ9VtkwmDIwIxpgMpS9czqCHcAXJiveH_AkODw:1rCMQt:UL_gq8e6KyJnvht8gNFgH_QYNaZFqrdhO7CBquk5NXo', '2023-12-24 16:13:31.201786');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_pqrsd`
--

CREATE TABLE `estado_pqrsd` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `loyalty_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_producto`
--

CREATE TABLE `estado_producto` (
  `id` bigint(20) NOT NULL,
  `estadoP` varchar(20) NOT NULL,
  `inventory_id` bigint(20) DEFAULT NULL
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
  `product_or_services_name` varchar(200) NOT NULL,
  `filing_number` int(10) UNSIGNED NOT NULL CHECK (`filing_number` >= 0),
  `preference_contact_id` bigint(20) NOT NULL,
  `type_pqrsd_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estructura de tabla para la tabla `nombre de producto/servicio`
--

CREATE TABLE `nombre de producto/servicio` (
  `id` bigint(20) NOT NULL,
  `product_or_services_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_alquiler`
--

CREATE TABLE `producto_alquiler` (
  `id` bigint(20) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `categoria_id` bigint(20) NOT NULL
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
  `event_date` date NOT NULL,
  `event_start_time` time(6) NOT NULL,
  `end_time_of_the_event` time(6) NOT NULL,
  `eventType` varchar(200) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `special_need` varchar(200) NOT NULL,
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta de credito y debito`
--

CREATE TABLE `tarjeta de credito y debito` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `card_number` int(10) UNSIGNED NOT NULL CHECK (`card_number` >= 0),
  `expiration` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de identificacion`
--

CREATE TABLE `tipo de identificacion` (
  `id` bigint(20) NOT NULL,
  `type_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo pqrsd`
--

CREATE TABLE `tipo pqrsd` (
  `id` bigint(20) NOT NULL,
  `type_pqrsd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_producto_alquilar`
--

CREATE TABLE `tipo_de_producto_alquilar` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` decimal(8,0) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `Alquiler_nombre_usuario_id_d6461797_fk_auth_user_id` (`nombre_usuario_id`);

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
-- Indices de la tabla `categoria_alquilar`
--
ALTER TABLE `categoria_alquilar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `como prefire ser contactado`
--
ALTER TABLE `como prefire ser contactado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_detallecompra`
--
ALTER TABLE `core_detallecompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_detallecompra_cotizacion_id_3c718037_fk_cotizacion_id` (`cotizacion_id`),
  ADD KEY `core_detallecompra_Product_id_392c602e_fk_Producto_alquiler_id` (`Product_id`);

--
-- Indices de la tabla `core_pqrs`
--
ALTER TABLE `core_pqrs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
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
  ADD KEY `estado_producto_inventory_id_a1f7d3b3_fk_inventario_id` (`inventory_id`);

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
-- Indices de la tabla `nombre de producto/servicio`
--
ALTER TABLE `nombre de producto/servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_alquiler`
--
ALTER TABLE `producto_alquiler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `imagen` (`imagen`),
  ADD KEY `Producto_alquiler_categoria_id_513e592f_fk_categoria_alquilar_id` (`categoria_id`);

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
-- Indices de la tabla `tipo_de_producto_alquilar`
--
ALTER TABLE `tipo_de_producto_alquilar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tipo_de_producto_alq_product_id_585ef251_fk_Producto_` (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

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
-- AUTO_INCREMENT de la tabla `categoria_alquilar`
--
ALTER TABLE `categoria_alquilar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `como prefire ser contactado`
--
ALTER TABLE `como prefire ser contactado`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_detallecompra`
--
ALTER TABLE `core_detallecompra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_pqrs`
--
ALTER TABLE `core_pqrs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `estado_pqrsd`
--
ALTER TABLE `estado_pqrsd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fidelizacion`
--
ALTER TABLE `fidelizacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nombre de producto/servicio`
--
ALTER TABLE `nombre de producto/servicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto_alquiler`
--
ALTER TABLE `producto_alquiler`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seleccion de banco`
--
ALTER TABLE `seleccion de banco`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjeta de credito y debito`
--
ALTER TABLE `tarjeta de credito y debito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo de identificacion`
--
ALTER TABLE `tipo de identificacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo de insumo`
--
ALTER TABLE `tipo de insumo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo de persona`
--
ALTER TABLE `tipo de persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo pqrsd`
--
ALTER TABLE `tipo pqrsd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_producto_alquilar`
--
ALTER TABLE `tipo_de_producto_alquilar`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `Alquiler_nombre_usuario_id_d6461797_fk_auth_user_id` FOREIGN KEY (`nombre_usuario_id`) REFERENCES `auth_user` (`id`);

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
-- Filtros para la tabla `core_detallecompra`
--
ALTER TABLE `core_detallecompra`
  ADD CONSTRAINT `core_detallecompra_Product_id_392c602e_fk_Producto_alquiler_id` FOREIGN KEY (`Product_id`) REFERENCES `producto_alquiler` (`id`),
  ADD CONSTRAINT `core_detallecompra_cotizacion_id_3c718037_fk_cotizacion_id` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizacion` (`id`);

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
  ADD CONSTRAINT `estado_producto_inventory_id_a1f7d3b3_fk_inventario_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventario` (`id`);

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
-- Filtros para la tabla `producto_alquiler`
--
ALTER TABLE `producto_alquiler`
  ADD CONSTRAINT `Producto_alquiler_categoria_id_513e592f_fk_categoria_alquilar_id` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_alquilar` (`id`);

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
-- Filtros para la tabla `tipo_de_producto_alquilar`
--
ALTER TABLE `tipo_de_producto_alquilar`
  ADD CONSTRAINT `Tipo_de_producto_alq_product_id_585ef251_fk_Producto_` FOREIGN KEY (`product_id`) REFERENCES `producto_alquiler` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
