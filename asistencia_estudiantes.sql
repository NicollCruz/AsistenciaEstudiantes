-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2021 a las 17:04:14
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asistencia_estudiantes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `n_legajo` int(11) NOT NULL,
  `fecha_hoy` date NOT NULL,
  `turno` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `c_curso` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  `división` int(11) NOT NULL,
  `c_preceptor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `n_legajo` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(80) NOT NULL,
  `email_p` varchar(80) NOT NULL,
  `c_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preceptores`
--

CREATE TABLE `preceptores` (
  `id` int(11) NOT NULL,
  `dni` int(11) NOT NULL,
  `nombre` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(60) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_n_legajo` (`n_legajo`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`c_curso`),
  ADD KEY `FK_c_preceptor` (`c_preceptor`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`n_legajo`),
  ADD KEY `FK_c_curso` (`c_curso`);

--
-- Indices de la tabla `preceptores`
--
ALTER TABLE `preceptores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD CONSTRAINT `asistencias_ibfk_1` FOREIGN KEY (`n_legajo`) REFERENCES `estudiantes` (`n_legajo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`c_preceptor`) REFERENCES `preceptores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`c_curso`) REFERENCES `cursos` (`c_curso`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
