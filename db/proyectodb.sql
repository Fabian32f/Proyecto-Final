-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2021 a las 04:06:58
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
-- Base de datos: `proyectodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authorities`
--

CREATE TABLE `authorities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `authorities`
--

INSERT INTO `authorities` (`id`, `user_id`, `authority`) VALUES
(1, 1, 'ROLE_USER'),
(2, 2, 'ROLE_ADMIN'),
(3, 2, 'ROLE_USER');

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
(1, 'Guzman', '2021-11-04', 'profesor@bolsadeideas.com', 'c8c69880-517b-48fd-baac-9e58500cf403_wallpaperbetter (18).jpg', 'Andres'),
(2, 'Doe', '2021-11-04', 'john.doe@gmail.com', '', 'Fabian'),
(3, 'Torvalds', '2021-11-04', 'linus.torvalds@gmail.com', '', 'Linus'),
(4, 'Doe', '2021-11-03', 'jane.doe@gmail.com', '', 'Jane'),
(5, 'Lerdorf', '2021-11-03', 'rasmus.lerdorf@gmail.com', '', 'Rasmus'),
(7, 'Helm', '2021-11-03', 'richard.helm@gmail.com', '', 'Richard'),
(8, 'Johnson', '2021-11-03', 'ralph.johnson@gmail.com', '', 'Ralph'),
(10, 'Gosling', '2021-11-03', 'james.gosling@gmail.com', '', 'James'),
(11, 'Lee', '2021-11-03', 'bruce.lee@gmail.com', '', 'Bruce'),
(12, 'Doe', '2021-11-03', 'johnny.doe@gmail.com', '', 'Johnny'),
(13, 'Roe', '2021-11-03', 'john.roe@gmail.com', '', 'John'),
(15, 'Doe', '2021-11-03', 'richard.doe@gmail.com', '', 'Richard'),
(16, 'Doe', '2021-11-03', 'janie.doe@gmail.com', '', 'Janie'),
(17, 'Webb', '2021-11-03', 'phillip.webb@gmail.com', '', 'Phillip'),
(18, 'Nicoll', '2021-11-03', 'stephane.nicoll@gmail.com', '', 'Stephane'),
(19, 'Brannen', '2021-11-03', 'sam.brannen@gmail.com', '', 'Sam'),
(20, 'Hoeller', '2021-11-03', 'juergen.Hoeller@gmail.com', '', 'Juergen'),
(21, 'Roe', '2021-11-03', 'janie.roe@gmail.com', '', 'Janie'),
(32, 'Kinil', '2020-11-11', 'adamekinilfabian@gmail.com', NULL, 'Fabian'),
(33, 'Kinil', '2020-11-11', 'adamekinilfabian@gmail.com', NULL, 'Fabian'),
(34, 'Adame', '2020-11-09', 'hildayaros@gmail.com', '02190f04-58bc-44a3-80d7-f1000ce09e1d_images.jpg', 'Fabian'),
(36, 'Kinil', '2021-11-03', 'correo@correo', 'bc1cd055-3c06-4872-840c-c0823c5aceb8_wallpaperbetter (18).jpg', 'Fabian');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) NOT NULL,
  `create_at` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `cliente_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `create_at`, `descripcion`, `observacion`, `cliente_id`) VALUES
(1, '2021-12-01', 'Factura equipos de oficina', NULL, 1),
(3, '2021-12-02', 'niguna', 'muchas', 21),
(4, '2021-12-05', 'sin descripcion', 'Ninguna', 1),
(5, '2021-12-05', 'sin descripcion', 'wdasdasd', 2),
(7, '2021-12-05', 'sin descripcion', 'sfsdfsdfsdf', 34),
(9, '2021-12-05', 'sin descripcion', 'sdasdasd', 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_items`
--

CREATE TABLE `facturas_items` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `producto_id` bigint(20) DEFAULT NULL,
  `factura_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas_items`
--

INSERT INTO `facturas_items` (`id`, `cantidad`, `producto_id`, `factura_id`) VALUES
(1, 1, 1, 1),
(2, 2, 4, 1),
(3, 1, 5, 1),
(4, 1, 7, 1),
(6, 1, 2, 3),
(7, 3, 3, 4),
(8, 1, 3, 5),
(10, 5, 3, 7),
(13, 1, 5, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL,
  `create_at` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `create_at`, `nombre`, `precio`) VALUES
(1, '2021-12-01', 'Panasonic Pantalla LCD', 259990),
(2, '2021-12-01', 'Sony Camara digital DSC-W320B', 123490),
(3, '2021-12-01', 'Apple iPod shuffle', 1499990),
(4, '2021-12-01', 'Sony Notebook Z110', 37990),
(5, '2021-12-01', 'Hewlett Packard Multifuncional F2280', 69990),
(6, '2021-12-01', 'Bianchi Bicicleta Aro 26', 69990),
(7, '2021-12-01', 'Mica Comoda 5 Cajones', 299990);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `enabled`) VALUES
(1, 'andres', '$2a$10$ec0mloSt9pex0hptWH8hCuWX9qVXN7Mz2nFTTEUS4FEAf09GO3Zv.', 1),
(2, 'admin', '$2a$10$oHW6yzm.CNbq3y61YLiyf.w4vQIf0W5V1AST0fMFD38Elczf5tqoy', 1),
(3, 'FHEJYM', '$2a$10$ec0mloSt9pex0hptWH8hCuWX9qVXN7Mz2nFTTEUS4FEAf09GO3Zv.', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD KEY `FK1qiuk10rfkovhlfpsk7oic0v8` (`cliente_id`);

--
-- Indices de la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdumnm9x14hjfp9fufn7q8389r` (`producto_id`),
  ADD KEY `FKnv8ijya20df661b0p6drqcx7u` (`factura_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authorities`
--
ALTER TABLE `authorities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `FK1qiuk10rfkovhlfpsk7oic0v8` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `facturas_items`
--
ALTER TABLE `facturas_items`
  ADD CONSTRAINT `FKdumnm9x14hjfp9fufn7q8389r` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `FKnv8ijya20df661b0p6drqcx7u` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
