-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2021 a las 03:58:59
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_springboot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `create_at` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `apellido`, `create_at`, `email`, `foto`, `nombre`) VALUES
(2, 'Doe', '2017-08-02', 'john.doe@gmail.com', '8117b6e7-3040-46ee-944c-67a3b3d50d65_wallpaperbetter (14).jpg', 'Jose'),
(3, 'Torvalds', '2017-08-03', 'linus.torvalds@gmail.com', '74e04a5e-9c29-463a-b093-0611508850a1_WhatsApp Image 2021-11-18 at 2.43.25 PM.jpeg', 'Fabian'),
(4, 'Doe', '2017-08-04', 'jane.doe@gmail.com', '', 'Jane'),
(5, 'Lerdorf', '2017-08-05', 'rasmus.lerdorf@gmail.com', '7e531e72-8869-4716-9eab-1279944df047_wallpaperbetter (17).jpg', 'Rasmus'),
(6, 'Gamma', '2017-08-06', 'erich.gamma@gmail.com', '', 'Erich'),
(7, 'Helm', '2017-08-07', 'richard.helm@gmail.com', '', 'Richard'),
(8, 'Johnson', '2017-08-08', 'ralph.johnson@gmail.com', '', 'Ralph'),
(9, 'Vlissides', '2017-08-09', 'john.vlissides@gmail.com', '', 'John'),
(10, 'Gosling', '2017-08-10', 'james.gosling@gmail.com', '', 'James'),
(11, 'Lee', '2017-08-11', 'bruce.lee@gmail.com', '', 'Bruce'),
(12, 'Doe', '2017-08-12', 'johnny.doe@gmail.com', '', 'Johnny'),
(13, 'Roe', '2017-08-13', 'john.roe@gmail.com', '', 'John'),
(14, 'Roe', '2017-08-14', 'jane.roe@gmail.com', '', 'Jane'),
(15, 'Doe', '2017-08-15', 'richard.doe@gmail.com', '', 'Richard'),
(17, 'Webb', '2017-08-17', 'phillip.webb@gmail.com', '', 'Phillip'),
(18, 'Nicoll', '2017-08-18', 'stephane.nicoll@gmail.com', '', 'Stephane'),
(19, 'Brannen', '2017-08-19', 'sam.brannen@gmail.com', '', 'Sam'),
(35, 'Halo', '2004-11-15', 'adamekinilfabian@gmail.com', '747d0ddd-7d5b-4f0c-970e-7531a4fa7b55_wallpaperbetter (16).jpg', 'TheBlackReaper'),
(38, 'Halo', '2004-11-15', 'TheBlackReaper@gmail.com', 'dcba4d2a-99b0-4f54-a646-77e763d184cd_wallpaperbetter (17).jpg', 'Jose cima'),
(39, 'prueba', '2004-11-15', 'prueba@prueba', 'f20cbaf0-d070-4b17-8149-981df166d38a_wallpaperbetter (17).jpg', 'prueba'),
(40, 'Adame', '2004-11-15', 'adamekinilfabian@gmail.com', 'b99fd757-63e5-4daa-829d-a7712ffecab9_wallpaperbetter (17).jpg', 'Fabian'),
(41, 'Santos', '2021-11-28', 'marla24@gmail.com', '447355c2-0eb6-4476-b2c4-8dd7d99a2cd8_IMG-1179.jpg', 'Marla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) NOT NULL,
  `create_at` date NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `observacion` varchar(255) NOT NULL,
  `cliente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `create_at`, `descripcion`, `observacion`, `cliente_id`) VALUES
(2, '2021-11-29', 'Factura Bicicleta', 'Alguna nota importante!', 4),
(3, '2021-11-29', 'Factura equipos de oficina', 'ninguna', 5),
(4, '2021-11-29', 'Factura equipos de oficina', 'ninguna', 5),
(5, '2021-11-29', 'Factura equipos de oficina', 'ninguna', 2),
(6, '2021-11-29', 'Factura Bicicleta', 'Alguna nota importante!', 3),
(7, '2021-11-29', 'Factura Bicicleta', 'Alguna nota importante!', 40),
(8, '2021-11-29', 'Factura equipos de oficina', 'Alguna nota importante!', 4),
(9, '2021-11-29', 'Factura Bicicleta', 'Alguna nota importante!', 4),
(10, '2021-11-15', 'no hay', 'ninguna', 4),
(11, '2021-11-15', 'no hay', 'ninguna', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_items`
--

CREATE TABLE `facturas_items` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `factura_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas_items`
--

INSERT INTO `facturas_items` (`id`, `cantidad`, `producto_id`, `factura_id`) VALUES
(1, 3, 6, 2),
(5, 3, 6, 2),
(6, 3, 6, 2),
(9, 3, 6, 2),
(10, 2, 4, 3),
(11, 2, 6, 11),
(12, 3, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `create_at` date NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `create_at`, `nombre`, `precio`) VALUES
(1, '2021-11-29', 'Panasonic Pantalla LCD', 259990.00),
(2, '2021-11-29', 'Sony Camara digital DSC-W320B', 123490.00),
(3, '2021-11-29', 'Apple iPod shuffle', 1499990.00),
(4, '2021-11-29', 'Sony Notebook Z110', 37990.00),
(5, '2021-11-29', 'Hewlett Packard Multifuncional F2280', 69990.00),
(6, '2021-11-29', 'Bianchi Bicicleta Aro 26', 69990.00),
(7, '2021-11-29', 'Mica Comoda 5 Cajones', 299990.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indices de la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `factura_id` (`factura_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  ADD CONSTRAINT `facturas_items_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_items_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
