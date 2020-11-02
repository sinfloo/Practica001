-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2020 a las 02:17:59
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `IDDEPARTAMENTO` int(11) NOT NULL,
  `DEPARTAMENTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`IDDEPARTAMENTO`, `DEPARTAMENTO`) VALUES
(5, 'Olimpo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `IDEQUIPO` int(11) NOT NULL,
  `DESCRIPCION` varchar(150) DEFAULT NULL,
  `HPRESTAMO` int(10) NOT NULL,
  `MARCA` int(11) DEFAULT NULL,
  `FECHAALTA` date DEFAULT NULL,
  `FECHABAJA` date DEFAULT NULL,
  `ESTADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`IDEQUIPO`, `DESCRIPCION`, `HPRESTAMO`, `MARCA`, `FECHAALTA`, `FECHABAJA`, `ESTADO`) VALUES
(1, 'LAPTOP', 0, 2, '2020-11-01', '2020-12-31', 1),
(2, 'Bateria', 0, 1, '2020-11-12', '2021-12-12', 2),
(3, 'Mousess', 46, 1, '1990-12-12', '2020-12-12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID` int(11) NOT NULL,
  `MARCA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID`, `MARCA`) VALUES
(1, 'CATERPILLAR'),
(2, 'TOSHIBA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamoequipo`
--

CREATE TABLE `prestamoequipo` (
  `CODIGOPRESTAMO` int(11) NOT NULL,
  `HORASEQUIPO` decimal(18,2) DEFAULT NULL,
  `HORASENTREGA` decimal(18,2) DEFAULT NULL,
  `RESPONSABLE` int(11) DEFAULT NULL,
  `FECHAENTREGA` date DEFAULT NULL,
  `FECHADEVOLUCION` date DEFAULT NULL,
  `IDEQUIPO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamoequipo`
--

INSERT INTO `prestamoequipo` (`CODIGOPRESTAMO`, `HORASEQUIPO`, `HORASENTREGA`, `RESPONSABLE`, `FECHAENTREGA`, `FECHADEVOLUCION`, `IDEQUIPO`) VALUES
(9, '0.00', '23.00', 75439177, '2020-11-01', '2020-12-11', 3),
(10, '0.00', '34.00', 75439177, '2020-11-01', '2020-12-12', 3),
(11, '0.00', '0.00', 75439177, '2020-11-01', '2020-11-19', 2),
(12, '0.00', '0.00', 75439177, '2020-11-01', '2020-12-12', 3),
(13, '23.00', '0.00', 75439177, '2020-11-01', '2020-12-12', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

CREATE TABLE `profesion` (
  `PROFESION` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesion`
--

INSERT INTO `profesion` (`PROFESION`, `DESCRIPCION`) VALUES
(5, 'Juez Divino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `IDROL` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`IDROL`, `DESCRIPCION`) VALUES
(2, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `PASSWORD` int(11) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDO` varchar(50) DEFAULT NULL,
  `PROFESION` int(11) DEFAULT NULL,
  `ROL` int(11) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `DEPARTAMENTO` int(11) DEFAULT NULL,
  `FECHAINGRESO` date DEFAULT NULL,
  `FECHACESE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUSUARIO`, `PASSWORD`, `NOMBRE`, `APELLIDO`, `PROFESION`, `ROL`, `EMAIL`, `DEPARTAMENTO`, `FECHAINGRESO`, `FECHACESE`) VALUES
(75439177, 123456, 'juan', 'apaza', 5, 2, 'testing@gmail.com', 5, '0000-00-00', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`IDDEPARTAMENTO`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`IDEQUIPO`),
  ADD KEY `MARCA` (`MARCA`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `prestamoequipo`
--
ALTER TABLE `prestamoequipo`
  ADD PRIMARY KEY (`CODIGOPRESTAMO`),
  ADD KEY `IDEQUIPO` (`IDEQUIPO`),
  ADD KEY `RESPONSABLE` (`RESPONSABLE`);

--
-- Indices de la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD PRIMARY KEY (`PROFESION`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`IDROL`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUSUARIO`),
  ADD KEY `ROL` (`ROL`),
  ADD KEY `PROFESION` (`PROFESION`),
  ADD KEY `DEPARTAMENTO` (`DEPARTAMENTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `prestamoequipo`
--
ALTER TABLE `prestamoequipo`
  MODIFY `CODIGOPRESTAMO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`MARCA`) REFERENCES `marca` (`ID`);

--
-- Filtros para la tabla `prestamoequipo`
--
ALTER TABLE `prestamoequipo`
  ADD CONSTRAINT `prestamoequipo_ibfk_1` FOREIGN KEY (`IDEQUIPO`) REFERENCES `equipo` (`IDEQUIPO`),
  ADD CONSTRAINT `prestamoequipo_ibfk_2` FOREIGN KEY (`RESPONSABLE`) REFERENCES `usuario` (`IDUSUARIO`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ROL`) REFERENCES `rol` (`IDROL`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`PROFESION`) REFERENCES `profesion` (`PROFESION`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`DEPARTAMENTO`) REFERENCES `departamento` (`IDDEPARTAMENTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
