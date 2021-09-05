-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2020 a las 00:11:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `profesores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias por dia`
--

CREATE TABLE `materias por dia` (
  `Materia` text NOT NULL,
  `Dia` date NOT NULL,
  `Hora` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro de eventos`
--

CREATE TABLE `registro de eventos` (
  `C_evento` datetime(6) NOT NULL,
  `Fecha` date NOT NULL,
  `Evento` text NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla asistencia`
--

CREATE TABLE `tabla asistencia` (
  `C_materia` datetime(6) NOT NULL,
  `Materia` int(20) NOT NULL,
  `Fecha` date NOT NULL,
  `C_evento` datetime(6) NOT NULL,
  `Horario` date NOT NULL,
  `Profes` text NOT NULL,
  `Año` date NOT NULL,
  `Curso` text NOT NULL,
  `Asistencia` date NOT NULL,
  `Comentarios` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla de licencias`
--

CREATE TABLE `tabla de licencias` (
  `C_licencias` text NOT NULL,
  `Materia` text NOT NULL,
  `Profesor` text NOT NULL,
  `Fecha ln` datetime(6) NOT NULL,
  `Fecha fin` datetime(6) NOT NULL,
  `DNIS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla materia`
--

CREATE TABLE `tabla materia` (
  `C_Materia` datetime(6) NOT NULL,
  `Materia` text NOT NULL,
  `DNI` int(11) NOT NULL,
  `Profesor` text NOT NULL,
  `Año` date NOT NULL,
  `Curso` text NOT NULL,
  `Horario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla profesores`
--

CREATE TABLE `tabla profesores` (
  `DNI` int(10) NOT NULL,
  `Legajo` int(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Teléfono` tinyint(10) NOT NULL,
  `Correo Electrónico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla suplentes`
--

CREATE TABLE `tabla suplentes` (
  `DNIS` int(20) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Teléfono` tinyint(15) NOT NULL,
  `Correo Electrónico` int(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla usuarios`
--

CREATE TABLE `tabla usuarios` (
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Nombre de Usuario` varchar(20) NOT NULL,
  `Correo Electrónico` int(25) NOT NULL,
  `Teléfono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
