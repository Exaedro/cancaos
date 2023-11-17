-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 01:36:21
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `canciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `idAlbum` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `año` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album`
--

INSERT INTO `album` (`idAlbum`, `nombre`, `año`, `descripcion`) VALUES
(1, 'Cantata para América mágica', 1940, 'Cantata para coro mixto, soprano, barítono y orquesta'),
(2, 'Estancia', 1934, 'Suite para orquesta'),
(3, 'La Muerte del Ángel', 1948, 'Obra para orquesta'),
(4, 'Oblivion', 1955, 'Tango para bandoneon y orquesta'),
(5, 'Tres piezas para piano', 1928, 'Tres piezas para piano'),
(6, 'El Amor Brujo', 1915, 'Ballet'),
(7, 'Sonata para violín y piano', 1935, 'Sonata para violín y piano'),
(8, 'Suite en Sol mayor', 1922, 'Suite para orquesta'),
(9, 'Tres canciones argentinas', 1926, 'Tres canciones argentinas para soprano y orquesta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `idArtista` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `banda` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`idArtista`, `nombre`, `apellido`, `banda`) VALUES
(1, 'Alberto', 'Ginastera', ''),
(2, 'Astor', 'Piazzolla', ''),
(3, 'Carlos', 'Guastavino', ''),
(4, 'Juan José', 'Castro', ''),
(5, 'Luis', 'Gianneo', ''),
(6, 'Manuel', 'de Falla', 'Ibero-American Quartet'),
(7, 'Nicolás', 'Rausseo', ''),
(8, 'Ricardo', 'Viñes', ''),
(9, 'Sergio', 'Asencio', ''),
(10, 'DeiGamer', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `idCancion` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `lanzamiento` date NOT NULL,
  `genero` varchar(30) NOT NULL,
  `idArtista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`idCancion`, `titulo`, `duracion`, `lanzamiento`, `genero`, `idArtista`) VALUES
(1, 'Slenderman VS Jeff The Killer', '1:53', '2013-08-25', 'Rap', 10),
(2, 'Panorama de Buenos Aires', '15', '0000-00-00', 'Clasica', 1),
(3, 'Minecraft Rap', '3:36', '2012-09-03', 'Rap', 10),
(4, 'Libertango', '10', '0000-00-00', 'Clasica', 2),
(5, 'Limbo Rap', '3:36', '2013-08-22', 'Rap', 10),
(6, 'El Amor Brujo', '25', '0000-00-00', 'Clasica', 6),
(7, 'Concierto para violin', '30', '0000-00-00', 'Clasica', 7),
(8, 'Suite en Sol mayor', '20', '0000-00-00', 'Clasica', 8),
(9, 'Canción del fuego fatuo', '15', '0000-00-00', 'Clasica', 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`idArtista`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`idCancion`),
  ADD KEY `idArtista` (`idArtista`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `idArtista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `idCancion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
