-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-11-2022 a las 03:50:10
-- Versión del servidor: 5.7.39-cll-lve
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `miesdinapentk_MiesDinapen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Intervenciones`
--

CREATE TABLE `Intervenciones` (
  `IDIntervencion` int(10) UNSIGNED NOT NULL COMMENT 'Identificador único de la Intervecion',
  `IDOperador` smallint(5) UNSIGNED NOT NULL COMMENT 'Operador encargado de la intervecion',
  `IDOrganCooperante` smallint(5) UNSIGNED NOT NULL COMMENT 'Organizacion cooperante en la intervecion',
  `IDPersonaIntervenida` int(10) UNSIGNED DEFAULT NULL COMMENT 'Persona intervenida',
  `Latitud` decimal(22,18) DEFAULT NULL COMMENT 'Latitud geográfica donde se hace la intervencion',
  `Longitud` decimal(22,18) DEFAULT NULL COMMENT 'Longitud geográfica donde se hace la intervencion',
  `NumPerGrupo` tinyint(3) DEFAULT '0' COMMENT 'Numero de personas encontradas en el grupo intervenido',
  `Referencia` varchar(200) DEFAULT NULL,
  `NombreRepresentante` varchar(200) DEFAULT NULL,
  `DerivEspecifi` varchar(200) DEFAULT NULL COMMENT 'Especificar las derivaciones y acciones tomadas de ser el caso',
  `IDCircunstancia` tinyint(3) DEFAULT NULL,
  `IDCondicion` tinyint(3) DEFAULT NULL,
  `IDEstudio` tinyint(3) DEFAULT NULL COMMENT 'Informacion si el Intervenido estudia',
  `NoEstudio` varchar(50) DEFAULT NULL COMMENT 'Encaso de que no estudie especificar porqué',
  `UltAñoEstudio` tinyint(3) DEFAULT NULL COMMENT 'Ultimo año de estudio aprobado',
  `InsEduEstudio` varchar(200) DEFAULT NULL COMMENT 'Nombre y dirección de la institución educativa',
  `RefIDProvincia` tinyint(3) DEFAULT NULL COMMENT 'Provincia donde reside el intervenido',
  `RefIDCanton` smallint(6) DEFAULT NULL COMMENT 'Canton donde  reside el intervenido',
  `RefIDParroquia` int(11) DEFAULT NULL COMMENT 'Parroquia donde  reside el intervenido',
  `DireccionCallePrincial` varchar(50) DEFAULT NULL COMMENT 'Nombre Calle Principal',
  `DireccionNumero` varchar(6) DEFAULT NULL COMMENT 'Numero de calle ',
  `DireccionCalleInterseccion` varchar(50) DEFAULT NULL COMMENT 'Nombre Calle Secundaria',
  `NumHijos` tinyint(3) DEFAULT '0' COMMENT 'Numero de hijos que tiene la persona intervenida de ser el caso',
  `IDViveCon` tinyint(3) DEFAULT NULL COMMENT '¿Con quién vive ahora?',
  `NumTelefono` varchar(22) DEFAULT NULL COMMENT 'Número de telefono del intervenido',
  `FechaIntervencion` date DEFAULT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DiasLaborales` tinyint(4) DEFAULT '0' COMMENT 'Cuantos dias trabaja a la semana',
  `TiempoLaboral` varchar(50) DEFAULT NULL COMMENT 'Cuanto tiempo que realiza la actividad laboral',
  `GrupoLaboral` varchar(50) DEFAULT NULL COMMENT 'Con quien realiza la actividad',
  `NumGrupoLaboral` tinyint(4) DEFAULT '0' COMMENT 'Numero de personas que le acompañan a trabajar',
  `IngresosDiariosLaboral` varchar(50) DEFAULT NULL COMMENT 'Ingresos diarios',
  `Comentarios` varchar(200) DEFAULT NULL COMMENT 'Comentarios extras de la intervencion',
  `Estado` varchar(20) DEFAULT 'Ingresado',
  `HorasLaborales` varchar(16) DEFAULT NULL,
  `DireccionIntervencion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Intervenciones`
--

INSERT INTO `Intervenciones` (`IDIntervencion`, `IDOperador`, `IDOrganCooperante`, `IDPersonaIntervenida`, `Latitud`, `Longitud`, `NumPerGrupo`, `Referencia`, `NombreRepresentante`, `DerivEspecifi`, `IDCircunstancia`, `IDCondicion`, `IDEstudio`, `NoEstudio`, `UltAñoEstudio`, `InsEduEstudio`, `RefIDProvincia`, `RefIDCanton`, `RefIDParroquia`, `DireccionCallePrincial`, `DireccionNumero`, `DireccionCalleInterseccion`, `NumHijos`, `IDViveCon`, `NumTelefono`, `FechaIntervencion`, `FechaRegistro`, `DiasLaborales`, `TiempoLaboral`, `GrupoLaboral`, `NumGrupoLaboral`, `IngresosDiariosLaboral`, `Comentarios`, `Estado`, `HorasLaborales`, `DireccionIntervencion`) VALUES
(1, 1, 1, 4, '-2.147336318702489000', '-79.912064051227400000', 3, NULL, '', 'accion a tomar', 2, 1, 1, 'no escuelas cerca', 1, 'unidad educativo sin nombre', NULL, NULL, NULL, 'calle 1', NULL, NULL, 0, 2, NULL, '2022-09-21', '2022-06-13 14:24:26', 0, '', '', 0, '', '', 'Completado', '', NULL),
(2, 1, 1, 1, '-2.147336318702489000', '-79.912064051227400000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2002-08-11 13:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(3, 1, 1, 1, '-2.147336318702489000', '-79.912064051227400000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2002-08-11 13:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(4, 1, 1, 1, '-2.147336318702489000', '-79.912064051227400000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-08-11 13:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(5, 1, 1, 1, '-2.147336318702489000', '-79.912064051227400000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-08-11 13:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(10, 1, 1, 1, '-2.147336318702489000', '-79.912064051227400000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-04 08:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(42, 2, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 20:03:16', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(43, 2, 1, 1, '-79.904110000000000000', '-2.062676400000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 15:18:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(44, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 21:38:22', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(45, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 22:13:19', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(46, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 22:16:55', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(47, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 22:22:05', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(48, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 02:51:34', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(49, 1, 1, 6, '-2.172464702095616500', '-79.899116273388530000', 4, NULL, '', 'accion a realizar editado', 2, 1, 1, 'no', 5, 'unidad educativa', NULL, NULL, NULL, 'calle1', NULL, NULL, 0, 2, NULL, '2022-09-21', '2022-09-21 04:29:22', 3, '7 a 12 meses', 'Solo', 3, 'De $11 Hasta $20', 'comentarios extras', 'Completado', '5 a 6 Hrs', NULL),
(50, 2, 1, 1, '-79.919550000000000000', '-2.080966000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-20 23:42:49', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(51, 2, 1, 1, '-79.919530000000000000', '-2.080971700000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 01:29:40', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(52, 2, 1, 1, '-79.919520000000000000', '-2.080983600000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 01:36:54', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(53, 2, 1, 1, '-79.919550000000000000', '-2.080970300000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 01:45:33', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(54, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 06:57:08', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(55, 1, 1, 1, '-79.919530000000000000', '-2.080951200000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 02:04:06', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(56, 1, 1, 1, '-79.898960000000000000', '-2.160375600000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 11:07:52', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(57, 1, 1, 1, '-79.897410000000000000', '-2.162138700000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 11:12:32', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(58, 2, 1, 1, '-79.897750000000000000', '-2.161838500000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 11:17:54', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(59, 1, 1, 1, '-79.904740000000000000', '-2.065247500000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-21 12:50:40', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(60, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-29 04:42:58', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(61, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-29 04:47:33', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(62, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-29 04:56:47', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(63, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-29 04:59:23', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(64, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-09-29 05:01:43', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(65, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-04 00:40:13', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(66, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-04 00:42:51', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(67, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-04 00:49:16', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(68, 1, 1, 7, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', 'prueba', 2, 2, 4, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, 0, 2, NULL, '2022-10-21', '2022-10-04 01:03:25', 0, '13 a 18 meses', 'En grupo', 2, 'De $11 Hasta $20', 'Comentarios extras', 'Completado', '4 a 5 Hrs', NULL),
(69, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-04 01:13:55', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(70, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-04 01:29:14', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(71, 4, 1, 1, '-79.891200000000000000', '-2.265224200000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-04 21:57:51', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(72, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-05 06:22:01', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(73, 2, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-06 22:04:19', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(74, 4, 1, 1, '-79.919510000000000000', '-2.080888700000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 10:47:54', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(75, 4, 1, 1, '-79.897790000000000000', '-2.161673500000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 14:15:41', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(76, 1, 1, 1, '-79.898026000000000000', '-2.161847600000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 14:40:45', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(77, 1, 1, 1, '-79.898544000000000000', '-2.158121600000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 14:53:30', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(78, 2, 1, 1, '-79.919560000000000000', '-2.080912000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 15:43:55', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(79, 3, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 21:00:33', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(80, 4, 1, 1, '-79.897990000000000000', '-2.161425400000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 16:02:03', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(81, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 21:10:45', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(82, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 21:11:15', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(83, 1, 1, 1, '1.000000000000000000', '1.000000000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2000-01-12 00:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(84, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 21:33:58', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(85, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-21 21:35:40', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(86, 1, 1, 1, '1.000000000000000000', '1.000000000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2000-01-12 00:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(87, 4, 1, 1, '-79.919540000000000000', '-2.080885600000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-25 21:45:12', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(88, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 03:14:30', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(89, 4, 1, 1, '0.000000000000000000', '0.000000000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-25 22:19:48', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(90, 1, 1, 1, '0.000000000000000000', '0.000000000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-25 22:52:35', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(91, 4, 1, 1, '-79.919470000000000000', '-2.080866000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 10:26:42', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(92, 1, 1, 1, '-2.080939500000000000', '-79.919495000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 11:04:10', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(93, 1, 1, 1, '37.421997000000000000', '-122.084000000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 16:09:33', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(94, 1, 1, 1, '37.421997000000000000', '-122.084000000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 16:12:30', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(95, 1, 1, 1, '-2.080870900000000000', '-79.919470000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 11:48:10', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(96, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 16:59:03', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(97, 4, 1, 1, '-79.919490000000000000', '-2.080945500000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 12:07:15', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(98, 4, 1, 1, '-79.919480000000000000', '-2.080892300000000000', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 12:07:22', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(99, 1, 1, 1, '1.000000000000000000', '1.000000000000000000', 0, 'daodaomdo', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2000-01-12 00:00:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(100, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:29:15', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(101, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:35:55', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(102, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:37:01', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(103, 4, 1, 1, '0.000000000000000000', '0.000000000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:37:50', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(104, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, ' 2022-10-26 18:39:03', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:39:03', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(105, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:40:33', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(106, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:40:58', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(107, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'referencia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 17:41:21', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(108, 1, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'referencia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 18:43:02', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(109, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 19:26:05', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(110, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 19:45:09', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(112, 4, 2, 9, '-122.084000000000000000', '37.421997000000000000', 0, '', '', '', 3, 2, NULL, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2022-10-27', '2022-10-26 19:51:31', 0, '', '', 0, '', '', 'Completado', '', NULL),
(113, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'Alo', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-10-26 22:58:01', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(114, 4, 2, 11, '-122.084000000000000000', '37.421997000000000000', 0, 'a', '', 'prueba810', 3, 1, 1, 'prueba810', 0, 'prueba810', NULL, NULL, NULL, 'prueba810', NULL, NULL, 0, 1, NULL, '2022-11-08', '2022-11-07 20:21:38', 1, '0 a 6 meses', 'Solo', 0, 'Hasta $5', 'prueba810', 'Completado', '1 a 2 Hrs', NULL),
(117, 1, 1, 1, '-79.805460000000000000', '-2.167158400000000000', 0, 'a', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 20:57:32', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(118, 1, 1, 1, '-79.805504000000000000', '-2.167104500000000000', 0, 'x', 'Freya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 21:24:20', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(119, 3, 1, 1, '-79.805435000000000000', '-2.167134500000000000', 0, 'pruebaF', 'Freya L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 21:47:52', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(120, 2, 1, 20, '-79.919464000000000000', '-2.080924300000000000', 4, 'En la calle 9 de octubre', 'Miguel Riofrio', 'acciuona realziar', NULL, 2, NULL, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2022-11-12', '2022-11-08 22:02:17', 0, '', '', 0, '', 'comments', 'Completado', '', ''),
(121, 2, 1, 1, '-79.919464000000000000', '-2.080916600000000000', 0, 'hial', 'Miguel riofrio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:08:18', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(122, 2, 1, 1, '-79.919464000000000000', '-2.080916400000000000', 0, 'hial', 'Miguel riofrio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:08:59', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(123, 2, 1, 1, '-79.919464000000000000', '-2.080916600000000000', 0, 'hial', 'Miguel riofrio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:09:05', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(124, 1, 1, 1, '-79.918410000000000000', '-2.046295200000000000', 0, 'gaga', 'Joss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:15:24', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(125, 4, 1, 1, '0.000000000000000000', '0.000000000000000000', 0, 'asfhv', 'adjdvdv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:28:16', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(126, 1, 1, 1, '-79.918594000000000000', '-2.045541800000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:24:27', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(127, 1, 1, 1, '-79.918434000000000000', '-2.046180500000000000', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-08 22:31:53', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(128, 1, 1, 16, '-79.918564000000000000', '-2.046269000000000000', 0, '', '', '', NULL, NULL, NULL, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2022-11-09', '2022-11-08 22:33:19', 0, '', '', 0, '', '', 'Completado', '', NULL),
(129, 3, 1, 17, '-79.805500000000000000', '-2.167104500000000000', 0, 'PruebaFreya', 'Freya', '', NULL, NULL, NULL, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, 0, NULL, NULL, '2022-11-09', '2022-11-09 01:41:45', 0, '', '', 0, '', '', 'Completado', '', NULL),
(130, 4, 1, 1, '-79.912220000000000000', '-2.147729600000000000', 0, 'calle 15', 'paul ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-09 10:44:17', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(131, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'Keneth', 'Barcelona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-12 04:53:36', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(132, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, '4', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-12 04:57:09', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(133, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'a', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-12 05:14:54', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(134, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'e', 'e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-12 05:21:20', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(135, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'e', 'e3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-12 05:21:41', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL),
(136, 4, 1, 1, '-122.084000000000000000', '37.421997000000000000', 0, 'e', 'e34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2022-11-12 05:22:00', 0, NULL, NULL, 0, NULL, NULL, 'Ingresado', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `IntervencionesAudios`
--

CREATE TABLE `IntervencionesAudios` (
  `IDIntervencion` int(10) UNSIGNED NOT NULL,
  `Audio` longtext NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `IntervencionesAudios`
--

INSERT INTO `IntervencionesAudios` (`IDIntervencion`, `Audio`, `FechaRegistro`) VALUES
(45, 'https://miesdinapen.tk/api/Audios/Uploads/45_Audio_0.mp3', '2022-09-20 22:14:39'),
(45, 'https://miesdinapen.tk/api/Audios/Uploads/45_Audio_1.mp3', '2022-09-20 22:14:39'),
(48, 'https://miesdinapen.tk/api/Audios/Uploads/48_Audio_0.mp3', '2022-09-21 02:52:38'),
(48, 'https://miesdinapen.tk/api/Audios/Uploads/48_Audio_1.mp3', '2022-09-21 02:52:38'),
(49, 'https://miesdinapen.tk/api/Audios/Uploads/49_Audio_0.mp3', '2022-09-21 04:30:22'),
(50, 'https://miesdinapen.tk/api/Audios/Uploads/50_Audio_0.mp3', '2022-09-20 23:43:22'),
(51, 'https://miesdinapen.tk/api/Audios/Uploads/51_Audio_0.mp3', '2022-09-21 01:31:51'),
(51, 'https://miesdinapen.tk/api/Audios/Uploads/51_Audio_1.mp3', '2022-09-21 01:31:51'),
(52, 'https://miesdinapen.tk/api/Audios/Uploads/52_Audio_0.mp3', '2022-09-21 01:39:31'),
(52, 'https://miesdinapen.tk/api/Audios/Uploads/52_Audio_1.mp3', '2022-09-21 01:39:31'),
(53, 'https://miesdinapen.tk/api/Audios/Uploads/53_Audio_0.mp3', '2022-09-21 01:46:39'),
(53, 'https://miesdinapen.tk/api/Audios/Uploads/53_Audio_1.mp3', '2022-09-21 01:46:39'),
(54, 'https://miesdinapen.tk/api/Audios/Uploads/54_Audio_0.mp3', '2022-09-21 06:59:40'),
(54, 'https://miesdinapen.tk/api/Audios/Uploads/54_Audio_1.mp3', '2022-09-21 06:59:40'),
(55, 'https://miesdinapen.tk/api/Audios/Uploads/55_Audio_0.mp3', '2022-09-21 02:05:51'),
(55, 'https://miesdinapen.tk/api/Audios/Uploads/55_Audio_1.mp3', '2022-09-21 02:05:52'),
(56, 'https://miesdinapen.tk/api/Audios/Uploads/56_Audio_0.mp3', '2022-09-21 11:08:51'),
(56, 'https://miesdinapen.tk/api/Audios/Uploads/56_Audio_1.mp3', '2022-09-21 11:08:51'),
(57, 'https://miesdinapen.tk/api/Audios/Uploads/57_Audio_0.mp3', '2022-09-21 11:13:33'),
(58, 'https://miesdinapen.tk/api/Audios/Uploads/58_Audio_0.mp3', '2022-09-21 11:19:19'),
(59, 'https://miesdinapen.tk/api/Audios/Uploads/59_Audio_0.mp3', '2022-09-21 12:51:20'),
(61, 'https://miesdinapen.tk/api/Audios/Uploads/61_Audio_0.mp3', '2022-09-29 04:51:03'),
(63, 'https://miesdinapen.tk/api/Audios/Uploads/63_Audio_0.mp3', '2022-09-29 05:00:10'),
(64, 'https://miesdinapen.tk/api/Audios/Uploads/64_Audio_0.mp3', '2022-09-29 05:02:12'),
(65, 'https://miesdinapen.tk/api/Audios/Uploads/65_Audio_0.mp3', '2022-10-04 00:41:05'),
(65, 'https://miesdinapen.tk/api/Audios/Uploads/65_Audio_1.mp3', '2022-10-04 00:41:05'),
(66, 'https://miesdinapen.tk/api/Audios/Uploads/66_Audio_0.mp3', '2022-10-04 00:43:09'),
(67, 'https://miesdinapen.tk/api/Audios/Uploads/67_Audio_0.mp3', '2022-10-04 00:51:00'),
(68, 'https://miesdinapen.tk/api/Audios/Uploads/68_Audio_0.mp3', '2022-10-04 01:13:07'),
(69, 'https://miesdinapen.tk/api/Audios/Uploads/69_Audio_0.mp3', '2022-10-04 01:14:11'),
(71, 'https://miesdinapen.tk/api/Audios/Uploads/71_Audio_0.mp3', '2022-10-04 21:59:09'),
(72, 'https://miesdinapen.tk/api/Audios/Uploads/72_Audio_0.mp3', '2022-10-05 06:27:53'),
(73, 'https://miesdinapen.tk/api/Audios/Uploads/73_Audio_0.mp3', '2022-10-06 22:05:52'),
(84, 'https://miesdinapen.tk/api/Audios/Uploads/84_Audio_0.mp3', '2022-10-21 21:34:43'),
(85, 'https://miesdinapen.tk/api/Audios/Uploads/85_Audio_0.mp3', '2022-10-21 21:35:54'),
(88, 'https://miesdinapen.tk/api/Audios/Uploads/88_Audio_0.mp3', '2022-10-26 03:14:47'),
(89, 'https://miesdinapen.tk/api/Audios/Uploads/89_Audio_0.mp3', '2022-10-25 22:20:12'),
(90, 'https://miesdinapen.tk/api/Audios/Uploads/90_Audio_0.mp3', '2022-10-25 22:53:35'),
(91, 'https://miesdinapen.tk/api/Audios/Uploads/91_Audio_0.mp3', '2022-10-26 10:28:40'),
(117, 'https://miesdinapen.tk/api/Audios/Uploads/117_Audio_0.mp3', '2022-11-08 21:02:10'),
(119, 'https://miesdinapen.tk/api/Audios/Uploads/119_Audio_0.mp3', '2022-11-08 21:49:06'),
(120, 'https://miesdinapen.tk/api/Audios/Uploads/120_Audio_0.mp3', '2022-11-08 22:03:56'),
(124, 'https://miesdinapen.tk/api/Audios/Uploads/124_Audio_0.mp3', '2022-11-08 22:23:18'),
(125, 'https://miesdinapen.tk/api/Audios/Uploads/125_Audio_0.mp3', '2022-11-08 22:28:58'),
(126, 'https://miesdinapen.tk/api/Audios/Uploads/126_Audio_0.mp3', '2022-11-08 22:30:53'),
(127, 'https://miesdinapen.tk/api/Audios/Uploads/127_Audio_0.mp3', '2022-11-08 22:32:26'),
(128, 'https://miesdinapen.tk/api/Audios/Uploads/128_Audio_0.mp3', '2022-11-08 22:33:39'),
(129, 'https://miesdinapen.tk/api/Audios/Uploads/129_Audio_0.mp3', '2022-11-09 01:43:16'),
(130, 'https://miesdinapen.tk/api/Audios/Uploads/130_Audio_0.mp3', '2022-11-09 10:50:15'),
(131, 'https://miesdinapen.tk/api/Audios/Uploads/131_Audio_0.mp3', '2022-11-12 04:55:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `IntervencionesExposicion`
--

CREATE TABLE `IntervencionesExposicion` (
  `IDIntervencion` int(10) UNSIGNED NOT NULL,
  `IDExposicion` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `IntervencionesExposicion`
--

INSERT INTO `IntervencionesExposicion` (`IDIntervencion`, `IDExposicion`) VALUES
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `IntervencionesFotos`
--

CREATE TABLE `IntervencionesFotos` (
  `IDIntervencion` int(10) UNSIGNED NOT NULL,
  `FotoIncidente` text NOT NULL,
  `FechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `IntervencionesFotos`
--

INSERT INTO `IntervencionesFotos` (`IDIntervencion`, `FotoIncidente`, `FechaRegistro`) VALUES
(44, 'https://miesdinapen.tk/api/Fotos/Uploads/44_Fotos_0.png', '2022-09-20 21:39:03'),
(44, 'https://miesdinapen.tk/api/Fotos/Uploads/44_Fotos_1.png', '2022-09-20 21:39:03'),
(45, 'https://miesdinapen.tk/api/Fotos/Uploads/45_Fotos_0.png', '2022-09-20 22:14:40'),
(46, 'https://miesdinapen.tk/api/Fotos/Uploads/46_Fotos_0.png', '2022-09-20 22:17:14'),
(46, 'https://miesdinapen.tk/api/Fotos/Uploads/46_Fotos_1.png', '2022-09-20 22:17:14'),
(48, 'https://miesdinapen.tk/api/Fotos/Uploads/48_Fotos_0.png', '2022-09-21 02:52:38'),
(48, 'https://miesdinapen.tk/api/Fotos/Uploads/48_Fotos_1.png', '2022-09-21 02:52:39'),
(49, 'https://miesdinapen.tk/api/Fotos/Uploads/49_Fotos_0.png', '2022-09-21 04:30:22'),
(49, 'https://miesdinapen.tk/api/Fotos/Uploads/49_Fotos_1.png', '2022-09-21 04:30:23'),
(51, 'https://miesdinapen.tk/api/Fotos/Uploads/51_Fotos_0.png', '2022-09-21 01:31:54'),
(52, 'https://miesdinapen.tk/api/Fotos/Uploads/52_Fotos_0.png', '2022-09-21 01:39:35'),
(52, 'https://miesdinapen.tk/api/Fotos/Uploads/52_Fotos_1.png', '2022-09-21 01:39:38'),
(53, 'https://miesdinapen.tk/api/Fotos/Uploads/53_Fotos_0.png', '2022-09-21 01:46:42'),
(53, 'https://miesdinapen.tk/api/Fotos/Uploads/53_Fotos_1.png', '2022-09-21 01:46:45'),
(54, 'https://miesdinapen.tk/api/Fotos/Uploads/54_Fotos_0.png', '2022-09-21 06:59:40'),
(54, 'https://miesdinapen.tk/api/Fotos/Uploads/54_Fotos_1.png', '2022-09-21 06:59:40'),
(55, 'https://miesdinapen.tk/api/Fotos/Uploads/55_Fotos_0.png', '2022-09-21 02:05:54'),
(55, 'https://miesdinapen.tk/api/Fotos/Uploads/55_Fotos_1.png', '2022-09-21 02:05:57'),
(55, 'https://miesdinapen.tk/api/Fotos/Uploads/55_Fotos_2.png', '2022-09-21 02:06:00'),
(56, 'https://miesdinapen.tk/api/Fotos/Uploads/56_Fotos_0.png', '2022-09-21 11:08:53'),
(56, 'https://miesdinapen.tk/api/Fotos/Uploads/56_Fotos_1.png', '2022-09-21 11:08:55'),
(56, 'https://miesdinapen.tk/api/Fotos/Uploads/56_Fotos_2.png', '2022-09-21 11:08:57'),
(57, 'https://miesdinapen.tk/api/Fotos/Uploads/57_Fotos_0.png', '2022-09-21 11:13:35'),
(58, 'https://miesdinapen.tk/api/Fotos/Uploads/58_Fotos_0.png', '2022-09-21 11:19:21'),
(62, 'https://miesdinapen.tk/api/Fotos/Uploads/62_Fotos_0.png', '2022-09-29 04:57:09'),
(63, 'https://miesdinapen.tk/api/Fotos/Uploads/63_Fotos_0.png', '2022-09-29 05:00:10'),
(64, 'https://miesdinapen.tk/api/Fotos/Uploads/64_Fotos_0.png', '2022-09-29 05:02:12'),
(65, 'https://miesdinapen.tk/api/Fotos/Uploads/65_Fotos_0.png', '2022-10-04 00:41:06'),
(65, 'https://miesdinapen.tk/api/Fotos/Uploads/65_Fotos_1.png', '2022-10-04 00:41:07'),
(66, 'https://miesdinapen.tk/api/Fotos/Uploads/66_Fotos_0.png', '2022-10-04 00:43:09'),
(68, 'https://miesdinapen.tk/api/Fotos/Uploads/68_Fotos_0.png', '2022-10-04 01:13:07'),
(69, 'https://miesdinapen.tk/api/Fotos/Uploads/69_Fotos_0.png', '2022-10-04 01:14:12'),
(1, 'Pro', '2012-12-01 16:45:52'),
(1, 'prueba3-10', '2012-12-01 16:45:52'),
(71, 'https://miesdinapen.tk/api/Fotos/Uploads/71_Fotos_0.png', '2022-10-04 21:59:10'),
(72, 'https://miesdinapen.tk/api/Fotos/Uploads/72_Fotos_0.png', '2022-10-05 06:27:53'),
(73, 'https://miesdinapen.tk/api/Fotos/Uploads/73_Fotos_0.png', '2022-10-06 22:05:53'),
(84, 'https://miesdinapen.tk/api/Fotos/Uploads/84_Fotos_0.png', '2022-10-21 21:34:43'),
(90, 'https://miesdinapen.tk/api/Fotos/Uploads/90_Fotos_0.png', '2022-10-25 22:53:35'),
(91, 'https://miesdinapen.tk/api/Fotos/Uploads/91_Fotos_0.png', '2022-10-26 10:28:41'),
(117, 'https://miesdinapen.tk/api/Fotos/Uploads/117_Fotos_0.png', '2022-11-08 21:02:12'),
(119, 'https://miesdinapen.tk/api/Fotos/Uploads/119_Fotos_0.png', '2022-11-08 21:49:07'),
(120, 'https://miesdinapen.tk/api/Fotos/Uploads/120_Fotos_0.png', '2022-11-08 22:03:57'),
(124, 'https://miesdinapen.tk/api/Fotos/Uploads/124_Fotos_0.png', '2022-11-08 22:23:18'),
(129, 'https://miesdinapen.tk/api/Fotos/Uploads/129_Fotos_0.png', '2022-11-09 01:43:18'),
(130, 'https://miesdinapen.tk/api/Fotos/Uploads/130_Fotos_0.png', '2022-11-09 10:50:17'),
(131, 'https://miesdinapen.tk/api/Fotos/Uploads/131_Fotos_0.png', '2022-11-12 04:55:25'),
(136, 'https://miesdinapen.tk/api/Fotos/Uploads/136_Fotos_0.png', '2022-11-12 05:22:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `IntervencionesTipoActividad`
--

CREATE TABLE `IntervencionesTipoActividad` (
  `IDIntervencion` int(10) UNSIGNED NOT NULL,
  `IDTipoActividad` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `IntervencionesTipoActividad`
--

INSERT INTO `IntervencionesTipoActividad` (`IDIntervencion`, `IDTipoActividad`) VALUES
(49, 1),
(114, 1),
(46, 2),
(49, 2),
(68, 2),
(128, 2),
(49, 3),
(1, 4),
(68, 4),
(49, 6),
(1, 7),
(1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDCabelloColor`
--

CREATE TABLE `ListaIDCabelloColor` (
  `IDColorCabello` tinyint(3) NOT NULL COMMENT 'Identificador único del color de cabello',
  `ColorCabello` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDCabelloColor`
--

INSERT INTO `ListaIDCabelloColor` (`IDColorCabello`, `ColorCabello`) VALUES
(1, 'Negro'),
(2, 'Rubio'),
(3, 'Canoso'),
(4, 'Castaño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDCabelloTipo`
--

CREATE TABLE `ListaIDCabelloTipo` (
  `IDCabelloTipo` tinyint(3) NOT NULL,
  `CabelloTipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDCabelloTipo`
--

INSERT INTO `ListaIDCabelloTipo` (`IDCabelloTipo`, `CabelloTipo`) VALUES
(1, 'Lizo'),
(2, 'Rizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDCantones`
--

CREATE TABLE `ListaIDCantones` (
  `IDCanton` smallint(6) NOT NULL,
  `Canton` varchar(100) NOT NULL,
  `IDProvincia` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDCantones`
--

INSERT INTO `ListaIDCantones` (`IDCanton`, `Canton`, `IDProvincia`) VALUES
(101, 'Cuenca', 1),
(102, 'GIRON', 1),
(103, 'GUALACEO', 1),
(104, 'NABON', 1),
(105, 'PAUTE', 1),
(106, 'PUCARA', 1),
(107, 'SAN FERNANDO', 1),
(108, 'SANTA ISABEL', 1),
(109, 'SIGSIG', 1),
(110, 'OÑA', 1),
(111, 'CHORDELEG', 1),
(112, 'EL PAN', 1),
(113, 'SEVILLA DE ORO', 1),
(114, 'GUACHAPALA', 1),
(115, 'CAMILO PONCE ENRIQUEZ', 1),
(201, 'GUARANDA', 2),
(202, 'CHILLANES', 2),
(203, 'CHIMBO', 2),
(204, 'ECHEANDIA', 2),
(205, 'SAN MIGUEL', 2),
(206, 'CALUMA ', 2),
(207, 'LAS NAVES', 2),
(301, 'AZOGUES', 3),
(302, 'BIBLIAN', 3),
(303, 'CAÑAR', 3),
(304, 'LA TRONCAL', 3),
(305, 'EL TAMBO ', 3),
(306, 'DELEG', 3),
(307, 'SUSCAL', 3),
(401, 'TULCAN', 4),
(402, 'BOLIVAR', 4),
(403, 'ESPEJO', 4),
(404, 'MIRA', 4),
(405, 'MONTUFAR', 4),
(406, 'SAN PEDRO DE HUACA', 4),
(501, 'LATACUNGA', 5),
(502, 'LA MANA', 5),
(503, 'PANGUA', 5),
(504, 'PUJILI', 5),
(505, 'SALCEDO', 5),
(506, 'SAQUISILI', 5),
(507, 'SIGCHOS', 5),
(601, 'RIOBAMBA', 6),
(602, 'ALAUSI', 6),
(603, 'COLTA', 6),
(604, 'CHAMBO', 6),
(605, 'CHUNCHI', 6),
(606, 'GUAMOTE', 6),
(607, 'GUANO', 6),
(608, 'PALLATANGA', 6),
(609, 'PENIPE', 6),
(610, 'CUMANDA', 6),
(701, 'MACHALA', 7),
(702, 'ARENILLAS', 7),
(703, 'ATAHUALPA', 7),
(704, 'BALSAS', 7),
(705, 'CHILLA', 7),
(706, 'EL GUABO', 7),
(707, 'HUAQUILLAS', 7),
(708, 'MARCABELI', 7),
(709, 'PASAJE', 7),
(710, 'PIÑAS', 7),
(711, 'PORTOVELO', 7),
(712, 'SANTA ROSA', 7),
(713, 'ZARUMA', 7),
(714, 'LAS LAJAS', 7),
(801, 'ESMERALDAS', 8),
(802, 'ELOY ALFARO', 8),
(803, 'MUISNE', 8),
(804, 'QUININDE', 8),
(805, 'SAN LORENZO', 8),
(806, 'ATACAMES', 8),
(807, 'RIOVERDE', 8),
(808, 'LA CONCORDIA', 8),
(901, 'GUAYAQUIL', 9),
(902, 'ALFREDO BAQUERIZO MORENO (JUJAN)', 9),
(903, 'BALAO', 9),
(904, 'BALZAR', 9),
(905, 'COLIMES', 9),
(906, 'DAULE', 9),
(907, 'DURAN', 9),
(908, 'EL EMPALME', 9),
(909, 'EL TRIUNFO', 9),
(910, 'MILAGRO', 9),
(911, 'NARANJAL', 9),
(912, 'NARANJITO', 9),
(913, 'PALESTINA', 9),
(914, 'PEDRO CARBO', 9),
(916, 'SAMBORONDON', 9),
(918, 'SANTA LUCIA', 9),
(919, 'SALITRE (URBINA JADO)', 9),
(920, 'SAN JACINTO DE YAGUACHI', 9),
(921, 'PLAYAS', 9),
(922, 'SIMON BOLIVAR', 9),
(923, 'CORONEL MARCELINO MARIDUEÑA', 9),
(924, 'LOMAS DE SARGENTILLO', 9),
(925, 'NOBOL', 9),
(927, 'GENERAL ANTONIO ELIZALDE ', 9),
(928, 'ISIDRO AYORA ', 9),
(1001, 'IBARRA', 10),
(1002, 'ANTONIO ANTE', 10),
(1003, 'COTACACHI', 10),
(1004, 'OTAVALO', 10),
(1005, 'PIMAMPIRO', 10),
(1006, 'SAN MIGUEL DE URCUQUI', 10),
(1101, 'LOJA', 11),
(1102, 'CALVAS', 11),
(1103, 'CATAMAYO', 11),
(1104, 'CELICA', 11),
(1105, 'CHAGUARPAMBA', 11),
(1106, 'ESPINDOLA', 11),
(1107, 'GONZANAMA', 11),
(1108, 'MACARA', 11),
(1109, 'PALTAS', 11),
(1110, 'PUYANGO', 11),
(1111, 'SARAGURO', 11),
(1112, 'SOZORANGA', 11),
(1113, 'ZAPOTILLO', 11),
(1114, 'PINDAL', 11),
(1115, 'QUILANGA', 11),
(1116, 'OLMEDO', 11),
(1201, 'BABAHOYO', 12),
(1202, 'BABA', 12),
(1203, 'MONTALVO', 12),
(1204, 'PUEBLOVIEJO', 12),
(1205, 'QUEVEDO', 12),
(1206, 'URDANETA', 12),
(1207, 'VENTANAS', 12),
(1208, 'VINCES', 12),
(1209, 'PALENQUE', 12),
(1210, 'BUENA FE', 12),
(1211, 'VALENCIA', 12),
(1212, 'MOCACHE', 12),
(1213, 'QUINSALOMA', 12),
(1301, 'PORTOVIEJO', 13),
(1302, 'BOLIVAR', 13),
(1303, 'CHONE', 13),
(1304, 'EL CARMEN', 13),
(1305, 'FLAVIO ALFARO', 13),
(1306, 'JIPIJAPA', 13),
(1307, 'JUNIN', 13),
(1308, 'MANTA', 13),
(1309, 'MONTECRISTI ', 13),
(1310, 'PAJAN', 13),
(1311, 'PICHINCHA', 13),
(1312, 'ROCAFUERTE', 13),
(1313, 'SANTA ANA', 13),
(1314, 'SUCRE', 13),
(1315, 'TOSAGUA', 13),
(1316, '24 DE MAYO', 13),
(1317, 'PEDERNALES', 13),
(1318, 'OLMEDO', 13),
(1319, 'PUERTO LOPEZ', 13),
(1320, 'JAMA', 13),
(1321, 'JARAMIJO', 13),
(1322, 'SAN VICENTE', 13),
(1401, 'MORONA', 14),
(1402, 'GUALAQUIZA', 14),
(1403, 'LIMON INDANZA', 14),
(1404, 'PALORA', 14),
(1405, 'SANTIAGO', 14),
(1406, 'SUCUA', 14),
(1407, 'HUAMBOYA', 14),
(1408, 'SAN JUAN BOSCO ', 14),
(1409, 'TAISHA ', 14),
(1410, 'LOGROÑO ', 14),
(1411, 'PABLO SEXTO', 14),
(1412, 'CANTON TIWINTZA', 14),
(1501, 'TENA', 15),
(1503, 'ARCHIDONA', 15),
(1504, 'EL CHACO', 15),
(1507, 'QUIJOS', 15),
(1509, 'CARLOS JULIO AROSEMENA TOLA', 15),
(1601, 'PASTAZA', 16),
(1602, 'MERA', 16),
(1603, 'SANTA CLARA', 16),
(1604, 'ARAJUNO', 16),
(1701, 'QUITO', 17),
(1702, 'CAYAMBE', 17),
(1703, 'MEJIA', 17),
(1704, 'PEDRO MONCAYO', 17),
(1705, 'RUMIÑAHUI', 17),
(1707, 'SAN MIGUEL DE LOS BANCOS', 17),
(1708, 'PEDRO VICENTE MALDONADO', 17),
(1709, 'PUERTO QUITO', 17),
(1801, 'AMBATO', 18),
(1802, 'BAÑOS DE AGUA SANTA', 18),
(1803, 'CEVALLOS', 18),
(1804, 'MOCHA', 18),
(1805, 'PATATE', 18),
(1806, 'QUERO', 18),
(1807, 'SAN PEDRO DE PELILEO', 18),
(1808, 'SANTIAGO DE PILLARO', 18),
(1809, 'TISALEO', 18),
(1901, 'ZAMORA', 19),
(1902, 'CHINCHIPE', 19),
(1903, 'NANGARITZA', 19),
(1904, 'YACUAMBI', 19),
(1905, 'YANTZAZA (YANZATZA)', 19),
(1906, 'EL PANGUI', 19),
(1907, 'CENTINELA DEL CONDOR', 19),
(1908, 'PALANDA', 19),
(1909, 'PAQUISHA ', 19),
(2001, 'SAN CRISTOBAL', 20),
(2002, 'ISABELA', 20),
(2003, 'SANTA CRUZ', 20),
(2101, 'LAGO AGRIO', 21),
(2102, 'GONZALO PIZARRO', 21),
(2103, 'PUTUMAYO', 21),
(2104, 'SHUSHUFINDI', 21),
(2105, 'SUCUMBIOS', 21),
(2106, 'CASCALES', 21),
(2107, 'CUYABENO', 21),
(2201, 'ORELLANA', 22),
(2202, 'AGUARICO', 22),
(2203, 'LA JOYA DE LOS SACHAS', 22),
(2204, 'LORETO', 22),
(2301, 'SANTO DOMINGO', 23),
(2401, 'SANTA ELENA', 24),
(2402, 'LA LIBERTAD', 24),
(2403, 'SALINAS', 24),
(9001, 'ZONA NO DELIMITADA', 90),
(9003, 'ZONA NO DELIMITADA', 90),
(9004, 'ZONA NO DELIMITADA', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDCircunstancias`
--

CREATE TABLE `ListaIDCircunstancias` (
  `IDCircunstancia` tinyint(3) NOT NULL,
  `Circunstancia` varchar(40) NOT NULL COMMENT 'Nombre Actividad realizada'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDCircunstancias`
--

INSERT INTO `ListaIDCircunstancias` (`IDCircunstancia`, `Circunstancia`) VALUES
(1, 'Extraviado'),
(2, 'Perdido'),
(3, 'Desaparecido'),
(4, 'Retención indebida'),
(5, 'Maltrato'),
(6, 'Abandono'),
(7, 'Mendicidad'),
(8, 'Negligencia en el cuidado'),
(9, 'Explotación laboral'),
(10, 'Abuso Sexual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDCondiciones`
--

CREATE TABLE `ListaIDCondiciones` (
  `IDCondicion` tinyint(3) NOT NULL,
  `Condicion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDCondiciones`
--

INSERT INTO `ListaIDCondiciones` (`IDCondicion`, `Condicion`) VALUES
(1, 'NNA en aparente buen estado de salud'),
(2, 'NNA que presenta signos de maltrato'),
(3, 'NNA que presenta estado de descuido o negligencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDCondicionMedica`
--

CREATE TABLE `ListaIDCondicionMedica` (
  `IDCondicionMedica` tinyint(3) NOT NULL,
  `CondicionMedica` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDCondicionMedica`
--

INSERT INTO `ListaIDCondicionMedica` (`IDCondicionMedica`, `CondicionMedica`) VALUES
(1, 'Si tiene alguna efermedad'),
(2, 'No tiene alguna efermedad'),
(3, 'Recibe Asistencia medica de dicha enfermedad'),
(4, 'No Recibe Asistencia medica de dicha enfermedad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDContexturas`
--

CREATE TABLE `ListaIDContexturas` (
  `IDContextura` tinyint(3) NOT NULL,
  `Contextura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDContexturas`
--

INSERT INTO `ListaIDContexturas` (`IDContextura`, `Contextura`) VALUES
(1, 'Delgada'),
(2, 'Media'),
(3, 'Gruesa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDDiscapacidad`
--

CREATE TABLE `ListaIDDiscapacidad` (
  `IDDiscapacidad` tinyint(3) NOT NULL,
  `Discapacidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDDiscapacidad`
--

INSERT INTO `ListaIDDiscapacidad` (`IDDiscapacidad`, `Discapacidad`) VALUES
(1, 'NO presenta discapacidad'),
(2, 'Discapacidad Motora'),
(3, 'Discapacidad Intelectual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDEstadoCivil`
--

CREATE TABLE `ListaIDEstadoCivil` (
  `IDEstadoCivil` tinyint(3) NOT NULL,
  `EstadoCivil` varchar(40) NOT NULL COMMENT 'Estado Civil'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDEstadoCivil`
--

INSERT INTO `ListaIDEstadoCivil` (`IDEstadoCivil`, `EstadoCivil`) VALUES
(1, 'Soltero'),
(2, 'Casado'),
(3, 'Unión de hecho'),
(4, 'Divorciado'),
(5, 'Viudo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDEstatura`
--

CREATE TABLE `ListaIDEstatura` (
  `IDEstatura` tinyint(3) NOT NULL,
  `Estatura` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDEstatura`
--

INSERT INTO `ListaIDEstatura` (`IDEstatura`, `Estatura`) VALUES
(1, 'Baja'),
(2, 'media'),
(3, 'Alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDEstudio`
--

CREATE TABLE `ListaIDEstudio` (
  `IDEstudio` tinyint(3) NOT NULL,
  `NivelEstudio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDEstudio`
--

INSERT INTO `ListaIDEstudio` (`IDEstudio`, `NivelEstudio`) VALUES
(1, 'No Estudia'),
(2, 'Nivel Primario'),
(3, 'Nivel Secundario'),
(4, 'Otro tipo de estudio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDEtnias`
--

CREATE TABLE `ListaIDEtnias` (
  `IDEtnia` tinyint(3) NOT NULL,
  `Etnia` varchar(40) NOT NULL COMMENT 'Etnia'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDEtnias`
--

INSERT INTO `ListaIDEtnias` (`IDEtnia`, `Etnia`) VALUES
(1, 'Indígena'),
(2, 'Afroecuatoriano(a)'),
(3, 'Mulato(a)'),
(4, 'Mestizo(a)'),
(5, 'Blanco(a)'),
(6, 'Montubio(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDExposiciones`
--

CREATE TABLE `ListaIDExposiciones` (
  `IDExposicion` tinyint(3) NOT NULL,
  `Exposicion` varchar(40) NOT NULL COMMENT 'Riesgo al que está expuesto la persona intervenida'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDExposiciones`
--

INSERT INTO `ListaIDExposiciones` (`IDExposicion`, `Exposicion`) VALUES
(1, 'Persona Agresiva'),
(2, 'Consumo de alcohol'),
(3, 'Consumo de Drogas'),
(4, 'Transtornos mentales'),
(5, 'Victima de algun Delito'),
(6, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDGeneros`
--

CREATE TABLE `ListaIDGeneros` (
  `IDGenero` tinyint(3) NOT NULL,
  `Genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDGeneros`
--

INSERT INTO `ListaIDGeneros` (`IDGenero`, `Genero`) VALUES
(1, 'Masculino-1'),
(2, 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDInstituciones`
--

CREATE TABLE `ListaIDInstituciones` (
  `IDInstitucion` char(10) NOT NULL COMMENT 'Id de la insitucion',
  `InstiNombre` varchar(100) NOT NULL COMMENT 'Nombre de la institucion',
  `InstiDireccion` varchar(100) NOT NULL COMMENT 'Direccion de la institucion',
  `InstiTelefono` char(10) NOT NULL COMMENT 'Telefono de la institucion'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDInstituciones`
--

INSERT INTO `ListaIDInstituciones` (`IDInstitucion`, `InstiNombre`, `InstiDireccion`, `InstiTelefono`) VALUES
('1', 'Ministerio de Inclusion Económica y Social', 'GYE', '0987654321'),
('2', 'Policia Nacional', 'GYE', '0987654322');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDNacionalidades`
--

CREATE TABLE `ListaIDNacionalidades` (
  `IDNacionalidad` tinyint(3) NOT NULL,
  `Nacionalidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDNacionalidades`
--

INSERT INTO `ListaIDNacionalidades` (`IDNacionalidad`, `Nacionalidad`) VALUES
(1, 'Ecuatoriana'),
(2, 'Venezolana'),
(3, 'Colombiana'),
(4, 'Peruana'),
(5, 'Boliviana'),
(6, 'Panameña'),
(7, 'Británica'),
(8, 'Escocesa'),
(9, 'Austriaca'),
(10, 'Estadounidense'),
(11, 'Canadiense'),
(12, 'Alemana'),
(13, 'Italiana'),
(14, 'Mexicana'),
(15, 'Española'),
(16, 'Rusa'),
(17, 'Bielorusa'),
(18, 'Francesa'),
(19, 'Belga'),
(20, 'Sueca'),
(21, 'Suiza'),
(22, 'Austriaca'),
(23, 'Rumana'),
(24, 'Irlandesa'),
(25, 'Danesa'),
(26, 'Finlandesa'),
(27, 'noruega'),
(28, 'Estona'),
(29, 'Letona'),
(30, 'Lituana'),
(31, 'Holandesa'),
(32, 'Bielorusa'),
(33, 'Checa'),
(34, 'Eslovaca'),
(35, 'Húngara'),
(36, 'Búlgara'),
(37, 'Griega'),
(38, 'Chilena'),
(39, 'Brasileña'),
(40, 'Peruana'),
(41, 'Argentino'),
(42, 'Boliviano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDOperadores`
--

CREATE TABLE `ListaIDOperadores` (
  `IDOperador` smallint(5) UNSIGNED NOT NULL,
  `IDInstitucion` char(10) NOT NULL COMMENT 'Institucion a la que pertenece la persona responsable',
  `OperaCargo` varchar(25) NOT NULL COMMENT 'Cargo de la persona responsable',
  `OperaNCedula` char(10) NOT NULL COMMENT 'Cedula de la persona responsable',
  `OperaApellido1` varchar(50) NOT NULL COMMENT 'Apellidos de la persona responsable',
  `OperaApellido2` varchar(40) DEFAULT NULL,
  `OperaNombres` varchar(50) NOT NULL COMMENT 'Nombres de la persona responsable',
  `OperaTelefono1` char(10) DEFAULT NULL COMMENT 'Telefono de la persona responsable',
  `OperaTelefono2` varchar(10) DEFAULT NULL,
  `OperaEmail1` varchar(75) DEFAULT NULL COMMENT 'Correo de la persona responsable',
  `OperaEmail2` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDOperadores`
--

INSERT INTO `ListaIDOperadores` (`IDOperador`, `IDInstitucion`, `OperaCargo`, `OperaNCedula`, `OperaApellido1`, `OperaApellido2`, `OperaNombres`, `OperaTelefono1`, `OperaTelefono2`, `OperaEmail1`, `OperaEmail2`, `password`) VALUES
(1, '1', 'PRUEBA', '0909090909', 'PEREZ', NULL, 'JOSE', NULL, NULL, NULL, NULL, NULL),
(2, '1', 'PRUEBA2', '0909090000', 'RIOFRIO', NULL, 'MIGUEL', NULL, NULL, NULL, NULL, NULL),
(3, '1', 'PRUEBA3', '0909090111', 'LUZU', NULL, 'NEK', NULL, NULL, NULL, NULL, 'strong password'),
(4, '2', 'PRUEBA4', '0909094554', 'Paul', NULL, 'PAU', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDOrganizacionesCoope`
--

CREATE TABLE `ListaIDOrganizacionesCoope` (
  `IDOrganizacion` smallint(5) UNSIGNED NOT NULL,
  `Organizacion` varchar(100) NOT NULL COMMENT 'Nombre Intitución cooperante',
  `Zona` tinyint(3) NOT NULL COMMENT 'Zona de la institución cooperante',
  `IDProvincia` tinyint(3) NOT NULL COMMENT 'Provincia',
  `IDCanton` smallint(6) NOT NULL COMMENT 'Canton',
  `IDParroquia` int(11) NOT NULL COMMENT 'Parroquia(esto enlaza al canton y a la provincia) en la que se encuenta el Intervenido',
  `IDTipoOrganizacion` tinyint(3) NOT NULL COMMENT 'Tipo de la organizacion cooperante'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDOrganizacionesCoope`
--

INSERT INTO `ListaIDOrganizacionesCoope` (`IDOrganizacion`, `Organizacion`, `Zona`, `IDProvincia`, `IDCanton`, `IDParroquia`, `IDTipoOrganizacion`) VALUES
(1, 'GAD PARROQUIAL PUNA', 8, 9, 901, 10150, 1),
(2, 'gye', 3, 3, 303, 30353, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDParentezcos`
--

CREATE TABLE `ListaIDParentezcos` (
  `IDParentezco` tinyint(2) NOT NULL,
  `Parentezco` varchar(25) NOT NULL,
  `ParenGradoConsan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDParentezcos`
--

INSERT INTO `ListaIDParentezcos` (`IDParentezco`, `Parentezco`, `ParenGradoConsan`) VALUES
(1, 'Madre', 1),
(2, 'Padre', 1),
(3, 'Hermano(a)', 1),
(4, 'Primo(a)', 2),
(5, 'Tio(a)', 2),
(6, 'Abuelo(a)', 2),
(7, 'Otra', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDParroquias`
--

CREATE TABLE `ListaIDParroquias` (
  `IDParroquia` int(11) NOT NULL,
  `Parroquia` varchar(100) NOT NULL,
  `IDCanton` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDParroquias`
--

INSERT INTO `ListaIDParroquias` (`IDParroquia`, `Parroquia`, `IDCanton`) VALUES
(10150, 'CUENCA', 101),
(10151, 'BAÑOS', 101),
(10152, 'CUMBE', 101),
(10153, 'CHAUCHA', 101),
(10154, 'CHECA (JIDCAY)', 101),
(10155, 'CHIQUINTAD', 101),
(10156, 'LLACAO', 101),
(10157, 'MOLLETURO', 101),
(10158, 'NULTI', 101),
(10159, 'OCTAVIO CORDERO PALACIOS (SANTA ROSA)', 101),
(10160, 'PACCHA', 101),
(10161, 'QUINGEO', 101),
(10162, 'RICAURTE', 101),
(10163, 'SAN JOAQUIN', 101),
(10164, 'SANTA ANA', 101),
(10165, 'SAYAUSI', 101),
(10166, 'SIDCAY', 101),
(10167, 'SININCAY', 101),
(10168, 'TARQUI', 101),
(10169, 'TURI', 101),
(10170, 'VALLE', 101),
(10171, 'VICTORIA DEL PORTETE (IRQUIS)', 101),
(10250, 'GIRON', 102),
(10251, 'ASUNCION', 102),
(10252, 'SAN GERARDO', 102),
(10350, 'GUALACEO', 103),
(10352, 'DANIEL CORDOVA TORAL (EL ORIENTE)', 103),
(10353, 'JADAN', 103),
(10354, 'MARIANO MORENO', 103),
(10356, 'REMIGIO CRESPO TORAL (GULAG)', 103),
(10357, 'SAN JUAN', 103),
(10358, 'ZHIDMAD', 103),
(10359, 'LUIS CORDERO VEGA', 103),
(10360, 'SIMON BOLIVAR (CAB. EN GAÑANZOL)', 103),
(10450, 'NABON', 104),
(10451, 'COCHAPATA', 104),
(10452, 'EL PROGRESO (CAB.EN ZHOTA)', 104),
(10453, 'LAS NIEVES (CHAYA)', 104),
(10550, 'PAUTE', 105),
(10552, 'BULAN (JOSE VICTOR IZQUIERDO)', 105),
(10553, 'CHICAN (GUILLERMO ORTEGA)', 105),
(10554, 'EL CABO', 105),
(10556, 'GUARAINAG', 105),
(10559, 'SAN CRISTOBAL (CARLOS ORDOÑEZ LAZO)', 105),
(10561, 'TOMEBAMBA', 105),
(10562, 'DUG DUG', 105),
(10650, 'PUCARA', 106),
(10652, 'SAN RAFAEL DE SHARUG', 106),
(10750, 'SAN FERNANDO', 107),
(10751, 'CHUMBLIN', 107),
(10850, 'SANTA ISABEL', 108),
(10851, 'ABDON CALDERON (LA UNION)', 108),
(10852, 'EL CARMEN DE PIJILI', 108),
(10853, 'ZHAGLLI (SHAGLLI)', 108),
(10950, 'SIGSIG', 109),
(10951, 'CUCHIL (CUTCHIL)', 109),
(10952, 'JIMA (GIMA)', 109),
(10953, 'GUEL', 109),
(10954, 'LUDO', 109),
(10955, 'SAN BARTOLOME', 109),
(10956, 'SAN JOSE DE RARANGA', 109),
(11050, 'SAN FELIPE DE OÑA', 110),
(11051, 'SUSUDEL', 110),
(11150, 'CHORDELEG', 111),
(11151, 'PRINCIPAL', 111),
(11152, 'LA UNION', 111),
(11153, 'LUIS GALARZA ORELLANA (CAB.EN DELEGSOL)', 111),
(11154, 'SAN MARTIN DE PUZHIO', 111),
(11250, 'EL PAN', 112),
(11253, 'SAN VICENTE', 112),
(11350, 'SEVILLA DE ORO', 113),
(11351, 'AMALUZA', 113),
(11352, 'PALMAS', 113),
(11450, 'GUACHAPALA', 114),
(11550, 'CAMILO PONCE ENRIQUEZ', 115),
(20150, 'GUARANDA', 201),
(20151, 'FACUNDO VELA', 201),
(20153, 'JULIO E. MORENO (CATANAHUAN GRANDE)', 201),
(20155, 'SALINAS', 201),
(20156, 'SAN LORENZO', 201),
(20157, 'SAN SIMON (YACOTO)', 201),
(20158, 'SANTAFE (SANTA FE)', 201),
(20159, 'SIMIATUG', 201),
(20160, 'SAN LUIS DE PAMBIL', 201),
(20250, 'CHILLANES', 202),
(20251, 'SAN JOSE DEL TAMBO (TAMBOPAMBA)', 202),
(20350, 'SAN JOSE DE CHIMBO', 203),
(20351, 'ASUNCION (ASANCOTO)', 203),
(20353, 'MAGDALENA (CHAPACOTO)', 203),
(20354, 'SAN SEBASTIAN', 203),
(20355, 'TELIMBELA', 203),
(20450, 'ECHEANDIA', 204),
(20550, 'SAN MIGUEL', 205),
(20551, 'BALSAPAMBA', 205),
(20552, 'BILOVAN', 205),
(20553, 'REGULO DE MORA', 205),
(20554, 'SAN PABLO (SAN PABLO DE ATENAS)', 205),
(20555, 'SANTIAGO', 205),
(20556, 'SAN VICENTE', 205),
(20650, 'CALUMA', 206),
(20750, 'LAS NAVES', 207),
(30150, 'AZOGUES', 301),
(30151, 'COJITAMBO', 301),
(30153, 'GUAPAN', 301),
(30154, 'JAVIER LOYOLA (CHUQUIPATA)', 301),
(30155, 'LUIS CORDERO', 301),
(30156, 'PINDILIG', 301),
(30157, 'RIVERA', 301),
(30158, 'SAN MIGUEL', 301),
(30160, 'TADAY', 301),
(30250, 'BIBLIAN', 302),
(30251, 'NAZON (CAB. EN PAMPA DE DOMINGUEZ)', 302),
(30252, 'SAN FRANCISCO DE SAGEO', 302),
(30253, 'TURUPAMBA', 302),
(30254, 'JERUSALEN', 302),
(30350, 'CAÑAR', 303),
(30351, 'CHONTAMARCA', 303),
(30352, 'CHOROCOPTE', 303),
(30353, 'GENERAL MORALES (SOCARTE)', 303),
(30354, 'GUALLETURO', 303),
(30355, 'HONORATO VASQUEZ (TAMBO VIEJO)', 303),
(30356, 'INGAPIRCA', 303),
(30357, 'JUNCAL', 303),
(30358, 'SAN ANTONIO', 303),
(30361, 'ZHUD', 303),
(30362, 'VENTURA', 303),
(30363, 'DUCUR', 303),
(30450, 'LA TRONCAL', 304),
(30451, 'MANUEL J. CALLE', 304),
(30452, 'PANCHO NEGRO', 304),
(30550, 'EL TAMBO', 305),
(30650, 'DELEG', 306),
(30651, 'SOLANO', 306),
(30750, 'SUSCAL', 307),
(40150, 'TULCAN', 401),
(40151, 'EL CARMELO (EL PUN)', 401),
(40153, 'JULIO ANDRADE (OREJUELA)', 401),
(40154, 'MALDONADO', 401),
(40155, 'PIOTER', 401),
(40156, 'TOBAR DONOSO (LA BOCANA DE CAMUMBI)', 401),
(40157, 'TUFIÑO', 401),
(40158, 'URBINA (TAYA)', 401),
(40159, 'EL CHICAL', 401),
(40161, 'SANTA MARTHA DE CUBA', 401),
(40250, 'BOLIVAR', 402),
(40251, 'GARCIA MORENO', 402),
(40252, 'LOS ANDES', 402),
(40253, 'MONTE OLIVO', 402),
(40254, 'SAN VICENTE DE PUSIR', 402),
(40255, 'SAN RAFAEL', 402),
(40350, 'EL ANGEL', 403),
(40351, 'EL GOALTAL', 403),
(40352, 'LA LIBERTAD (ALIZO)', 403),
(40353, 'SAN ISIDRO', 403),
(40450, 'MIRA (CHONTAHUASI)', 404),
(40451, 'CONCEPCION', 404),
(40452, 'JIJON Y CAAMAÑO (CAB. EN RIO BLANCO)', 404),
(40453, 'JUAN MONTALVO (SAN IGNACIO DE QUIL)', 404),
(40550, 'SAN GABRIEL', 405),
(40551, 'CRISTOBAL COLON', 405),
(40552, 'CHITAN DE NAVARRETE', 405),
(40553, 'FERNANDEZ SALVADOR', 405),
(40554, 'LA PAZ', 405),
(40555, 'PIARTAL', 405),
(40650, 'HUACA', 406),
(40651, 'MARISCAL SUCRE', 406),
(50150, 'LATACUNGA', 501),
(50151, 'ALAQUES (ALAQUEZ)', 501),
(50152, 'BELISARIO QUEVEDO (GUANAILIN)', 501),
(50153, 'GUAITACAMA (GUAYTACAMA)', 501),
(50154, 'JOSEGUANGO BAJO', 501),
(50156, 'MULALO', 501),
(50157, '11 DE NOVIEMBRE (ILINCHISI)', 501),
(50158, 'POALO', 501),
(50159, 'SAN JUAN DE PASTOCALLE', 501),
(50161, 'TANICUCHI', 501),
(50162, 'TOACASO', 501),
(50250, 'LA MANA', 502),
(50251, 'GUASAGANDA (CAB.EN GUASAGANDA CENTRO)', 502),
(50252, 'PUCAYACU', 502),
(50350, 'EL CORAZON', 503),
(50351, 'MORASPUNGO', 503),
(50352, 'PINLLOPATA', 503),
(50353, 'RAMON CAMPAÑA', 503),
(50450, 'PUJILI', 504),
(50451, 'ANGAMARCA', 504),
(50453, 'GUANGAJE', 504),
(50455, 'LA VICTORIA', 504),
(50456, 'PILALO', 504),
(50457, 'TINGO', 504),
(50458, 'ZUMBAHUA', 504),
(50550, 'SAN MIGUEL', 505),
(50551, 'ANTONIO JOSE HOLGUIN (SANTA LUCIA)', 505),
(50552, 'CUSUBAMBA', 505),
(50553, 'MULALILLO', 505),
(50554, 'MULLIQUINDIL (SANTA ANA)', 505),
(50555, 'PANSALEO', 505),
(50650, 'SAQUISILI,', 506),
(50651, 'CANCHAGUA', 506),
(50652, 'CHANTILIN', 506),
(50653, 'COCHAPAMBA', 506),
(50750, 'SIGCHOS', 507),
(50751, 'CHUGCHILLAN', 507),
(50752, 'ISINLIVI', 507),
(50753, 'LAS PAMPAS', 507),
(50754, 'PALO QUEMADO', 507),
(60150, 'RIOBAMBA', 601),
(60151, 'CACHA (CAB. EN MACHANGARA)', 601),
(60152, 'CALPI', 601),
(60153, 'CUBIJIES', 601),
(60154, 'FLORES', 601),
(60155, 'LICAN', 601),
(60156, 'LICTO', 601),
(60157, 'PUNGALA', 601),
(60158, 'PUNIN', 601),
(60159, 'QUIMIAG', 601),
(60160, 'SAN JUAN', 601),
(60161, 'SAN LUIS', 601),
(60250, 'ALAUSI', 602),
(60251, 'ACHUPALLAS', 602),
(60253, 'GUASUNTOS', 602),
(60254, 'HUIGRA', 602),
(60255, 'MULTITUD', 602),
(60256, 'PISTISHI (NARIZ DEL DIABLO)', 602),
(60257, 'PUMALLACTA', 602),
(60258, 'SEVILLA', 602),
(60259, 'SIBAMBE', 602),
(60260, 'TIXAN', 602),
(60350, 'VILLA LA UNION (CAJABAMBA)', 603),
(60351, 'CAÑI', 603),
(60352, 'COLUMBE', 603),
(60353, 'JUAN DE VELASCO (PANGOR)', 603),
(60354, 'SANTIAGO DE QUITO (CAB. EN SAN ANTONIO DE QUITO)', 603),
(60450, 'CHAMBO', 604),
(60550, 'CHUNCHI', 605),
(60551, 'CAPZOL', 605),
(60552, 'COMPUD', 605),
(60553, 'GONZOL', 605),
(60554, 'LLAGOS', 605),
(60650, 'GUAMOTE', 606),
(60651, 'CEBADAS', 606),
(60652, 'PALMIRA', 606),
(60750, 'GUANO', 607),
(60751, 'GUANANDO', 607),
(60752, 'ILAPO', 607),
(60753, 'LA PROVIDENCIA', 607),
(60754, 'SAN ANDRES', 607),
(60755, 'SAN GERARDO DE PACAICAGUAN', 607),
(60756, 'SAN ISIDRO DE PATULU', 607),
(60757, 'SAN JOSE DEL CHAZO', 607),
(60758, 'SANTA FE DE GALAN', 607),
(60759, 'VALPARAISO', 607),
(60850, 'PALLATANGA', 608),
(60950, 'PENIPE', 609),
(60951, 'EL ALTAR', 609),
(60952, 'MATUS', 609),
(60953, 'PUELA', 609),
(60954, 'SAN ANTONIO DE BAYUSHIG', 609),
(60955, 'LA CANDELARIA', 609),
(60956, 'BILBAO (CAB.EN QUILLUYACU)', 609),
(61050, 'CUMANDA', 610),
(70150, 'MACHALA', 701),
(70152, 'EL RETIRO', 701),
(70250, 'ARENILLAS', 702),
(70251, 'CHACRAS', 702),
(70254, 'PALMALES', 702),
(70255, 'CARCABON', 702),
(70350, 'PACCHA', 703),
(70351, 'AYAPAMBA', 703),
(70352, 'CORDONCILLO', 703),
(70353, 'MILAGRO', 703),
(70354, 'SAN JOSE', 703),
(70355, 'SAN JUAN DE CERRO AZUL', 703),
(70450, 'BALSAS', 704),
(70451, 'BELLAMARIA', 704),
(70550, 'CHILLA', 705),
(70650, 'EL GUABO', 706),
(70651, 'BARBONES (SUCRE)', 706),
(70652, 'LA IBERIA', 706),
(70653, 'TENDALES (CAB.EN PUERTO TENDALES)', 706),
(70654, 'RIO BONITO', 706),
(70750, 'HUAQUILLAS', 707),
(70850, 'MARCABELI', 708),
(70851, 'EL INGENIO', 708),
(70950, 'PASAJE', 709),
(70951, 'BUENAVISTA', 709),
(70952, 'CASACAY', 709),
(70953, 'LA PEAÑA', 709),
(70954, 'PROGRESO', 709),
(70955, 'UZHCURRUMI', 709),
(70956, 'CAÑAQUEMADA', 709),
(71050, 'PIÑAS', 710),
(71051, 'CAPIRO (CAB. EN LA CAPILLA DE CAPIRO)', 710),
(71052, 'LA BOCANA', 710),
(71053, 'MOROMORO (CAB. EN EL VADO)', 710),
(71054, 'PIEDRAS', 710),
(71055, 'SAN ROQUE (AMBROSIO MALDONADO)', 710),
(71056, 'SARACAY', 710),
(71150, 'PORTOVELO', 711),
(71151, 'CURTINCAPA', 711),
(71152, 'MORALES', 711),
(71153, 'SALATI', 711),
(71250, 'SANTA ROSA', 712),
(71251, 'BELLAVISTA', 712),
(71252, 'JAMBELI', 712),
(71253, 'LA AVANZADA', 712),
(71254, 'SAN ANTONIO', 712),
(71255, 'TORATA', 712),
(71256, 'VICTORIA', 712),
(71257, 'BELLAMARIA', 712),
(71350, 'ZARUMA', 713),
(71351, 'ABAÑIN', 713),
(71352, 'ARCAPAMBA', 713),
(71353, 'GUANAZAN', 713),
(71354, 'GUIZHAGUIÑA', 713),
(71355, 'HUERTAS', 713),
(71356, 'MALVAS', 713),
(71357, 'MULUNCAY GRANDE', 713),
(71358, 'SINSAO', 713),
(71359, 'SALVIAS', 713),
(71450, 'LA VICTORIA', 714),
(71451, 'LA LIBERTAD', 714),
(71452, 'EL PARAISO', 714),
(71453, 'SAN ISIDRO', 714),
(80150, 'ESMERALDAS', 801),
(80152, 'CAMARONES (CAB. EN SAN VICENTE)', 801),
(80153, 'CRNEL. CARLOS CONCHA TORRES (CAB.EN HUELE)', 801),
(80154, 'CHINCA', 801),
(80159, 'MAJUA', 801),
(80163, 'SAN MATEO', 801),
(80165, 'TABIAZO', 801),
(80166, 'TACHINA', 801),
(80168, 'VUELTA LARGA', 801),
(80250, 'VALDEZ (LIMONES)', 802),
(80251, 'ANCHAYACU', 802),
(80252, 'ATAHUALPA (CAB. EN CAMARONES)', 802),
(80253, 'BORBON', 802),
(80254, 'LA TOLA', 802),
(80255, 'LUIS VARGAS TORRES (CAB. EN PLAYA DE ORO)', 802),
(80256, 'MALDONADO', 802),
(80257, 'PAMPANAL DE BOLIVAR', 802),
(80258, 'SAN FRANCISCO DE ONZOLE', 802),
(80259, 'SANTO DOMINGO DE ONZOLE', 802),
(80260, 'SELVA ALEGRE', 802),
(80261, 'TELEMBI', 802),
(80262, 'COLON ELOY DEL MARIA', 802),
(80263, 'SAN JOSE DE CAYAPAS', 802),
(80264, 'TIMBIRE', 802),
(80350, 'MUISNE', 803),
(80351, 'BOLIVAR', 803),
(80352, 'DAULE', 803),
(80353, 'GALERA', 803),
(80354, 'QUINGUE (OLMEDO PERDOMO FRANCO)', 803),
(80355, 'SALIMA', 803),
(80356, 'SAN FRANCISCO', 803),
(80357, 'SAN GREGORIO', 803),
(80358, 'SAN JOSE DE CHAMANGA (CAB.EN CHAMANGA)', 803),
(80450, 'ROSA ZARATE (QUININDE)', 804),
(80451, 'CUBE', 804),
(80452, 'CHURA (CHANCAMA) (CAB. EN EL YERBERO)', 804),
(80453, 'MALIMPIA', 804),
(80454, 'VICHE', 804),
(80455, 'LA UNION', 804),
(80550, 'SAN LORENZO', 805),
(80551, 'ALTO TAMBO (CAB. EN GUADUAL)', 805),
(80552, 'ANCON (PICHANGAL) (CAB. EN PALMA REAL)', 805),
(80553, 'CALDERON', 805),
(80554, 'CARONDELET', 805),
(80555, '5 DE JUNIO (CAB. EN UIMBI)', 805),
(80556, 'CONCEPCION', 805),
(80557, 'MATAJE (CAB. EN SANTANDER)', 805),
(80558, 'SAN JAVIER DE CACHAVI (CAB. EN SAN JAVIER)', 805),
(80559, 'SANTA RITA', 805),
(80560, 'TAMBILLO', 805),
(80561, 'TULULBI (CAB. EN RICAURTE)', 805),
(80562, 'URBINA', 805),
(80650, 'ATACAMES', 806),
(80651, 'LA UNION', 806),
(80652, 'SUA (CAB. EN LA BOCANA)', 806),
(80653, 'TONCHIGÜE', 806),
(80654, 'TONSUPA', 806),
(80750, 'RIOVERDE', 807),
(80751, 'CHONTADURO', 807),
(80752, 'CHUMUNDE', 807),
(80753, 'LAGARTO', 807),
(80754, 'MONTALVO (CAB. EN HORQUETA)', 807),
(80755, 'ROCAFUERTE', 807),
(80850, 'LA CONCORDIA', 808),
(90150, 'GUAYAQUIL', 901),
(90152, 'JUAN GOMEZ RENDON (PROGRESO)', 901),
(90153, 'MORRO', 901),
(90156, 'POSORJA', 901),
(90157, 'PUNA', 901),
(90158, 'TENGUEL', 901),
(90250, 'ALFREDO BAQUERIZO MORENO (JUJAN)', 902),
(90350, 'BALAO', 903),
(90450, 'BALZAR', 904),
(90550, 'COLIMES', 905),
(90551, 'SAN JACINTO', 905),
(90650, 'DAULE', 906),
(90652, 'JUAN BAUTISTA AGUIRRE (LOS TINTOS)', 906),
(90653, 'LAUREL', 906),
(90654, 'LIMONAL', 906),
(90656, 'LOS LOJAS (ENRIQUE BAQUERIZO MORENO)', 906),
(90750, 'ELOY ALFARO (DURAN)', 907),
(90850, 'VELASCO IBARRA (EL EMPALME)', 908),
(90851, 'GUAYAS (PUEBLO NUEVO)', 908),
(90852, 'EL ROSARIO', 908),
(90950, 'EL TRIUNFO', 909),
(91050, 'MILAGRO', 910),
(91051, 'CHOBO', 910),
(91053, 'MARISCAL SUCRE (HUAQUES)', 910),
(91054, 'ROBERTO ASTUDILLO (CAB. EN CRUCE DE VENECIA)', 910),
(91150, 'NARANJAL', 911),
(91151, 'JESUS MARIA', 911),
(91152, 'SAN CARLOS', 911),
(91153, 'SANTA ROSA DE FLANDES', 911),
(91154, 'TAURA', 911),
(91250, 'NARANJITO', 912),
(91350, 'PALESTINA', 913),
(91450, 'PEDRO CARBO', 914),
(91451, 'VALLE DE LA VIRGEN', 914),
(91452, 'SABANILLA', 914),
(91650, 'SAMBORONDON', 916),
(91651, 'TARIFA', 916),
(91850, 'SANTA LUCIA', 918),
(91950, 'EL SALITRE (LAS RAMAS)', 919),
(91951, 'GRAL. VERNAZA (DOS ESTEROS)', 919),
(91952, 'LA VICTORIA (ÑAUZA)', 919),
(91953, 'JUNQUILLAL', 919),
(92050, 'SAN JACINTO DE YAGUACHI', 920),
(92053, 'GRAL. PEDRO J. MONTERO (BOLICHE)', 920),
(92055, 'YAGUACHI VIEJO (CONE)', 920),
(92056, 'VIRGEN DE FATIMA', 920),
(92150, 'GENERAL VILLAMIL (PLAYAS)', 921),
(92250, 'SIMON BOLIVAR', 922),
(92251, 'CRNEL.LORENZO DE GARAICOA (PEDREGAL)', 922),
(92350, 'CORONEL MARCELINO MARIDUEÑA (SAN CARLOS)', 923),
(92450, 'LOMAS DE SARGENTILLO', 924),
(92550, 'NARCISA DE JESUS', 925),
(92750, 'GENERAL ANTONIO ELIZALDE (BUCAY)', 927),
(92850, 'ISIDRO AYORA', 928),
(100150, 'SAN MIGUEL DE IBARRA', 1001),
(100151, 'AMBUQUI', 1001),
(100152, 'ANGOCHAGUA', 1001),
(100153, 'CAROLINA', 1001),
(100154, 'LA ESPERANZA', 1001),
(100155, 'LITA', 1001),
(100156, 'SALINAS', 1001),
(100157, 'SAN ANTONIO', 1001),
(100250, 'ATUNTAQUI', 1002),
(100251, 'IMBAYA (SAN LUIS DE COBUENDO)', 1002),
(100252, 'SAN FRANCISCO DE NATABUELA', 1002),
(100253, 'SAN JOSE DE CHALTURA', 1002),
(100254, 'SAN ROQUE', 1002),
(100350, 'COTACACHI', 1003),
(100351, 'APUELA', 1003),
(100352, 'GARCIA MORENO (LLURIMAGUA)', 1003),
(100353, 'IMANTAG', 1003),
(100354, 'PEÑAHERRERA', 1003),
(100355, 'PLAZA GUTIERREZ', 1003),
(100356, 'QUIROGA', 1003),
(100357, '6 DE JULIO DE CUELLAJE (CAB. EN CUELLAJE)', 1003),
(100358, 'VACAS GALINDO (EL CHURO) (CAB.EN SAN MIGUEL ALTO)', 1003),
(100450, 'OTAVALO', 1004),
(100451, 'DR. MIGUEL EGAS CABEZAS (PEGUCHE)', 1004),
(100452, 'EUGENIO ESPEJO (CALPAQUI)', 1004),
(100453, 'GONZALEZ SUAREZ', 1004),
(100454, 'PATAQUI', 1004),
(100455, 'SAN JOSE DE QUICHINCHE', 1004),
(100456, 'SAN JUAN DE ILUMAN', 1004),
(100457, 'SAN PABLO', 1004),
(100458, 'SAN RAFAEL', 1004),
(100459, 'SELVA ALEGRE (CAB.EN SAN MIGUEL DE PAMPLONA)', 1004),
(100550, 'PIMAMPIRO', 1005),
(100551, 'CHUGA', 1005),
(100552, 'MARIANO ACOSTA', 1005),
(100553, 'SAN FRANCISCO DE SIGSIPAMBA', 1005),
(100650, 'URCUQUI', 1006),
(100651, 'CAHUASQUI', 1006),
(100652, 'LA MERCED DE BUENOS AIRES', 1006),
(100653, 'PABLO ARENAS', 1006),
(100654, 'SAN BLAS', 1006),
(100655, 'TUMBABIRO', 1006),
(110150, 'LOJA', 1101),
(110151, 'CHANTACO', 1101),
(110152, 'CHUQUIRIBAMBA', 1101),
(110153, 'EL CISNE', 1101),
(110154, 'GUALEL', 1101),
(110155, 'JIMBILLA', 1101),
(110156, 'MALACATOS (VALLADOLID)', 1101),
(110157, 'SAN LUCAS', 1101),
(110158, 'SAN PEDRO DE VILCABAMBA', 1101),
(110159, 'SANTIAGO', 1101),
(110160, 'TAQUIL (MIGUEL RIOFRIO)', 1101),
(110161, 'VILCABAMBA (VICTORIA)', 1101),
(110162, 'YANGANA (ARSENIO CASTILLO)', 1101),
(110163, 'QUINARA', 1101),
(110250, 'CARIAMANGA', 1102),
(110251, 'COLAISACA', 1102),
(110252, 'EL LUCERO', 1102),
(110253, 'UTUANA', 1102),
(110254, 'SANGUILLIN', 1102),
(110350, 'CATAMAYO (LA TOMA)', 1103),
(110351, 'EL TAMBO', 1103),
(110352, 'GUAYQUICHUMA', 1103),
(110353, 'SAN PEDRO DE LA BENDITA', 1103),
(110354, 'ZAMBI', 1103),
(110450, 'CELICA', 1104),
(110451, 'CRUZPAMBA (CAB. EN CARLOS BUSTAMANTE)', 1104),
(110455, 'POZUL (SAN JUAN DE POZUL)', 1104),
(110456, 'SABANILLA', 1104),
(110457, 'TNTE. MAXIMILIANO RODRIGUEZ LOAIZA', 1104),
(110550, 'CHAGUARPAMBA', 1105),
(110551, 'BUENAVISTA', 1105),
(110552, 'EL ROSARIO', 1105),
(110553, 'SANTA RUFINA', 1105),
(110554, 'AMARILLOS', 1105),
(110650, 'AMALUZA', 1106),
(110651, 'BELLAVISTA', 1106),
(110652, 'JIMBURA', 1106),
(110653, 'SANTA TERESITA', 1106),
(110654, '27 DE ABRIL (CAB. EN LA NARANJA)', 1106),
(110655, 'EL INGENIO', 1106),
(110656, 'EL AIRO', 1106),
(110750, 'GONZANAMA', 1107),
(110751, 'CHANGAIMINA (LA LIBERTAD)', 1107),
(110753, 'NAMBACOLA', 1107),
(110754, 'PURUNUMA (EGUIGUREN)', 1107),
(110756, 'SACAPALCA', 1107),
(110850, 'MACARA', 1108),
(110851, 'LARAMA', 1108),
(110852, 'LA VICTORIA', 1108),
(110853, 'SABIANGO (LA CAPILLA)', 1108),
(110950, 'CATACOCHA', 1109),
(110951, 'CANGONAMA', 1109),
(110952, 'GUACHANAMA', 1109),
(110954, 'LAURO GUERRERO', 1109),
(110956, 'ORIANGA', 1109),
(110957, 'SAN ANTONIO', 1109),
(110958, 'CASANGA', 1109),
(110959, 'YAMANA', 1109),
(111050, 'ALAMOR', 1110),
(111051, 'CIANO', 1110),
(111052, 'EL ARENAL', 1110),
(111053, 'EL LIMO (MARIANA DE JESUS)', 1110),
(111054, 'MERCADILLO', 1110),
(111055, 'VICENTINO', 1110),
(111150, 'SARAGURO', 1111),
(111151, 'EL PARAISO DE CELEN', 1111),
(111152, 'EL TABLON', 1111),
(111153, 'LLUZHAPA', 1111),
(111154, 'MANU', 1111),
(111155, 'SAN ANTONIO DE QUMBE (CUMBE)', 1111),
(111156, 'SAN PABLO DE TENTA', 1111),
(111157, 'SAN SEBASTIAN DE YULUC', 1111),
(111158, 'SELVA ALEGRE', 1111),
(111159, 'URDANETA (PAQUISHAPA)', 1111),
(111160, 'SUMAYPAMBA', 1111),
(111250, 'SOZORANGA', 1112),
(111251, 'NUEVA FATIMA', 1112),
(111252, 'TACAMOROS', 1112),
(111350, 'ZAPOTILLO', 1113),
(111351, 'CAZADEROS (CAB.EN MANGAURCO)', 1113),
(111352, 'GARZAREAL', 1113),
(111353, 'LIMONES', 1113),
(111354, 'PALETILLAS', 1113),
(111355, 'BOLASPAMBA', 1113),
(111450, 'PINDAL', 1114),
(111451, 'CHAQUINAL', 1114),
(111452, '12 DE DICIEMBRE (CAB.EN ACHIOTES)', 1114),
(111550, 'QUILANGA', 1115),
(111551, 'FUNDOCHAMBA', 1115),
(111552, 'SAN ANTONIO DE LAS ARADAS (CAB. EN LAS ARADAS)', 1115),
(111650, 'OLMEDO', 1116),
(111651, 'LA TINGUE', 1116),
(120150, 'BABAHOYO', 1201),
(120152, 'CARACOL', 1201),
(120153, 'FEBRES CORDERO (LAS JUNTAS) (CAB. EN MATA DE CACAO)', 1201),
(120154, 'PIMOCHA', 1201),
(120155, 'LA UNION', 1201),
(120250, 'BABA', 1202),
(120251, 'GUARE', 1202),
(120252, 'ISLA DE BEJUCAL', 1202),
(120350, 'MONTALVO', 1203),
(120450, 'PUEBLOVIEJO', 1204),
(120451, 'PUERTO PECHICHE', 1204),
(120452, 'SAN JUAN', 1204),
(120550, 'QUEVEDO', 1205),
(120553, 'SAN CARLOS', 1205),
(120555, 'LA ESPERANZA', 1205),
(120650, 'CATARAMA', 1206),
(120651, 'RICAURTE', 1206),
(120750, 'VENTANAS', 1207),
(120752, 'ZAPOTAL', 1207),
(120850, 'VINCES', 1208),
(120851, 'ANTONIO SOTOMAYOR (CAB. EN PLAYAS DE VINCES)', 1208),
(120950, 'PALENQUE', 1209),
(121050, 'SAN JACINTO DE BUENA FE', 1210),
(121051, 'PATRICIA PILAR', 1210),
(121150, 'VALENCIA', 1211),
(121250, 'MOCACHE', 1212),
(121350, 'QUINSALOMA', 1213),
(130150, 'PORTOVIEJO', 1301),
(130151, 'ABDON CALDERON (SAN FRANCISCO)', 1301),
(130152, 'ALHAJUELA (BAJO GRANDE)', 1301),
(130153, 'CRUCITA', 1301),
(130154, 'PUEBLO NUEVO', 1301),
(130155, 'RIOCHICO (RIO CHICO)', 1301),
(130156, 'SAN PLACIDO', 1301),
(130157, 'CHIRIJOS', 1301),
(130250, 'CALCETA', 1302),
(130251, 'MEMBRILLO', 1302),
(130252, 'QUIROGA', 1302),
(130350, 'CHONE', 1303),
(130351, 'BOYACA', 1303),
(130352, 'CANUTO', 1303),
(130353, 'CONVENTO', 1303),
(130354, 'CHIBUNGA', 1303),
(130355, 'ELOY ALFARO', 1303),
(130356, 'RICAURTE', 1303),
(130357, 'SAN ANTONIO', 1303),
(130450, 'EL CARMEN', 1304),
(130451, 'WILFRIDO LOOR MOREIRA (MAICITO)', 1304),
(130452, 'SAN PEDRO DE SUMA', 1304),
(130550, 'FLAVIO ALFARO', 1305),
(130551, 'SAN FRANCISCO DE NOVILLO (CAB. EN NOVILLO)', 1305),
(130552, 'ZAPALLO', 1305),
(130650, 'JIPIJAPA', 1306),
(130651, 'AMERICA', 1306),
(130652, 'EL ANEGADO (CAB. EN ELOY ALFARO)', 1306),
(130653, 'JULCUY', 1306),
(130654, 'LA UNION', 1306),
(130656, 'MEMBRILLAL', 1306),
(130657, 'PEDRO PABLO GOMEZ', 1306),
(130658, 'PUERTO DE CAYO', 1306),
(130750, 'JUNIN', 1307),
(130850, 'MANTA', 1308),
(130851, 'SAN LORENZO', 1308),
(130852, 'SANTA MARIANITA (BOCA DE PACOCHE)', 1308),
(130950, 'MONTECRISTI', 1309),
(130952, 'LA PILA', 1309),
(131050, 'PAJAN', 1310),
(131051, 'CAMPOZANO (LA PALMA DE PAJAN)', 1310),
(131052, 'CASCOL', 1310),
(131053, 'GUALE', 1310),
(131054, 'LASCANO', 1310),
(131150, 'PICHINCHA', 1311),
(131151, 'BARRAGANETE', 1311),
(131152, 'SAN SEBASTIAN', 1311),
(131250, 'ROCAFUERTE', 1312),
(131350, 'SANTA ANA DE VUELTA LARGA', 1313),
(131351, 'AYACUCHO', 1313),
(131352, 'HONORATO VASQUEZ (CAB. EN VASQUEZ)', 1313),
(131353, 'LA UNION', 1313),
(131355, 'SAN PABLO (CAB. EN PUEBLO NUEVO)', 1313),
(131450, 'BAHIA DE CARAQUEZ', 1314),
(131453, 'CHARAPOTO', 1314),
(131457, 'SAN ISIDRO', 1314),
(131550, 'TOSAGUA', 1315),
(131551, 'BACHILLERO', 1315),
(131552, 'ANGEL PEDRO GILER (LA ESTANCILLA)', 1315),
(131650, 'SUCRE', 1316),
(131651, 'BELLAVISTA', 1316),
(131652, 'NOBOA', 1316),
(131653, 'ARQ. SIXTO DURAN BALLEN', 1316),
(131750, 'PEDERNALES', 1317),
(131751, 'COJIMIES', 1317),
(131752, '10 DE AGOSTO', 1317),
(131753, 'ATAHUALPA', 1317),
(131850, 'OLMEDO', 1318),
(131950, 'PUERTO LOPEZ', 1319),
(131951, 'MACHALILLA', 1319),
(131952, 'SALANGO', 1319),
(132050, 'JAMA', 1320),
(132150, 'JARAMIJO', 1321),
(132250, 'SAN VICENTE', 1322),
(132251, 'CANOA', 1322),
(140150, 'MACAS', 1401),
(140151, 'ALSHI (CAB. EN 9 DE OCTUBRE)', 1401),
(140153, 'GENERAL PROAÑO', 1401),
(140156, 'SAN ISIDRO', 1401),
(140157, 'SEVILLA DON BOSCO', 1401),
(140158, 'SINAI', 1401),
(140160, 'ZUÑA (ZUÑAC)', 1401),
(140162, 'CUCHAENTZA', 1401),
(140164, 'RIO BLANCO', 1401),
(140250, 'GUALAQUIZA', 1402),
(140251, 'AMAZONAS (ROSARIO DE CUYES)', 1402),
(140252, 'BERMEJOS', 1402),
(140253, 'BOMBOIZA', 1402),
(140254, 'CHIGÜINDA', 1402),
(140255, 'EL ROSARIO', 1402),
(140256, 'NUEVA TARQUI', 1402),
(140257, 'SAN MIGUEL DE CUYES', 1402),
(140258, 'EL IDEAL', 1402),
(140350, 'GENERAL LEONIDAS PLAZA GUTIERREZ (LIMON)', 1403),
(140351, 'INDANZA', 1403),
(140353, 'SAN ANTONIO (CAB. EN SAN ANTONIO CENTRO', 1403),
(140356, 'SAN MIGUEL DE CONCHAY', 1403),
(140357, 'SANTA SUSANA DE CHIVIAZA (CAB. EN CHIVIAZA)', 1403),
(140358, 'YUNGANZA (CAB. EN EL ROSARIO)', 1403),
(140450, 'PALORA (METZERA)', 1404),
(140451, 'ARAPICOS', 1404),
(140452, 'CUMANDA (CAB. EN COLONIA AGRICOLA SEVILLA DEL ORO)', 1404),
(140454, 'SANGAY (CAB. EN NAYAMANACA)', 1404),
(140455, '16 DE AGOSTO', 1404),
(140550, 'SANTIAGO DE MENDEZ', 1405),
(140551, 'COPAL', 1405),
(140552, 'CHUPIANZA', 1405),
(140553, 'PATUCA', 1405),
(140554, 'SAN LUIS DE EL ACHO (CAB. EN EL ACHO)', 1405),
(140556, 'TAYUZA', 1405),
(140557, 'SAN FRANCISCO DE CHINIMBIMI', 1405),
(140650, 'SUCUA', 1406),
(140651, 'ASUNCION', 1406),
(140652, 'HUAMBI', 1406),
(140655, 'SANTA MARIANITA DE JESUS', 1406),
(140750, 'HUAMBOYA', 1407),
(140751, 'CHIGUAZA', 1407),
(140850, 'SAN JUAN BOSCO', 1408),
(140851, 'PAN DE AZUCAR', 1408),
(140852, 'SAN CARLOS DE LIMON', 1408),
(140853, 'SAN JACINTO DE WAKAMBEIS', 1408),
(140854, 'SANTIAGO DE PANANZA', 1408),
(140950, 'TAISHA', 1409),
(140951, 'HUASAGA (CAB. EN WAMPUIK)', 1409),
(140952, 'MACUMA', 1409),
(140953, 'TUUTINENTZA', 1409),
(140954, 'PUMPUENTSA', 1409),
(141050, 'LOGROÑO', 1410),
(141051, 'YAUPI', 1410),
(141052, 'SHIMPIS', 1410),
(141150, 'PABLO SEXTO', 1411),
(141250, 'SANTIAGO', 1412),
(141251, 'SAN JOSE DE MORONA', 1412),
(150150, 'TENA', 1501),
(150151, 'AHUANO', 1501),
(150153, 'CHONTAPUNTA', 1501),
(150154, 'PANO', 1501),
(150155, 'PUERTO MISAHUALLI', 1501),
(150156, 'PUERTO NAPO', 1501),
(150157, 'TALAG', 1501),
(150350, 'ARCHIDONA', 1503),
(150352, 'COTUNDO', 1503),
(150354, 'SAN PABLO DE USHPAYACU', 1503),
(150450, 'EL CHACO', 1504),
(150451, 'GONZALO DIAZ DE PINEDA (EL BOMBON)', 1504),
(150452, 'LINARES', 1504),
(150453, 'OYACACHI', 1504),
(150454, 'SANTA ROSA', 1504),
(150455, 'SARDINAS', 1504),
(150750, 'BAEZA', 1507),
(150751, 'COSANGA', 1507),
(150752, 'CUYUJA', 1507),
(150753, 'PAPALLACTA', 1507),
(150754, 'SAN FRANCISCO DE BORJA (VIRGILIO DAVILA)', 1507),
(150756, 'SUMACO', 1507),
(150950, 'CARLOS JULIO AROSEMENA TOLA', 1509),
(160150, 'PUYO', 1601),
(160152, 'CANELOS', 1601),
(160154, 'DIEZ DE AGOSTO', 1601),
(160155, 'FATIMA', 1601),
(160156, 'MONTALVO (ANDOAS)', 1601),
(160157, 'POMONA', 1601),
(160158, 'RIO CORRIENTES', 1601),
(160159, 'RIO TIGRE', 1601),
(160161, 'SARAYACU', 1601),
(160162, 'SIMON BOLIVAR (CAB. EN MUSHULLACTA)', 1601),
(160163, 'TARQUI', 1601),
(160164, 'TENIENTE HUGO ORTIZ', 1601),
(160165, 'VERACRUZ (INDILLAMA) (CAB. EN INDILLAMA)', 1601),
(160166, 'EL TRIUNFO', 1601),
(160250, 'MERA', 1602),
(160251, 'MADRE TIERRA', 1602),
(160252, 'SHELL', 1602),
(160350, 'SANTA CLARA', 1603),
(160351, 'SAN JOSE', 1603),
(160450, 'ARAJUNO', 1604),
(160451, 'CURARAY', 1604),
(170150, 'QUITO DISTRITO METROPOLITANO, CABECERA CANTONAL, CAPITAL PROVINCIAL Y DE LA REPUBLICA DEL ECUADOR', 1701),
(170151, 'ALANGASI', 1701),
(170152, 'AMAGUAÑA', 1701),
(170153, 'ATAHUALPA (HABASPAMBA)', 1701),
(170154, 'CALACALI', 1701),
(170155, 'CALDERON (CARAPUNGO)', 1701),
(170156, 'CONOCOTO', 1701),
(170157, 'CUMBAYA', 1701),
(170158, 'CHAVEZPAMBA', 1701),
(170159, 'CHECA (CHILPA)', 1701),
(170160, 'EL QUINCHE', 1701),
(170161, 'GUALEA', 1701),
(170162, 'GUANGOPOLO', 1701),
(170163, 'GUAYLLABAMBA', 1701),
(170164, 'LA MERCED', 1701),
(170165, 'LLANO CHICO', 1701),
(170166, 'LLOA', 1701),
(170168, 'NANEGAL', 1701),
(170169, 'NANEGALITO', 1701),
(170170, 'NAYON', 1701),
(170171, 'NONO', 1701),
(170172, 'PACTO', 1701),
(170174, 'PERUCHO', 1701),
(170175, 'PIFO', 1701),
(170176, 'PINTAG', 1701),
(170177, 'POMASQUI', 1701),
(170178, 'PUELLARO', 1701),
(170179, 'PUEMBO', 1701),
(170180, 'SAN ANTONIO', 1701),
(170181, 'SAN JOSE DE MINAS', 1701),
(170183, 'TABABELA', 1701),
(170184, 'TUMBACO', 1701),
(170185, 'YARUQUI', 1701),
(170186, 'ZAMBIZA', 1701),
(170250, 'CAYAMBE', 1702),
(170251, 'ASCAZUBI', 1702),
(170252, 'CANGAHUA', 1702),
(170253, 'OLMEDO (PESILLO)', 1702),
(170254, 'OTON', 1702),
(170255, 'SANTA ROSA DE CUZUBAMBA', 1702),
(170350, 'MACHACHI', 1703),
(170351, 'ALOAG', 1703),
(170352, 'ALOASI', 1703),
(170353, 'CUTUGLAHUA', 1703),
(170354, 'EL CHAUPI', 1703),
(170355, 'MANUEL CORNEJO ASTORGA (TANDAPI)', 1703),
(170356, 'TAMBILLO', 1703),
(170357, 'UYUMBICHO', 1703),
(170450, 'TABACUNDO', 1704),
(170451, 'LA ESPERANZA', 1704),
(170452, 'MALCHINGUI', 1704),
(170453, 'TOCACHI', 1704),
(170454, 'TUPIGACHI', 1704),
(170550, 'SANGOLQUI', 1705),
(170551, 'COTOGCHOA', 1705),
(170552, 'RUMIPAMBA', 1705),
(170750, 'SAN MIGUEL DE LOS BANCOS', 1707),
(170751, 'MINDO', 1707),
(170850, 'PEDRO VICENTE MALDONADO', 1708),
(170950, 'PUERTO QUITO', 1709),
(180150, 'AMBATO', 1801),
(180151, 'AMBATILLO', 1801),
(180152, 'ATAHUALPA (CHISALATA)', 1801),
(180153, 'AUGUSTO N. MARTINEZ (MUNDUGLEO)', 1801),
(180154, 'CONSTANTINO FERNANDEZ (CAB. EN CULLITAHUA)', 1801),
(180155, 'HUACHI GRANDE', 1801),
(180156, 'IZAMBA', 1801),
(180157, 'JUAN BENIGNO VELA', 1801),
(180158, 'MONTALVO', 1801),
(180159, 'PASA', 1801),
(180160, 'PICAIGUA', 1801),
(180161, 'PILAGÜIN (PILAHÜIN)', 1801),
(180162, 'QUISAPINCHA (QUIZAPINCHA)', 1801),
(180163, 'SAN BARTOLOME DE PINLLOG', 1801),
(180164, 'SAN FERNANDO (PASA SAN FERNANDO)', 1801),
(180165, 'SANTA ROSA', 1801),
(180166, 'TOTORAS', 1801),
(180167, 'CUNCHIBAMBA', 1801),
(180168, 'UNAMUNCHO', 1801),
(180250, 'BAÑOS DE AGUA SANTA', 1802),
(180251, 'LLIGUA', 1802),
(180252, 'RIO NEGRO', 1802),
(180253, 'RIO VERDE', 1802),
(180254, 'ULBA', 1802),
(180350, 'CEVALLOS', 1803),
(180450, 'MOCHA', 1804),
(180451, 'PINGUILI', 1804),
(180550, 'PATATE', 1805),
(180551, 'EL TRIUNFO', 1805),
(180552, 'LOS ANDES (CAB. EN POATUG)', 1805),
(180553, 'SUCRE (CAB. EN SUCRE-PATATE URCU)', 1805),
(180650, 'QUERO', 1806),
(180651, 'RUMIPAMBA', 1806),
(180652, 'YANAYACU - MOCHAPATA (CAB. EN YANAYACU)', 1806),
(180750, 'PELILEO', 1807),
(180751, 'BENITEZ (PACHANLICA)', 1807),
(180752, 'BOLIVAR', 1807),
(180753, 'COTALO', 1807),
(180754, 'CHIQUICHA (CAB. EN CHIQUICHA GRANDE)', 1807),
(180755, 'EL ROSARIO (RUMICHACA)', 1807),
(180756, 'GARCIA MORENO (CHUMAQUI)', 1807),
(180757, 'GUAMBALO (HUAMBALO)', 1807),
(180758, 'SALASACA', 1807),
(180850, 'PILLARO', 1808),
(180851, 'BAQUERIZO MORENO', 1808),
(180852, 'EMILIO MARIA TERAN (RUMIPAMBA)', 1808),
(180853, 'MARCOS ESPINEL (CHACATA)', 1808),
(180854, 'PRESIDENTE URBINA (CHAGRAPAMBA -PATZUCUL)', 1808),
(180855, 'SAN ANDRES', 1808),
(180856, 'SAN JOSE DE POALO', 1808),
(180857, 'SAN MIGUELITO', 1808),
(180950, 'TISALEO', 1809),
(180951, 'QUINCHICOTO', 1809),
(190150, 'ZAMORA', 1901),
(190151, 'CUMBARATZA', 1901),
(190152, 'GUADALUPE', 1901),
(190153, 'IMBANA (LA VICTORIA DE IMBANA)', 1901),
(190155, 'SABANILLA', 1901),
(190156, 'TIMBARA', 1901),
(190158, 'SAN CARLOS DE LAS MINAS', 1901),
(190250, 'ZUMBA', 1902),
(190251, 'CHITO', 1902),
(190252, 'EL CHORRO', 1902),
(190254, 'LA CHONTA', 1902),
(190256, 'PUCAPAMBA', 1902),
(190259, 'SAN ANDRES', 1902),
(190350, 'GUAYZIMI', 1903),
(190351, 'ZURMI', 1903),
(190352, 'NUEVO PARAISO', 1903),
(190450, '28 DE MAYO (SAN JOSE DE YACUAMBI)', 1904),
(190451, 'LA PAZ', 1904),
(190452, 'TUTUPALI', 1904),
(190550, 'YANTZAZA (YANZATZA)', 1905),
(190551, 'CHICAÑA', 1905),
(190553, 'LOS ENCUENTROS', 1905),
(190650, 'EL PANGUI', 1906),
(190651, 'EL GUISME', 1906),
(190652, 'PACHICUTZA', 1906),
(190653, 'TUNDAYME', 1906),
(190750, 'ZUMBI', 1907),
(190850, 'PALANDA', 1908),
(190851, 'EL PORVENIR DEL CARMEN', 1908),
(190852, 'SAN FRANCISCO DEL VERGEL', 1908),
(190853, 'VALLADOLID', 1908),
(190854, 'LA CANELA', 1908),
(190950, 'PAQUISHA', 1909),
(190951, 'BELLAVISTA', 1909),
(190952, 'NUEVO QUITO', 1909),
(200150, 'PUERTO BAQUERIZO MORENO', 2001),
(200151, 'EL PROGRESO', 2001),
(200152, 'ISLA SANTA MARIA (FLOREANA) (CAB. EN PTO. VELASCO IBARRA)', 2001),
(200250, 'PUERTO VILLAMIL', 2002),
(200251, 'TOMAS DE BERLANGA (SANTO TOMAS)', 2002),
(200350, 'PUERTO AYORA', 2003),
(200351, 'BELLAVISTA', 2003),
(200352, 'SANTA ROSA (INCLUYE LA ISLA BALTRA)', 2003),
(210150, 'NUEVA LOJA', 2101),
(210152, 'DURENO', 2101),
(210153, 'GENERAL FARFAN', 2101),
(210155, 'EL ENO', 2101),
(210156, 'PACAYACU', 2101),
(210157, 'JAMBELI', 2101),
(210158, 'SANTA CECILIA', 2101),
(210250, 'LUMBAQUI', 2102),
(210251, 'EL REVENTADOR', 2102),
(210252, 'GONZALO PIZARRO', 2102),
(210254, 'PUERTO LIBRE', 2102),
(210350, 'PUERTO EL CARMEN DEL PUTUMAYO', 2103),
(210351, 'PALMA ROJA', 2103),
(210352, 'PUERTO BOLIVAR (PUERTO MONTUFAR)', 2103),
(210353, 'PUERTO RODRIGUEZ', 2103),
(210354, 'SANTA ELENA', 2103),
(210450, 'SHUSHUFINDI', 2104),
(210451, 'LIMONCOCHA', 2104),
(210452, 'PAÑACOCHA', 2104),
(210453, 'SAN ROQUE (CAB. EN SAN VICENTE)', 2104),
(210454, 'SAN PEDRO DE LOS COFANES', 2104),
(210455, 'SIETE DE JULIO', 2104),
(210550, 'LA BONITA', 2105),
(210551, 'EL PLAYON DE SAN FRANCISCO', 2105),
(210552, 'LA SOFIA', 2105),
(210553, 'ROSA FLORIDA', 2105),
(210554, 'SANTA BARBARA', 2105),
(210650, 'EL DORADO DE CASCALES', 2106),
(210651, 'SANTA ROSA DE SUCUMBIOS', 2106),
(210652, 'SEVILLA', 2106),
(210750, 'TARAPOA', 2107),
(210751, 'CUYABENO', 2107),
(210752, 'AGUAS NEGRAS', 2107),
(220150, 'PUERTO FRANCISCO DE ORELLANA (EL COCA)', 2201),
(220151, 'DAYUMA', 2201),
(220152, 'TARACOA (CAB. EN NUEVA ESPERANZA: YUCA)', 2201),
(220153, 'ALEJANDRO LABAKA', 2201),
(220154, 'EL DORADO', 2201),
(220155, 'EL EDEN', 2201),
(220156, 'GARCIA MORENO', 2201),
(220157, 'INES ARANGO (CAB. EN WESTERN)', 2201),
(220158, 'LA BELLEZA', 2201),
(220159, 'NUEVO PARAISO (CAB. EN UNIÓN CHIMBORAZO)', 2201),
(220160, 'SAN JOSE DE GUAYUSA', 2201),
(220161, 'SAN LUIS DE ARMENIA', 2201),
(220250, 'NUEVO ROCAFUERTE', 2202),
(220251, 'CAPITAN AUGUSTO RIVADENEYRA', 2202),
(220252, 'CONONACO', 2202),
(220253, 'SANTA MARIA DE HUIRIRIMA', 2202),
(220254, 'TIPUTINI', 2202),
(220255, 'YASUNI', 2202),
(220350, 'LA JOYA DE LOS SACHAS', 2203),
(220351, 'ENOKANQUI', 2203),
(220352, 'POMPEYA', 2203),
(220353, 'SAN CARLOS', 2203),
(220354, 'SAN SEBASTIAN DEL COCA', 2203),
(220355, 'LAGO SAN PEDRO', 2203),
(220356, 'RUMIPAMBA', 2203),
(220357, 'TRES DE NOVIEMBRE', 2203),
(220358, 'UNION MILAGREÑA', 2203),
(220450, 'LORETO', 2204),
(220451, 'AVILA (CAB. EN HUIRUNO)', 2204),
(220452, 'PUERTO MURIALDO', 2204),
(220453, 'SAN JOSE DE PAYAMINO', 2204),
(220454, 'SAN JOSE DE DAHUANO', 2204),
(220455, 'SAN VICENTE DE HUATICOCHA', 2204),
(230150, 'SANTO DOMINGO DE LOS COLORADOS', 2301),
(230151, 'ALLURIQUIN', 2301),
(230152, 'PUERTO LIMON', 2301),
(230153, 'LUZ DE AMERICA', 2301),
(230154, 'SAN JACINTO DEL BUA', 2301),
(230155, 'VALLE HERMOSO', 2301),
(230156, 'EL ESFUERZO', 2301),
(230157, 'SANTA MARIA DEL TOACHI', 2301),
(240150, 'SANTA ELENA', 2401),
(240151, 'ATAHUALPA', 2401),
(240152, 'COLONCHE', 2401),
(240153, 'CHANDUY', 2401),
(240154, 'MANGLARALTO', 2401),
(240155, 'SIMON BOLIVAR (JULIO MORENO)', 2401),
(240156, 'SAN JOSE DE ANCON', 2401),
(240250, 'LA LIBERTAD', 2402),
(240350, 'SALINAS', 2403),
(240351, 'ANCONCITO', 2403),
(240352, 'JOSE LUIS TAMAYO (MUEY)', 2403),
(900151, 'LAS GOLONDRINAS', 9001),
(900351, 'MANGA DEL CURA', 9003),
(900451, 'EL PIEDRERO', 9004);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDPersonas`
--

CREATE TABLE `ListaIDPersonas` (
  `IDPersona` int(10) UNSIGNED NOT NULL COMMENT 'Identificador único del Intervenido',
  `Apellido1` varchar(50) NOT NULL COMMENT 'Apellidos del Intervenido ',
  `Apellido2` varchar(50) DEFAULT NULL COMMENT 'Apellidos del Intervenido ',
  `Nombre1` varchar(50) NOT NULL COMMENT 'Nombres del Intervenido ',
  `Nombre2` varchar(50) DEFAULT NULL COMMENT 'Nombres del Intervenido',
  `Cedula` char(10) DEFAULT NULL COMMENT 'Numero de Cedula del Intervenido',
  `FechaNacim` date DEFAULT NULL COMMENT 'Fecha de nacimiento del Intervenido',
  `NacIDNacionalidad` tinyint(3) DEFAULT NULL COMMENT 'Nacionalidad del Intervenido',
  `NacIDProvincia` tinyint(3) DEFAULT NULL COMMENT 'Provincia donde nacio',
  `NacIDCanton` smallint(6) DEFAULT NULL COMMENT 'Canton donde nacio',
  `NacIDParroquia` int(11) DEFAULT NULL COMMENT 'Parroquia donde nacio',
  `IDGenero` tinyint(3) NOT NULL COMMENT 'Genero del Intervenido',
  `IDEtnia` tinyint(3) DEFAULT NULL COMMENT 'Etnia del Intervenido',
  `IDEstadoCivil` tinyint(3) DEFAULT NULL COMMENT 'Estado Civil del Intervenido',
  `IDColorCabello` tinyint(3) DEFAULT NULL COMMENT 'Color de cabello del Intervenido',
  `IDCabelloTipo` tinyint(3) DEFAULT NULL COMMENT 'Tipo de cabello del Intervenido',
  `IDContextura` tinyint(3) DEFAULT NULL COMMENT 'Contextura del Intervenido',
  `IDEstatura` tinyint(3) DEFAULT NULL COMMENT 'Estatura del Intervenido',
  `IDCondicionMedica` tinyint(3) DEFAULT NULL COMMENT 'Condición médica del Intervenido',
  `IDDiscapacidad` tinyint(3) DEFAULT NULL COMMENT 'Informacion si tiene alguna discapacidad el Intervenido',
  `DiscapacidadNivel` tinyint(3) DEFAULT NULL,
  `IngresosAprox` tinyint(3) DEFAULT NULL,
  `GrupoEtario` varchar(10) DEFAULT NULL COMMENT 'Rango de edad que se encuentra la persona',
  `Enfermedad` varchar(150) DEFAULT NULL,
  `LugarAtencionMedica` varchar(100) DEFAULT NULL,
  `Barrio` varchar(150) DEFAULT NULL,
  `Fotos_Personas` text COMMENT 'visualización de personas intervenida',
  `ParentezcoNNA` varchar(150) DEFAULT NULL,
  `NumFamiliar` varchar(50) DEFAULT NULL,
  `IdentificacionFamiliar` varchar(50) DEFAULT NULL,
  `ApellidoFamiliar` varchar(150) DEFAULT NULL,
  `NombreFamiliar` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDPersonas`
--

INSERT INTO `ListaIDPersonas` (`IDPersona`, `Apellido1`, `Apellido2`, `Nombre1`, `Nombre2`, `Cedula`, `FechaNacim`, `NacIDNacionalidad`, `NacIDProvincia`, `NacIDCanton`, `NacIDParroquia`, `IDGenero`, `IDEtnia`, `IDEstadoCivil`, `IDColorCabello`, `IDCabelloTipo`, `IDContextura`, `IDEstatura`, `IDCondicionMedica`, `IDDiscapacidad`, `DiscapacidadNivel`, `IngresosAprox`, `GrupoEtario`, `Enfermedad`, `LugarAtencionMedica`, `Barrio`, `Fotos_Personas`, `ParentezcoNNA`, `NumFamiliar`, `IdentificacionFamiliar`, `ApellidoFamiliar`, `NombreFamiliar`) VALUES
(1, 'Pueblo', 'GYE', 'Juan', NULL, '9000000001', NULL, 1, 9, NULL, NULL, 1, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(2, 'Pueblo', 'uio', 'Ana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3, 'Luzuriaga', 'Mejia', 'Ken', 'Nelson', '0953114774', '2000-08-11', 1, 9, 901, 90150, 1, 4, 1, 1, 1, 1, 3, NULL, 1, NULL, NULL, NULL, 'aaaaaa', '', NULL, 'https://miesdinapen.tk/api/Fotos/Uploads/logomies2019.png', NULL, NULL, NULL, NULL, NULL),
(4, 'Test', 'Test1', 'Test2', 'Test3', '0953121211', '2006-08-11', 1, 3, 301, 30154, 2, 3, 2, 1, 2, 1, 2, NULL, 2, NULL, NULL, '12-14 años', 'enfermedad test', 'institucion centro medica', 'barrio prueba', '', NULL, NULL, NULL, NULL, NULL),
(5, 'persona ', 'nueva', 'persona', 'test', '0910999435', '2009-08-11', 3, 6, 603, 60353, 1, 3, 2, 2, 1, 1, 1, NULL, 1, NULL, NULL, '12-14 años', '', '', 'barrio h', '', NULL, NULL, NULL, NULL, NULL),
(6, 'apellido', 'prueba', 'nombre', 'prueba2', '', '2009-08-11', 1, 9, 901, 90150, 2, 1, 1, 2, 1, 1, 2, NULL, 1, NULL, NULL, '12-14 años', 'enfermedad', 'centro medico', 'barrio guayaquil', '', NULL, NULL, NULL, NULL, NULL),
(7, 'persona', 'persona2', 'perosna3', 'persona4', '', '2008-08-11', 1, 9, 901, NULL, 1, 3, 1, 2, 2, 1, NULL, 2, 1, NULL, NULL, '05-11 años', 'cual', 'medicaaa', 'barrio10', 'https://miesdinapen.tk/api/Fotos/Uploads/image.png', NULL, NULL, NULL, NULL, NULL),
(8, 'aaa', '', 'bbbb', '', '1231232', '2019-06-01', 4, 3, 302, 30254, 2, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL\n     ', NULL, NULL, 'aaaaa', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'aaaa', '', 'zzzzz', '', '12312321', '2020-07-10', 2, 2, 201, 20150, 1, NULL, NULL, 4, 2, 2, 3, NULL, NULL, NULL, NULL, 'NULL\n     ', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'prueba', 'prueba', 'prueba', 'prueba', '9999999', '2009-04-08', 1, 9, 901, 90150, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '12-14 años', NULL, NULL, 'prueba', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'prueba810', 'prueba810', 'prueba810', 'prueba810', '9999999999', '2017-03-08', 1, 9, 901, 90150, 2, 2, 1, 1, 1, 1, 1, 2, 1, NULL, NULL, '05-11 años', '', '', 'prueba810', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'pruebax', 'pruebax', 'pruebax', 'pruebax', '012345789', '2013-03-08', 1, 9, 901, 90150, 2, 3, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '05-11 años', NULL, NULL, 'pruebax', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Prueba9', 'Prueba9', 'Prueba9', 'Prueba9', '0000000', '2015-04-09', 1, 9, 901, 90150, 1, 4, 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '05-11 años', NULL, NULL, 'Prueba9', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Prueba9', 'Prueba9', 'Prueba9', 'Prueba9', '0000000', '2015-04-09', 1, 9, 901, 90150, 1, 4, 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '05-11 años', NULL, NULL, 'Prueba9', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Freya', 'Freya', 'Freya', 'Freya', '098754623', '2005-03-09', 1, 9, 901, 90150, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, '15-17 años', NULL, NULL, 'Freya', 'https://miesdinapen.tk/api/Fotos/Uploads/icon.png', NULL, NULL, NULL, NULL, NULL),
(16, 'test', '', 'test2', '', '', '2018-07-12', 3, 2, 203, 20353, 1, 2, 2, 2, 1, NULL, NULL, NULL, 1, NULL, NULL, 'NULL\n     ', '', '', 'barrio f', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'tssss', '', 'tssss12', '', '1231232', '1996-08-11', NULL, 2, 203, 20353, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL\n     ', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Prueba', '', 'Prueba', '', '8888', '2009-11-09', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL\n     ', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'paul', 'paul', 'paul', 'paul', '0954444', '2012-04-11', 1, 9, 901, 90150, 1, 3, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '05-11 años', NULL, NULL, 'paul', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'probando', 'testing', 'aoa', '', '123123', '2002-11-11', NULL, 2, 202, 20251, 1, NULL, NULL, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, '', 'adasd', '', '', NULL, 'pade', '095631447', '0953114774', 'nomrbre', 'apellido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDPersonasFamiliares`
--

CREATE TABLE `ListaIDPersonasFamiliares` (
  `IDPersona` int(11) NOT NULL,
  `IDParentezco` tinyint(2) NOT NULL COMMENT 'Indica el parentesco con el Infante ',
  `IDPersonaFamiliar` int(11) NOT NULL COMMENT 'Nombres del Familiar '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDPersonasFamiliares`
--

INSERT INTO `ListaIDPersonasFamiliares` (`IDPersona`, `IDParentezco`, `IDPersonaFamiliar`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDProvincias`
--

CREATE TABLE `ListaIDProvincias` (
  `IDProvincia` tinyint(3) NOT NULL,
  `Provincia` varchar(50) NOT NULL,
  `IDNacionalidad` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDProvincias`
--

INSERT INTO `ListaIDProvincias` (`IDProvincia`, `Provincia`, `IDNacionalidad`) VALUES
(1, 'AZUAY', 0),
(2, 'BOLIVAR', 0),
(3, 'CANAR', 0),
(4, 'CARCHI', 0),
(5, 'COTOPAXI', 0),
(6, 'CHIMBORAZO', 0),
(7, 'EL ORO', 0),
(8, 'ESMERALDA', 0),
(9, 'GUAYAS', 0),
(10, 'IMBABURA', 0),
(11, 'LOJA', 0),
(12, 'LOS RIOS', 0),
(13, 'MANABI', 0),
(14, 'MORONA SANTIAGO', 0),
(15, 'NAPO', 0),
(16, 'PASTAZA', 0),
(17, 'PICHINCHA', 0),
(18, 'TUNGURAHUA', 0),
(19, 'ZAMORA CHINCHIPE', 0),
(20, 'GALAPAGOS', 0),
(21, 'SUCUMBIOS', 0),
(22, 'ORELLANA', 0),
(23, 'SANTO DOMINGO DE LOS TSACHILAS', 0),
(24, 'SANTA ELENA', 0),
(90, 'ZONAS NO DELIMITADAS', 0),
(91, 'provincia1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDTipoActividad`
--

CREATE TABLE `ListaIDTipoActividad` (
  `IDTipoActividad` tinyint(3) NOT NULL,
  `TipoActividad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDTipoActividad`
--

INSERT INTO `ListaIDTipoActividad` (`IDTipoActividad`, `TipoActividad`) VALUES
(1, 'Venta Ambulante'),
(2, 'Agricultura'),
(3, 'Lustrado de Calzado'),
(4, 'Comercio Informal '),
(5, 'Construccion'),
(6, 'Manofacturas'),
(7, 'Act. NO remuneradas '),
(8, 'Mecanica '),
(9, 'Reciclaje'),
(10, 'Pesca'),
(11, 'Mineria'),
(12, 'Trabajo en calle'),
(13, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaIDTipoOrganizacion`
--

CREATE TABLE `ListaIDTipoOrganizacion` (
  `IDTipoOrganizacion` tinyint(3) NOT NULL,
  `TipoOrganizacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ListaIDTipoOrganizacion`
--

INSERT INTO `ListaIDTipoOrganizacion` (`IDTipoOrganizacion`, `TipoOrganizacion`) VALUES
(1, 'GAD Provicial-Cantonal-Parroquial'),
(2, 'OSC'),
(3, 'Organización Religiosa'),
(4, 'ONG'),
(5, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaLugares`
--

CREATE TABLE `ListaLugares` (
  `IDLugar` smallint(6) NOT NULL,
  `Lugar` varchar(100) NOT NULL COMMENT 'Nombre del lugar representativo',
  `DescrLugar` varchar(10) NOT NULL COMMENT 'Descripción del lugar',
  `IDProvincia` tinyint(3) NOT NULL COMMENT 'Provincia donde se ubica el lugar',
  `IDCanton` varchar(10) NOT NULL COMMENT 'Canton  donde se ubica el lugar',
  `IDParroquia` varchar(10) NOT NULL COMMENT 'Nombre Parroquia',
  `Longuitud` char(25) NOT NULL COMMENT 'Ubicacion Longuitud',
  `Latitud` char(25) NOT NULL COMMENT 'Ubicacion Latitud'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaPoligonosLugares`
--

CREATE TABLE `ListaPoligonosLugares` (
  `IDLugar` smallint(6) NOT NULL,
  `Latitud` decimal(22,17) NOT NULL,
  `Longitud` decimal(22,17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaPoligonosParroquias`
--

CREATE TABLE `ListaPoligonosParroquias` (
  `IDParroquia` smallint(6) NOT NULL,
  `Latitud` decimal(22,17) NOT NULL,
  `Longitud` decimal(22,17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Intervenciones`
--
ALTER TABLE `Intervenciones`
  ADD PRIMARY KEY (`IDIntervencion`),
  ADD KEY `IDOperador` (`IDOperador`),
  ADD KEY `IDCircunstancia` (`IDCircunstancia`),
  ADD KEY `IDCondicion` (`IDCondicion`),
  ADD KEY `IDOrganCooperante` (`IDOrganCooperante`),
  ADD KEY `IDPersonaIntervenida` (`IDPersonaIntervenida`),
  ADD KEY `RefIDProvincia` (`RefIDProvincia`),
  ADD KEY `RefIDCanton` (`RefIDCanton`),
  ADD KEY `RefIDParroquia` (`RefIDParroquia`),
  ADD KEY `IDViveCon` (`IDViveCon`),
  ADD KEY `IDEstudio` (`IDEstudio`);

--
-- Indices de la tabla `IntervencionesAudios`
--
ALTER TABLE `IntervencionesAudios`
  ADD KEY `IDIntervencion` (`IDIntervencion`);

--
-- Indices de la tabla `IntervencionesExposicion`
--
ALTER TABLE `IntervencionesExposicion`
  ADD UNIQUE KEY `IDInterExpo` (`IDIntervencion`,`IDExposicion`) USING BTREE,
  ADD KEY `IDExposicion` (`IDExposicion`),
  ADD KEY `IDIntervencion` (`IDIntervencion`);

--
-- Indices de la tabla `IntervencionesFotos`
--
ALTER TABLE `IntervencionesFotos`
  ADD KEY `IDIntervencion` (`IDIntervencion`);

--
-- Indices de la tabla `IntervencionesTipoActividad`
--
ALTER TABLE `IntervencionesTipoActividad`
  ADD UNIQUE KEY `IDInterTipoAct` (`IDIntervencion`,`IDTipoActividad`) USING BTREE,
  ADD KEY `IDTipoActividad` (`IDTipoActividad`);

--
-- Indices de la tabla `ListaIDCabelloColor`
--
ALTER TABLE `ListaIDCabelloColor`
  ADD PRIMARY KEY (`IDColorCabello`);

--
-- Indices de la tabla `ListaIDCabelloTipo`
--
ALTER TABLE `ListaIDCabelloTipo`
  ADD PRIMARY KEY (`IDCabelloTipo`);

--
-- Indices de la tabla `ListaIDCantones`
--
ALTER TABLE `ListaIDCantones`
  ADD PRIMARY KEY (`IDCanton`),
  ADD KEY `IDProvincia` (`IDProvincia`);

--
-- Indices de la tabla `ListaIDCircunstancias`
--
ALTER TABLE `ListaIDCircunstancias`
  ADD PRIMARY KEY (`IDCircunstancia`);

--
-- Indices de la tabla `ListaIDCondiciones`
--
ALTER TABLE `ListaIDCondiciones`
  ADD PRIMARY KEY (`IDCondicion`);

--
-- Indices de la tabla `ListaIDCondicionMedica`
--
ALTER TABLE `ListaIDCondicionMedica`
  ADD PRIMARY KEY (`IDCondicionMedica`);

--
-- Indices de la tabla `ListaIDContexturas`
--
ALTER TABLE `ListaIDContexturas`
  ADD PRIMARY KEY (`IDContextura`);

--
-- Indices de la tabla `ListaIDDiscapacidad`
--
ALTER TABLE `ListaIDDiscapacidad`
  ADD PRIMARY KEY (`IDDiscapacidad`);

--
-- Indices de la tabla `ListaIDEstadoCivil`
--
ALTER TABLE `ListaIDEstadoCivil`
  ADD PRIMARY KEY (`IDEstadoCivil`);

--
-- Indices de la tabla `ListaIDEstatura`
--
ALTER TABLE `ListaIDEstatura`
  ADD PRIMARY KEY (`IDEstatura`);

--
-- Indices de la tabla `ListaIDEstudio`
--
ALTER TABLE `ListaIDEstudio`
  ADD PRIMARY KEY (`IDEstudio`);

--
-- Indices de la tabla `ListaIDEtnias`
--
ALTER TABLE `ListaIDEtnias`
  ADD PRIMARY KEY (`IDEtnia`);

--
-- Indices de la tabla `ListaIDExposiciones`
--
ALTER TABLE `ListaIDExposiciones`
  ADD PRIMARY KEY (`IDExposicion`);

--
-- Indices de la tabla `ListaIDGeneros`
--
ALTER TABLE `ListaIDGeneros`
  ADD PRIMARY KEY (`IDGenero`);

--
-- Indices de la tabla `ListaIDInstituciones`
--
ALTER TABLE `ListaIDInstituciones`
  ADD PRIMARY KEY (`IDInstitucion`);

--
-- Indices de la tabla `ListaIDNacionalidades`
--
ALTER TABLE `ListaIDNacionalidades`
  ADD PRIMARY KEY (`IDNacionalidad`);

--
-- Indices de la tabla `ListaIDOperadores`
--
ALTER TABLE `ListaIDOperadores`
  ADD PRIMARY KEY (`IDOperador`),
  ADD KEY `IDInstitucion` (`IDInstitucion`);

--
-- Indices de la tabla `ListaIDOrganizacionesCoope`
--
ALTER TABLE `ListaIDOrganizacionesCoope`
  ADD PRIMARY KEY (`IDOrganizacion`) USING BTREE,
  ADD KEY `IDTipoOrganizacion` (`IDTipoOrganizacion`),
  ADD KEY `IDProvincia` (`IDProvincia`),
  ADD KEY `IDCanton` (`IDCanton`),
  ADD KEY `IDParroquia` (`IDParroquia`);

--
-- Indices de la tabla `ListaIDParentezcos`
--
ALTER TABLE `ListaIDParentezcos`
  ADD PRIMARY KEY (`IDParentezco`);

--
-- Indices de la tabla `ListaIDParroquias`
--
ALTER TABLE `ListaIDParroquias`
  ADD PRIMARY KEY (`IDParroquia`),
  ADD KEY `ListaIDParroquias_FK` (`IDCanton`);

--
-- Indices de la tabla `ListaIDPersonas`
--
ALTER TABLE `ListaIDPersonas`
  ADD PRIMARY KEY (`IDPersona`),
  ADD KEY `IDCondicionMedica` (`IDCondicionMedica`),
  ADD KEY `NacIDNacionalidad` (`NacIDNacionalidad`),
  ADD KEY `NacIDParroquia` (`NacIDParroquia`),
  ADD KEY `IDGenero` (`IDGenero`),
  ADD KEY `IDDiscapacidad` (`IDDiscapacidad`),
  ADD KEY `IDEstatura` (`IDEstatura`),
  ADD KEY `IDContextura` (`IDContextura`),
  ADD KEY `IDColorCabello` (`IDColorCabello`),
  ADD KEY `IDCabelloTipo` (`IDCabelloTipo`),
  ADD KEY `NacIDCanton` (`NacIDCanton`),
  ADD KEY `NacIDProvincia` (`NacIDProvincia`),
  ADD KEY `IDEtnia` (`IDEtnia`),
  ADD KEY `IDEstadoCivil` (`IDEstadoCivil`);

--
-- Indices de la tabla `ListaIDPersonasFamiliares`
--
ALTER TABLE `ListaIDPersonasFamiliares`
  ADD UNIQUE KEY `RelPersoFamil` (`IDPersona`,`IDPersonaFamiliar`),
  ADD KEY `IDPersona` (`IDPersona`),
  ADD KEY `IDParentezco` (`IDParentezco`),
  ADD KEY `IDPersonaFamiliar` (`IDPersonaFamiliar`);

--
-- Indices de la tabla `ListaIDProvincias`
--
ALTER TABLE `ListaIDProvincias`
  ADD PRIMARY KEY (`IDProvincia`),
  ADD KEY `IDNacionalidad` (`IDNacionalidad`);

--
-- Indices de la tabla `ListaIDTipoActividad`
--
ALTER TABLE `ListaIDTipoActividad`
  ADD PRIMARY KEY (`IDTipoActividad`);

--
-- Indices de la tabla `ListaIDTipoOrganizacion`
--
ALTER TABLE `ListaIDTipoOrganizacion`
  ADD PRIMARY KEY (`IDTipoOrganizacion`);

--
-- Indices de la tabla `ListaLugares`
--
ALTER TABLE `ListaLugares`
  ADD PRIMARY KEY (`IDLugar`);

--
-- Indices de la tabla `ListaPoligonosLugares`
--
ALTER TABLE `ListaPoligonosLugares`
  ADD KEY `IDLugar` (`IDLugar`);

--
-- Indices de la tabla `ListaPoligonosParroquias`
--
ALTER TABLE `ListaPoligonosParroquias`
  ADD KEY `IDParroquia` (`IDParroquia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Intervenciones`
--
ALTER TABLE `Intervenciones`
  MODIFY `IDIntervencion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador único de la Intervecion', AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `ListaIDOperadores`
--
ALTER TABLE `ListaIDOperadores`
  MODIFY `IDOperador` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ListaIDOrganizacionesCoope`
--
ALTER TABLE `ListaIDOrganizacionesCoope`
  MODIFY `IDOrganizacion` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ListaIDPersonas`
--
ALTER TABLE `ListaIDPersonas`
  MODIFY `IDPersona` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Identificador único del Intervenido', AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Intervenciones`
--
ALTER TABLE `Intervenciones`
  ADD CONSTRAINT `Intervenciones_ibfk_10` FOREIGN KEY (`IDEstudio`) REFERENCES `ListaIDEstudio` (`IDEstudio`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_11` FOREIGN KEY (`IDPersonaIntervenida`) REFERENCES `ListaIDPersonas` (`IDPersona`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_12` FOREIGN KEY (`IDOperador`) REFERENCES `ListaIDOperadores` (`IDOperador`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_13` FOREIGN KEY (`IDOrganCooperante`) REFERENCES `ListaIDOrganizacionesCoope` (`IDOrganizacion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_3` FOREIGN KEY (`IDCircunstancia`) REFERENCES `ListaIDCircunstancias` (`IDCircunstancia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_4` FOREIGN KEY (`IDCondicion`) REFERENCES `ListaIDCondiciones` (`IDCondicion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_5` FOREIGN KEY (`RefIDProvincia`) REFERENCES `ListaIDProvincias` (`IDProvincia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_6` FOREIGN KEY (`RefIDCanton`) REFERENCES `ListaIDCantones` (`IDCanton`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_7` FOREIGN KEY (`RefIDParroquia`) REFERENCES `ListaIDParroquias` (`IDParroquia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Intervenciones_ibfk_8` FOREIGN KEY (`IDViveCon`) REFERENCES `ListaIDParentezcos` (`IDParentezco`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `IntervencionesAudios`
--
ALTER TABLE `IntervencionesAudios`
  ADD CONSTRAINT `IntervencionesAudios_ibfk_1` FOREIGN KEY (`IDIntervencion`) REFERENCES `Intervenciones` (`IDIntervencion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `IntervencionesExposicion`
--
ALTER TABLE `IntervencionesExposicion`
  ADD CONSTRAINT `IntervencionesExposicion_ibfk_2` FOREIGN KEY (`IDExposicion`) REFERENCES `ListaIDExposiciones` (`IDExposicion`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `IntervencionesExposicion_ibfk_3` FOREIGN KEY (`IDIntervencion`) REFERENCES `Intervenciones` (`IDIntervencion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `IntervencionesFotos`
--
ALTER TABLE `IntervencionesFotos`
  ADD CONSTRAINT `IntervencionesFotos_ibfk_1` FOREIGN KEY (`IDIntervencion`) REFERENCES `Intervenciones` (`IDIntervencion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `IntervencionesTipoActividad`
--
ALTER TABLE `IntervencionesTipoActividad`
  ADD CONSTRAINT `IntervencionesTipoActividad_ibfk_1` FOREIGN KEY (`IDTipoActividad`) REFERENCES `ListaIDTipoActividad` (`IDTipoActividad`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `IntervencionesTipoActividad_ibfk_2` FOREIGN KEY (`IDIntervencion`) REFERENCES `Intervenciones` (`IDIntervencion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ListaIDCantones`
--
ALTER TABLE `ListaIDCantones`
  ADD CONSTRAINT `ListaIDCantones_FK` FOREIGN KEY (`IDProvincia`) REFERENCES `ListaIDProvincias` (`IDProvincia`);

--
-- Filtros para la tabla `ListaIDOperadores`
--
ALTER TABLE `ListaIDOperadores`
  ADD CONSTRAINT `ListaIDOperadores_ibfk_1` FOREIGN KEY (`IDInstitucion`) REFERENCES `ListaIDInstituciones` (`IDInstitucion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ListaIDOrganizacionesCoope`
--
ALTER TABLE `ListaIDOrganizacionesCoope`
  ADD CONSTRAINT `ListaIDOrganizacionesCoope_FK_1` FOREIGN KEY (`IDParroquia`) REFERENCES `ListaIDParroquias` (`IDParroquia`),
  ADD CONSTRAINT `ListaIDOrganizacionesCoope_FK_2` FOREIGN KEY (`IDCanton`) REFERENCES `ListaIDCantones` (`IDCanton`),
  ADD CONSTRAINT `ListaIDOrganizacionesCoope_FK_3` FOREIGN KEY (`IDProvincia`) REFERENCES `ListaIDProvincias` (`IDProvincia`),
  ADD CONSTRAINT `ListaIDOrganizacionesCoope_ibfk_1` FOREIGN KEY (`IDTipoOrganizacion`) REFERENCES `ListaIDTipoOrganizacion` (`IDTipoOrganizacion`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ListaIDParroquias`
--
ALTER TABLE `ListaIDParroquias`
  ADD CONSTRAINT `ListaIDParroquias_FK` FOREIGN KEY (`IDCanton`) REFERENCES `ListaIDCantones` (`IDCanton`);

--
-- Filtros para la tabla `ListaIDPersonas`
--
ALTER TABLE `ListaIDPersonas`
  ADD CONSTRAINT `ListaIDPersonas_ibfk_1` FOREIGN KEY (`NacIDNacionalidad`) REFERENCES `ListaIDNacionalidades` (`IDNacionalidad`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_10` FOREIGN KEY (`IDContextura`) REFERENCES `ListaIDContexturas` (`IDContextura`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_11` FOREIGN KEY (`IDDiscapacidad`) REFERENCES `ListaIDDiscapacidad` (`IDDiscapacidad`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_13` FOREIGN KEY (`IDCondicionMedica`) REFERENCES `ListaIDCondicionMedica` (`IDCondicionMedica`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_14` FOREIGN KEY (`IDEstatura`) REFERENCES `ListaIDEstatura` (`IDEstatura`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_2` FOREIGN KEY (`NacIDProvincia`) REFERENCES `ListaIDProvincias` (`IDProvincia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_3` FOREIGN KEY (`NacIDCanton`) REFERENCES `ListaIDCantones` (`IDCanton`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_4` FOREIGN KEY (`NacIDParroquia`) REFERENCES `ListaIDParroquias` (`IDParroquia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_5` FOREIGN KEY (`IDGenero`) REFERENCES `ListaIDGeneros` (`IDGenero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_6` FOREIGN KEY (`IDEtnia`) REFERENCES `ListaIDEtnias` (`IDEtnia`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_7` FOREIGN KEY (`IDEstadoCivil`) REFERENCES `ListaIDEstadoCivil` (`IDEstadoCivil`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_8` FOREIGN KEY (`IDColorCabello`) REFERENCES `ListaIDCabelloColor` (`IDColorCabello`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ListaIDPersonas_ibfk_9` FOREIGN KEY (`IDCabelloTipo`) REFERENCES `ListaIDCabelloTipo` (`IDCabelloTipo`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ListaIDPersonasFamiliares`
--
ALTER TABLE `ListaIDPersonasFamiliares`
  ADD CONSTRAINT `ListaIDPersonasFamiliares_ibfk_2` FOREIGN KEY (`IDParentezco`) REFERENCES `ListaIDParentezcos` (`IDParentezco`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
