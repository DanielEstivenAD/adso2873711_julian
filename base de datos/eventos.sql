-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 18:58:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `nit` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(13) DEFAULT NULL,
  `fechaCreacion` date DEFAULT NULL,
  `aniosExperiencia` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`nit`, `nombre`, `telefono`, `fechaCreacion`, `aniosExperiencia`) VALUES
(11111, 'ADSO Company', '311123', '2023-01-01', 2),
(22222, 'MegaRed', '315123', '2000-02-25', 5),
(33333, 'SurtiPlay', '320123', '2010-04-10', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `ideventos` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fechaIni` datetime NOT NULL,
  `fechaFin` datetime NOT NULL,
  `unicacion` varchar(100) DEFAULT NULL,
  `tipoEvento` varchar(20) DEFAULT NULL,
  `fkNitEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`ideventos`, `nombre`, `fechaIni`, `fechaFin`, `unicacion`, `tipoEvento`, `fkNitEmpresa`) VALUES
(1, 'Campeonato Baloncesto callejero', '2024-06-14 11:30:00', '2024-06-14 12:30:00', 'SENA', 'Deportivo', 11111),
(2, 'Campeonato Voleibol', '2024-08-05 08:00:00', '2024-08-05 10:00:00', 'CANCHAS SENA', 'Deportivo', 11111),
(3, 'Apuestas concurso pulsos', '2024-07-24 11:00:00', '2024-07-24 12:00:00', 'CASINO', 'Apuestas', 22222);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`nit`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`ideventos`),
  ADD KEY `fkNitEmpresa` (`fkNitEmpresa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `ideventos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`fkNitEmpresa`) REFERENCES `empresa` (`nit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
