-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2024 a las 17:11:57
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
-- Base de datos: `star_wars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id` int(11) NOT NULL,
  `nombre` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `naves`
--

CREATE TABLE `naves` (
  `id` int(11) NOT NULL,
  `sistema_navegacion` varchar(50) NOT NULL,
  `fabricante` varchar(50) NOT NULL,
  `especificacion_tecnica` varchar(50) NOT NULL,
  `tamanio` varchar(50) NOT NULL,
  `faccion` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `velocidad` varchar(50) NOT NULL,
  `armamento` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen_uno` varchar(100) NOT NULL,
  `imagen_dos` varchar(100) NOT NULL,
  `nombre_naves_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_naves`
--

CREATE TABLE `nombre_naves` (
  `id` int(11) NOT NULL,
  `nombre` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_sables`
--

CREATE TABLE `nombre_sables` (
  `id` int(11) NOT NULL,
  `nombre` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `estreno` varchar(56) NOT NULL,
  `duracion` varchar(56) NOT NULL,
  `recaudacion` varchar(70) NOT NULL,
  `personajes_principales` text NOT NULL,
  `reparto` text NOT NULL,
  `director` varchar(60) NOT NULL,
  `produccion` varchar(50) NOT NULL,
  `guion` varchar(50) NOT NULL,
  `musica` varchar(50) NOT NULL,
  `fotografia` varchar(50) NOT NULL,
  `montaje` varchar(56) NOT NULL,
  `vestuario` varchar(56) NOT NULL,
  `sinopsis` text NOT NULL,
  `curiosidades` text NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `titulo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(56) NOT NULL,
  `descripcion` text NOT NULL,
  `afiliacion` varchar(100) NOT NULL,
  `planeta _ natal` varchar(100) NOT NULL,
  `habilidades` varchar(100) NOT NULL,
  `arma` varchar(100) NOT NULL,
  `actor` varchar(56) NOT NULL,
  `imagen_uno` varchar(100) NOT NULL,
  `imagen_dos` varchar(100) NOT NULL,
  `especie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sables`
--

CREATE TABLE `sables` (
  `id` int(11) NOT NULL,
  `descripcion_uno` text DEFAULT NULL,
  `descripcion_dos` text DEFAULT NULL,
  `descripcion_tres` text DEFAULT NULL,
  `enpuniadura` text NOT NULL,
  `hoja` text NOT NULL,
  `cristal` text NOT NULL,
  `imagen_uno` varchar(100) NOT NULL,
  `imagen_dos` varchar(100) NOT NULL,
  `imagen_tres` varchar(100) NOT NULL,
  `nombre_sables_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo`
--

CREATE TABLE `titulo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `naves`
--
ALTER TABLE `naves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_naves` (`nombre_naves_id`);

--
-- Indices de la tabla `nombre_naves`
--
ALTER TABLE `nombre_naves`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nombre_sables`
--
ALTER TABLE `nombre_sables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_peliculas` (`titulo_id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_personajes` (`especie_id`);

--
-- Indices de la tabla `sables`
--
ALTER TABLE `sables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sables` (`nombre_sables_id`);

--
-- Indices de la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `especie`
--
ALTER TABLE `especie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `naves`
--
ALTER TABLE `naves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nombre_naves`
--
ALTER TABLE `nombre_naves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nombre_sables`
--
ALTER TABLE `nombre_sables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sables`
--
ALTER TABLE `sables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `titulo`
--
ALTER TABLE `titulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `naves`
--
ALTER TABLE `naves`
  ADD CONSTRAINT `fk_naves` FOREIGN KEY (`nombre_naves_id`) REFERENCES `nombre_naves` (`id`);

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `fk_peliculas` FOREIGN KEY (`titulo_id`) REFERENCES `titulo` (`id`);

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `fk_personajes` FOREIGN KEY (`especie_id`) REFERENCES `especie` (`id`);

--
-- Filtros para la tabla `sables`
--
ALTER TABLE `sables`
  ADD CONSTRAINT `fk_sables` FOREIGN KEY (`nombre_sables_id`) REFERENCES `nombre_sables` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
