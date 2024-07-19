-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2024 a las 22:13:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectodmg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `codigo` int(20) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_ropa`
--

CREATE TABLE `categoria_ropa` (
  `codigo_cat` int(11) NOT NULL,
  `codigo_ropa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `nro_compra` int(11) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `envio` varchar(100) NOT NULL,
  `correo_user` varchar(50) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_ropa`
--

CREATE TABLE `compra_ropa` (
  `nro_compra_ropa` int(11) NOT NULL,
  `codigo_ropa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ropa`
--

CREATE TABLE `ropa` (
  `codigo` int(50) NOT NULL,
  `precio` int(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle`
--

CREATE TABLE `talle` (
  `codigo` int(20) NOT NULL,
  `medida` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle_ropa`
--

CREATE TABLE `talle_ropa` (
  `codigo_talle` int(11) NOT NULL,
  `codigo_ropa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `correo` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `telefono` int(9) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `token` varchar(20) DEFAULT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`correo`, `nombre`, `apellido`, `telefono`, `pass`, `token`, `rol`) VALUES
('cristian54686725@gmail.com', 'Cristian', 'Vivas', 96838591, 'faed931e757d749a7c6e4ba1cf35aa0cc7a6efe811b913dbf2d485f7c658e90d33f0504fe370fe8abb8555c36c74ec7909835b3bb17bb6e8d5f97204ce06e026', NULL, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `categoria_ropa`
--
ALTER TABLE `categoria_ropa`
  ADD PRIMARY KEY (`codigo_cat`,`codigo_ropa`),
  ADD KEY `codigo_ropa` (`codigo_ropa`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`nro_compra`),
  ADD KEY `correo_user` (`correo_user`);

--
-- Indices de la tabla `compra_ropa`
--
ALTER TABLE `compra_ropa`
  ADD PRIMARY KEY (`nro_compra_ropa`),
  ADD KEY `codigo_ropa` (`codigo_ropa`);

--
-- Indices de la tabla `ropa`
--
ALTER TABLE `ropa`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `talle`
--
ALTER TABLE `talle`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `talle_ropa`
--
ALTER TABLE `talle_ropa`
  ADD PRIMARY KEY (`codigo_talle`,`codigo_ropa`),
  ADD KEY `codigo_ropa` (`codigo_ropa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `nro_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ropa`
--
ALTER TABLE `ropa`
  MODIFY `codigo` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talle`
--
ALTER TABLE `talle`
  MODIFY `codigo` int(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categoria_ropa`
--
ALTER TABLE `categoria_ropa`
  ADD CONSTRAINT `categoria_ropa_ibfk_1` FOREIGN KEY (`codigo_cat`) REFERENCES `categoria` (`codigo`),
  ADD CONSTRAINT `categoria_ropa_ibfk_2` FOREIGN KEY (`codigo_ropa`) REFERENCES `ropa` (`codigo`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`correo_user`) REFERENCES `usuario` (`correo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compra_ropa`
--
ALTER TABLE `compra_ropa`
  ADD CONSTRAINT `compra_ropa_ibfk_1` FOREIGN KEY (`nro_compra_ropa`) REFERENCES `compra` (`nro_compra`) ON DELETE CASCADE,
  ADD CONSTRAINT `compra_ropa_ibfk_2` FOREIGN KEY (`codigo_ropa`) REFERENCES `ropa` (`codigo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `talle_ropa`
--
ALTER TABLE `talle_ropa`
  ADD CONSTRAINT `talle_ropa_ibfk_1` FOREIGN KEY (`codigo_talle`) REFERENCES `talle` (`codigo`),
  ADD CONSTRAINT `talle_ropa_ibfk_2` FOREIGN KEY (`codigo_ropa`) REFERENCES `ropa` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
