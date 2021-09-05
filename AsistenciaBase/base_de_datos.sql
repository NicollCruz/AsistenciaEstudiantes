-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2020 a las 00:41:47
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `c_materia` datetime(6) NOT NULL,
  `materia` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `c_evento` datetime(6) NOT NULL,
  `horario` date NOT NULL,
  `legajo` varchar(10) NOT NULL,
  `año` date NOT NULL,
  `curso` varchar(5) NOT NULL,
  `asistencia` varchar(2) NOT NULL,
  `comentarios` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias`
--

CREATE TABLE `licencias` (
  `c_licencias` varchar(10) NOT NULL,
  `materia` varchar(20) NOT NULL,
  `profesor` varchar(20) NOT NULL,
  `fecha inicio` datetime(6) NOT NULL,
  `fecha fin` datetime(6) NOT NULL,
  `dni` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `c_materia` varchar(10) NOT NULL,
  `materia` varchar(20) NOT NULL,
  `dni` int(11) NOT NULL,
  `profesor` varchar(20) NOT NULL,
  `año` date NOT NULL,
  `curso` varchar(5) NOT NULL,
  `horario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias_por_dia`
--

CREATE TABLE `materias_por_dia` (
  `c_materia` varchar(10) NOT NULL,
  `materia` varchar(20) NOT NULL,
  `dia` date NOT NULL,
  `hora` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `dni` int(10) NOT NULL,
  `legajo` varchar(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `teléfono` int(15) NOT NULL,
  `correo_electrónico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_de_eventos`
--

CREATE TABLE `registro_de_eventos` (
  `c_evento` datetime(6) NOT NULL,
  `fecha` date NOT NULL,
  `evento` varchar(15) NOT NULL,
  `descripción` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suplentes`
--

CREATE TABLE `suplentes` (
  `dni` int(8) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `teléfono` int(15) NOT NULL,
  `correo_electrónico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `nombre_de_usuario` varchar(20) NOT NULL,
  `correo_electrónico` varchar(30) NOT NULL,
  `teléfono` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`c_materia`);

--
-- Indices de la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`c_licencias`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`c_materia`);

--
-- Indices de la tabla `materias_por_dia`
--
ALTER TABLE `materias_por_dia`
  ADD PRIMARY KEY (`c_materia`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `registro_de_eventos`
--
ALTER TABLE `registro_de_eventos`
  ADD PRIMARY KEY (`c_evento`);

--
-- Indices de la tabla `suplentes`
--
ALTER TABLE `suplentes`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
