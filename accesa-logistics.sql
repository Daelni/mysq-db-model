-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2022 a las 04:26:54
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `accesa-logistics`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `IdEmpleado` int(20) NOT NULL,
  `cargo` varchar(12) NOT NULL,
  `clave unica interna` varchar(14) NOT NULL,
  `Extensión del teléfono` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`IdEmpleado`, `cargo`, `clave unica interna`, `Extensión del teléfono`) VALUES
(1, 'Gerente', '123', 32),
(1, 'Gerente', '123', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(20) NOT NULL,
  `Nombre` varchar(23) NOT NULL,
  `Primer_apellido` varchar(30) NOT NULL,
  `Segundo_apellido` varchar(20) NOT NULL,
  `Alias` varchar(12) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Domicilio` varchar(50) NOT NULL,
  `Telefono_particular` int(10) NOT NULL,
  `Fecha_de_ingreso` date NOT NULL,
  `Salario_neto` int(11) NOT NULL,
  `Contrasena` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `Nombre`, `Primer_apellido`, `Segundo_apellido`, `Alias`, `Correo`, `Fecha_de_nacimiento`, `Domicilio`, `Telefono_particular`, `Fecha_de_ingreso`, `Salario_neto`, `Contrasena`) VALUES
(6, 'José Guadalupe', 'Deniz', 'Mancilla', 'Programador', 'jdeniz1@ucol.mx', '0000-00-00', 'Higuera de peters', 31233414, '2022-12-06', 42000, 123),
(8, 'Daniel', 'Madrigal', 'Mancilla', 'El pocho', 'daelni@gmail.com', '2001-06-22', 'Pablo silva', 2147483647, '2022-12-07', 22000, 123),
(9, 'Pedro', 'Deniz ', 'Mancilla', 'pedro', 'pedro@gmail.com', '1996-01-08', 'minatitl[an', 2147483647, '2022-12-08', 25000, 12345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `IDPerfil` int(12) NOT NULL,
  `Nombre` varchar(14) NOT NULL,
  `Clave unica interna` int(30) NOT NULL,
  `Salario mínimo` int(5) NOT NULL,
  `Salario Máximo` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`IDPerfil`, `Nombre`, `Clave unica interna`, `Salario mínimo`, `Salario Máximo`) VALUES
(1, 'Gerente', 123, 25000, 43000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`IDPerfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `IDPerfil` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
