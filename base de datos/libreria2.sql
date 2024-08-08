-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2024 a las 17:52:59
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
-- Base de datos: `libreria2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `codigo` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `autor` varchar(30) DEFAULT NULL,
  `editorial` varchar(15) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigo`, `titulo`, `autor`, `editorial`, `precio`, `cantidad`) VALUES
(1, 'El aleph', 'Borges', 'Planeta', 15000, 100),
(2, 'Martin Fierro', 'Jose Hernandez', 'Emece', 22000.2, 200),
(3, 'Antologia poetica', 'Borges', 'Planeta', 40000, 150),
(4, 'Aprenda PHP', 'Mario Molina', 'Emece', 18000.2, 200),
(5, 'Cervantes y el quijote', 'Borges', 'Paidos', 36000.4, 100),
(6, 'Manual de PHP', 'J.C. Paez', 'Paidos', 30000.8, 100),
(7, 'Harry Potter y la piedra filosofal', 'J.K.Rowling', 'Paidos', 45000, 500),
(8, 'Harry Potter y la camara secreta', 'J.K. Rowling', 'Paidos', 46, 300),
(9, 'Alicia en el pais de las maravillas', 'Lewis Carroll', 'Paidos', NULL, 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `codigo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
