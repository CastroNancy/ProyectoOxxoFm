-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 01:32:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_oxxo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fmoxxo`
--

CREATE TABLE `fmoxxo` (
  `idEmp` int(11) NOT NULL,
  `NombreEmp` varchar(100) NOT NULL,
  `ApellidoEmp` varchar(100) NOT NULL,
  `IdSuc` int(11) NOT NULL,
  `FechaNac` date NOT NULL,
  `FechaIng` date NOT NULL,
  `Puesto` int(11) NOT NULL,
  `Sueldo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fmoxxo`
--

INSERT INTO `fmoxxo` (`idEmp`, `NombreEmp`, `ApellidoEmp`, `IdSuc`, `FechaNac`, `FechaIng`, `Puesto`, `Sueldo`) VALUES
(1, 'Nancy', 'Yazmin', 3, '2006-10-05', '2023-10-25', 2, 3000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestostrab`
--

CREATE TABLE `puestostrab` (
  `Puesto` int(11) NOT NULL,
  `PuestoNm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puestostrab`
--

INSERT INTO `puestostrab` (`Puesto`, `PuestoNm`) VALUES
(1, 'Cajas'),
(2, 'Gerencia'),
(3, 'seguridad'),
(4, 'Ayudante de reparto'),
(5, 'Axiliar contabilidad'),
(6, 'Jefe de Almacen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `idSuc` int(11) NOT NULL,
  `NomSuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`idSuc`, `NomSuc`) VALUES
(1, 'Oxxo Av. Juarez'),
(2, 'Oxxo Mision de San José'),
(3, 'Oxxo De Oca'),
(4, 'Oxxo Juzgados'),
(5, 'Oxxo Yepomera'),
(6, 'Oxxo Piña');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fmoxxo`
--
ALTER TABLE `fmoxxo`
  ADD PRIMARY KEY (`idEmp`,`IdSuc`,`Puesto`),
  ADD KEY `Puesto` (`Puesto`),
  ADD KEY `IdSuc` (`IdSuc`);

--
-- Indices de la tabla `puestostrab`
--
ALTER TABLE `puestostrab`
  ADD PRIMARY KEY (`Puesto`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`idSuc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fmoxxo`
--
ALTER TABLE `fmoxxo`
  MODIFY `idEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fmoxxo`
--
ALTER TABLE `fmoxxo`
  ADD CONSTRAINT `fmoxxo_ibfk_1` FOREIGN KEY (`Puesto`) REFERENCES `puestostrab` (`Puesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fmoxxo_ibfk_2` FOREIGN KEY (`IdSuc`) REFERENCES `sucursales` (`idSuc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
