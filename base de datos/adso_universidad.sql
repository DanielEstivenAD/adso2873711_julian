-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 14:55:03
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
-- Base de datos: `adso_universidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idCurso` mediumint(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date DEFAULT NULL,
  `cantidadEstudiantes` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idCurso`, `nombre`, `fechaInicio`, `fechaFin`, `cantidadEstudiantes`) VALUES
(1, 'Curso 1', '2024-02-12', '2025-07-24', 15),
(2, 'Curso 2', '2024-03-05', '2025-09-30', 5),
(3, 'Curso 3-1', '2024-04-30', '2025-11-20', 20),
(5, 'Curso 5', '2024-06-10', '2026-01-15', 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idEstudiante` mediumint(9) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fkIdCurso` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idEstudiante`, `nombre`, `email`, `telefono`, `fkIdCurso`) VALUES
(1, 'Daniel', 'daniii@gmail.com', '313456545', 1),
(2, 'Isabela', 'isa@gmail.com', '312315434', 2),
(3, 'Viviana', 'viviana@gmail.com', '356736539', 3),
(4, 'Sofia', 'sofi@gmail.com', '312374323', 5),
(5, 'Manuel', 'gonzales@gmail.com', '3342452344', 1),
(6, 'jose', 'joseee@gmail.com', '3546544677', 1),
(7, 'Sara', 'ssssara@gmail.com', '3226067640', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `idExamen` mediumint(9) NOT NULL,
  `nota` tinyint(4) DEFAULT NULL,
  `fechaRealizacion` datetime NOT NULL,
  `fkIdCurso` mediumint(9) NOT NULL,
  `fkIdEstudiante` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `examen`
--

INSERT INTO `examen` (`idExamen`, `nota`, `fechaRealizacion`, `fkIdCurso`, `fkIdEstudiante`) VALUES
(1, 3, '2024-03-15 12:00:00', 1, 1),
(2, 5, '2024-04-10 10:00:00', 2, 2),
(4, 2, '2024-06-20 04:00:00', 5, 3),
(5, 4, '2024-03-15 12:00:00', 1, 5),
(6, 4, '2024-03-15 12:00:00', 1, 6),
(7, 4, '2024-03-15 12:00:00', 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `idPregunta` mediumint(9) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta` text DEFAULT NULL,
  `tema` varchar(100) NOT NULL,
  `fkIdExamen` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`idPregunta`, `pregunta`, `respuesta`, `tema`, `fkIdExamen`) VALUES
(2, 'Cual es la segunda ley de Newton', 'ley de la fuerza', 'Fisica', 1),
(3, 'Cual es la capital de Colombia', 'bogotá', 'Sociales', 2),
(4, 'Para que se utiliza la tilde', 'tilde se usa para marcar la sílaba tónica en palabras que no siguen las reglas generales de acentuación.', 'Sociales', 2),
(6, '¿Qué es RAM?', 'RAM es la memoria que usa el ordenador para trabajar rápido.', 'MODELADO de software', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `fkIdCurso` (`fkIdCurso`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`idExamen`),
  ADD KEY `fkIdEstudiante` (`fkIdEstudiante`),
  ADD KEY `fkIdCurso` (`fkIdCurso`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`idPregunta`),
  ADD KEY `fkIdExamen` (`fkIdExamen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `idEstudiante` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `idExamen` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `idPregunta` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`fkIdCurso`) REFERENCES `curso` (`idCurso`);

--
-- Filtros para la tabla `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`fkIdEstudiante`) REFERENCES `estudiante` (`idEstudiante`),
  ADD CONSTRAINT `examen_ibfk_2` FOREIGN KEY (`fkIdCurso`) REFERENCES `curso` (`idCurso`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`fkIdExamen`) REFERENCES `examen` (`idExamen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
