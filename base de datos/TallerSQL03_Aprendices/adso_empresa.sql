-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2024 a las 17:41:14
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
-- Base de datos: `adso_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `NUMERO_AREA` int(11) NOT NULL,
  `NOMBRE_AREA` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`NUMERO_AREA`, `NOMBRE_AREA`) VALUES
(1, 'Dirección'),
(2, 'Ventas'),
(3, 'Investigación'),
(4, 'Sistemas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependiente`
--

CREATE TABLE `dependiente` (
  `CEDULA_DEPENDIENTE` varchar(15) NOT NULL,
  `NOMBRE_DEPENDIENTE` varchar(60) NOT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `FECHA_NCTO` date DEFAULT NULL,
  `PARENTESCO` varchar(8) DEFAULT NULL,
  `FK_CEDULA_EMPLEADO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dependiente`
--

INSERT INTO `dependiente` (`CEDULA_DEPENDIENTE`, `NOMBRE_DEPENDIENTE`, `SEXO`, `FECHA_NCTO`, `PARENTESCO`, `FK_CEDULA_EMPLEADO`) VALUES
('1111', 'Alicia', 'F', '1988-04-05', 'HIJA', '333445555'),
('2222', 'Teodoro', 'M', '1983-10-25', 'HIJO', '333445555'),
('3333', 'Monica', 'F', '1978-05-03', 'ESPOSA', '333445555'),
('4444', 'Braulio', 'M', '1988-02-28', 'ESPOSO', '987654321'),
('5555', 'Michael', 'M', '1988-06-04', 'SOBRINO', '123456789'),
('6666', 'Petronila', 'F', '1987-12-31', 'HIJA', '123456789'),
('7777', 'Elizabeth', 'F', '1978-08-10', 'ESPOSA', '123456789'),
('8888', 'Andrea', 'M', '2011-07-14', 'HIJO', '888775555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `CEDULA_EMPLEADO` varchar(15) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDO` varchar(30) NOT NULL,
  `FECHA_NCTO` date DEFAULT NULL,
  `FECHA_INGRESO` date DEFAULT NULL,
  `DIRECCION` varchar(30) DEFAULT NULL,
  `SALARIO` float DEFAULT NULL,
  `ANNOS_EXPERIENCIA` int(11) DEFAULT NULL,
  `ACTIVO` tinyint(1) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `FK_NUMERO_AREA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`CEDULA_EMPLEADO`, `NOMBRE`, `APELLIDO`, `FECHA_NCTO`, `FECHA_INGRESO`, `DIRECCION`, `SALARIO`, `ANNOS_EXPERIENCIA`, `ACTIVO`, `SEXO`, `FK_NUMERO_AREA`) VALUES
('123456780', 'DANIELA', 'PEREZ', '1975-07-20', '2001-04-25', 'CRRA 12 14-19', 1000000, 2, 1, 'F', 3),
('123456789', 'DANIEL', 'MEJIA', '1980-02-04', '2010-02-02', NULL, 2000000, 3, 1, 'M', 2),
('333445555', 'PEDRO', 'ALVAREZ', '0000-00-00', '2002-10-09', 'CRRA 12 14-19', 5000000, 15, 0, 'M', 2),
('453453453', 'LUISA', 'MARIN', '1978-05-19', '2000-09-22', NULL, 1300000, 1, 1, 'F', 3),
('666884444', 'DIEGO', 'OROZCO', '1985-09-12', '2011-09-12', 'CRRA 12 14-19', 1500000, 1, 0, 'M', 2),
('888775555', 'MARIA JOSE', 'OSORIO', '1981-10-12', '1998-07-15', NULL, 9000000, 7, 1, 'F', 1),
('987654321', 'DUVAN', 'VELEZ', '1979-01-22', '2009-08-14', 'CRRA 12 14-19', 900000, 1, 0, 'M', 4),
('987987987', 'JUAN DAVID', 'PEREZ', '1980-06-21', '2009-08-01', NULL, 1800000, 3, 1, 'M', 3),
('999887777', 'PABLO', 'DIAZ', '1972-08-14', '2003-01-01', 'CRRA 12 14-19', 4000000, 10, 0, 'M', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_proyecto`
--

CREATE TABLE `empleado_proyecto` (
  `FK_CEDULA_EMPLEADO` varchar(15) NOT NULL,
  `FK_NUMERO_PROYECTO` int(11) NOT NULL,
  `HORAS_TRABAJADAS` float NOT NULL,
  `FECHA_TRABAJO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado_proyecto`
--

INSERT INTO `empleado_proyecto` (`FK_CEDULA_EMPLEADO`, `FK_NUMERO_PROYECTO`, `HORAS_TRABAJADAS`, `FECHA_TRABAJO`) VALUES
('123456789', 1, 32.5, '2015-10-12 00:00:00'),
('123456789', 2, 7.5, '2015-10-12 00:00:00'),
('333445555', 2, 10, '2015-04-10 00:00:00'),
('333445555', 3, 10, '2015-10-12 00:00:00'),
('333445555', 10, 10, '1988-04-12 00:00:00'),
('333445555', 20, 10, '2015-10-12 00:00:00'),
('453453453', 1, 20, '2015-10-02 00:00:00'),
('453453453', 2, 20, '2015-04-09 00:00:00'),
('666884444', 3, 40, '2015-10-01 00:00:00'),
('888775555', 20, 12.6, '2015-04-20 00:00:00'),
('987654321', 20, 15, '2015-04-19 00:00:00'),
('987654321', 30, 20, '2015-04-18 00:00:00'),
('987987987', 10, 35, '2015-10-16 00:00:00'),
('987987987', 30, 5, '2015-04-17 00:00:00'),
('999887777', 10, 10, '2015-10-13 00:00:00'),
('999887777', 30, 30, '2015-10-12 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe`
--

CREATE TABLE `jefe` (
  `FK_NUMERO_AREA` int(11) NOT NULL,
  `FK_CEDULA_EMPLEADO` varchar(15) NOT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `ESTADO` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jefe`
--

INSERT INTO `jefe` (`FK_NUMERO_AREA`, `FK_CEDULA_EMPLEADO`, `FECHA_INICIO`, `FECHA_FIN`, `ESTADO`) VALUES
(1, '888775555', '1998-07-15', '0000-00-00', 'activo'),
(2, '123456789', '2000-01-01', '2012-09-09', 'inactivo'),
(2, '333445555', '2002-10-09', '0000-00-00', 'activo'),
(3, '999887777', '2003-01-01', '0000-00-00', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `NUMERO_PROYECTO` int(11) NOT NULL,
  `NOMBRE_PROYECTO` varchar(15) NOT NULL,
  `DESCRIPCION` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`NUMERO_PROYECTO`, `NOMBRE_PROYECTO`, `DESCRIPCION`) VALUES
(1, 'Econo', 'PROYECTO economia'),
(2, 'Erp', 'Implementación erp'),
(3, 'Diagnostico', 'Diagnostico de ventas'),
(10, 'Automatizaci n', 'Automatizaci n de procesos'),
(20, 'Reorganizaci n', 'Reorganizaci n de dependencias'),
(30, 'Nuevos valores', 'Nuevos valores artículos');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`NUMERO_AREA`);

--
-- Indices de la tabla `dependiente`
--
ALTER TABLE `dependiente`
  ADD PRIMARY KEY (`CEDULA_DEPENDIENTE`),
  ADD KEY `FK_CEDULA_EMPLEADO` (`FK_CEDULA_EMPLEADO`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`CEDULA_EMPLEADO`),
  ADD KEY `FK_NUMERO_AREA` (`FK_NUMERO_AREA`);

--
-- Indices de la tabla `empleado_proyecto`
--
ALTER TABLE `empleado_proyecto`
  ADD PRIMARY KEY (`FK_CEDULA_EMPLEADO`,`FK_NUMERO_PROYECTO`),
  ADD KEY `FK_NUMERO_PROYECTO` (`FK_NUMERO_PROYECTO`);

--
-- Indices de la tabla `jefe`
--
ALTER TABLE `jefe`
  ADD PRIMARY KEY (`FK_NUMERO_AREA`,`FK_CEDULA_EMPLEADO`),
  ADD KEY `FK_CEDULA_EMPLEADO` (`FK_CEDULA_EMPLEADO`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`NUMERO_PROYECTO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dependiente`
--
ALTER TABLE `dependiente`
  ADD CONSTRAINT `dependiente_ibfk_1` FOREIGN KEY (`FK_CEDULA_EMPLEADO`) REFERENCES `empleado` (`CEDULA_EMPLEADO`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`FK_NUMERO_AREA`) REFERENCES `area` (`NUMERO_AREA`);

--
-- Filtros para la tabla `empleado_proyecto`
--
ALTER TABLE `empleado_proyecto`
  ADD CONSTRAINT `empleado_proyecto_ibfk_1` FOREIGN KEY (`FK_CEDULA_EMPLEADO`) REFERENCES `empleado` (`CEDULA_EMPLEADO`),
  ADD CONSTRAINT `empleado_proyecto_ibfk_2` FOREIGN KEY (`FK_NUMERO_PROYECTO`) REFERENCES `proyecto` (`NUMERO_PROYECTO`);

--
-- Filtros para la tabla `jefe`
--
ALTER TABLE `jefe`
  ADD CONSTRAINT `jefe_ibfk_1` FOREIGN KEY (`FK_NUMERO_AREA`) REFERENCES `area` (`NUMERO_AREA`),
  ADD CONSTRAINT `jefe_ibfk_2` FOREIGN KEY (`FK_CEDULA_EMPLEADO`) REFERENCES `empleado` (`CEDULA_EMPLEADO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
