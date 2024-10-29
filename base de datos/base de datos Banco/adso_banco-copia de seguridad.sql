-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2024 a las 22:13:03
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
-- Base de datos: `adso_banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `nitBanco` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`nitBanco`, `nombre`, `email`) VALUES
(1, 'Bancolombia', 'Bancolombia@gmail.com'),
(2, 'Banco Caja Social', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `salario` float DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nombres`, `apellidos`, `direccion`, `salario`, `fechaNacimiento`, `estado`) VALUES
(1, 'Santiago', 'Rodriguez', 'Viveros #12-34', 600000, '2000-02-03', 1),
(2, 'Daniel', 'Duque', 'San Sebastian', 1450000, '2004-04-03', 1),
(3, 'Viviana', 'Cardenas', 'Kra 48D-54', 1300000, '1985-11-12', 1),
(4, 'Moralba', 'Marin', 'Apto 114113 BQ 123', 2550000, '1990-03-20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `numCuenta` int(11) NOT NULL,
  `tipoCuenta` varchar(45) NOT NULL,
  `saldo` float NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fkCodCliente` int(11) NOT NULL,
  `fkIdSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`numCuenta`, `tipoCuenta`, `saldo`, `fechaCreacion`, `fkCodCliente`, `fkIdSucursal`) VALUES
(1, 'ahorros', 2000000, '2014-05-14 00:00:00', 1, 1),
(2, 'corriente', 500000, '2014-05-14 00:00:00', 1, 2),
(3, 'ahorros', 2500000, '2010-11-30 00:00:00', 2, 3),
(4, 'nomina', 1500000, '2020-10-10 00:00:00', 3, 4),
(5, 'estudiantil', 10000000, '2007-01-15 00:00:00', 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `idPrestamo` int(11) NOT NULL,
  `fechaPrestamo` date NOT NULL,
  `cantidadPrestamo` float NOT NULL,
  `fkCodCliente` int(11) NOT NULL,
  `fkIdSucursal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`idPrestamo`, `fechaPrestamo`, `cantidadPrestamo`, `fkCodCliente`, `fkIdSucursal`) VALUES
(1, '2014-06-15', 1500000, 1, 1),
(2, '2014-07-20', 2500000, 1, 1),
(3, '2013-04-10', 1000000, 2, 3),
(4, '2010-05-04', 2300000, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idSucursal` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fkNitBanco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`idSucursal`, `nombre`, `direccion`, `telefono`, `fkNitBanco`) VALUES
(1, 'Bancolombia de la 22', 'Cra-22', '6542495205', 1),
(2, 'Bancolombia de la santander', 'Av-Santander', '6523148975', 1),
(3, 'Bancolombia Plaza Bolivar', 'Plaza de Bolivar', '6321478942', 1),
(4, 'Caja Social Cra 23', 'Cra-23', '3562465872', 2),
(5, 'Caja Social Santander', 'Av-Santander', '3564215875', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`nitBanco`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`numCuenta`),
  ADD KEY `fkCodCliente` (`fkCodCliente`),
  ADD KEY `fkIdSucursal` (`fkIdSucursal`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`idPrestamo`),
  ADD KEY `fkCodCliente` (`fkCodCliente`),
  ADD KEY `fkIdSucursal` (`fkIdSucursal`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idSucursal`),
  ADD KEY `fkNitBanco` (`fkNitBanco`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banco`
--
ALTER TABLE `banco`
  MODIFY `nitBanco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `numCuenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `idPrestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `idSucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`fkCodCliente`) REFERENCES `cliente` (`codCliente`),
  ADD CONSTRAINT `cuenta_ibfk_2` FOREIGN KEY (`fkIdSucursal`) REFERENCES `sucursal` (`idSucursal`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`fkCodCliente`) REFERENCES `cliente` (`codCliente`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`fkIdSucursal`) REFERENCES `sucursal` (`idSucursal`);

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`fkNitBanco`) REFERENCES `banco` (`nitBanco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
