-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2017 a las 09:12:39
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `usuario`, `clave`) VALUES
(1, 'Kevin', '678'),
(2, 'Simon', ''),
(3, 'Angie', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `idArtista` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`idArtista`, `usuario`, `clave`) VALUES
(1, 'Kevin', '2'),
(2, 'Simon', '1'),
(3, 'Angie', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiseta`
--

CREATE TABLE `camiseta` (
  `idCamiseta` int(11) NOT NULL,
  `talla` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `formaPago` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `usuario`, `clave`, `ubicacion`, `formaPago`) VALUES
(1, 'Kevin', '5', 'Bosa', 'Efectivo'),
(2, 'Simon', '12', 'Usme', 'Tarjeta'),
(3, 'Angie', '12', 'Granja', 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estampa`
--

CREATE TABLE `estampa` (
  `idEstampa` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `imagenes` varchar(45) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `popularidad` varchar(45) DEFAULT NULL,
  `Artista_idArtista` int(11) NOT NULL,
  `Tema_idTema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estampa`
--

INSERT INTO `estampa` (`idEstampa`, `nombre`, `descripcion`, `imagenes`, `rating`, `popularidad`, `Artista_idArtista`, `Tema_idTema`) VALUES
(0, 'Chat', 'Globitos del chat.', 'chat.png', '4', '12', 1, 1),
(1, 'Envelope', 'Un breve mensajesito.', 'envelope.png', '3', '10', 1, 1);
(2, 'Headset', 'Unos audifonos.', 'headset.png', '5', '17', 1, 1);
(3, 'Imac', 'Una super pc.', 'imac.png', '5', '100', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estampasventas`
--

CREATE TABLE `estampasventas` (
  `idVenta` int(11) NOT NULL,
  `idEstampa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `idTema` int(11) NOT NULL,
  `Descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`idTema`, `Descripcion`) VALUES
(1, 'animal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `Cliente_idCliente` int(11) NOT NULL,
  `Camiseta_idCamiseta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`idArtista`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `camiseta`
--
ALTER TABLE `camiseta`
  ADD PRIMARY KEY (`idCamiseta`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `estampa`
--
ALTER TABLE `estampa`
  ADD PRIMARY KEY (`idEstampa`),
  ADD UNIQUE KEY `idEstampa_2` (`idEstampa`),
  ADD KEY `fk_Estampa_Artista1_idx` (`Artista_idArtista`),
  ADD KEY `Tema_idTema` (`Tema_idTema`),
  ADD KEY `idEstampa` (`idEstampa`);

--
-- Indices de la tabla `estampasventas`
--
ALTER TABLE `estampasventas`
  ADD KEY `idVenta` (`idVenta`),
  ADD KEY `idEstampa` (`idEstampa`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idTema`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `fk_Venta_Cliente_idx` (`Cliente_idCliente`),
  ADD KEY `fk_Venta_Camiseta1_idx` (`Camiseta_idCamiseta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `idArtista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `camiseta`
--
ALTER TABLE `camiseta`
  MODIFY `idCamiseta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `idTema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estampa`
--
ALTER TABLE `estampa`
  ADD CONSTRAINT `estampa_ibfk_1` FOREIGN KEY (`Artista_idArtista`) REFERENCES `artista` (`idArtista`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `estampa_ibfk_2` FOREIGN KEY (`Tema_idTema`) REFERENCES `tema` (`idTema`);

--
-- Filtros para la tabla `estampasventas`
--
ALTER TABLE `estampasventas`
  ADD CONSTRAINT `estampasventas_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `estampasventas_ibfk_2` FOREIGN KEY (`idEstampa`) REFERENCES `estampa` (`idEstampa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`Camiseta_idCamiseta`) REFERENCES `camiseta` (`idCamiseta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
