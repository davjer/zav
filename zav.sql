-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-11-2019 a las 03:51:54
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zav`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `frm_id` int(11) NOT NULL,
  `frm_nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `frm_apellido` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `frm_telefono` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `frm_email` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`frm_id`, `frm_nombre`, `frm_apellido`, `frm_telefono`, `frm_email`) VALUES
(1, 'david jeronimo', 'giraldo atehortua', '3162824301', 'dddd@ffff.com'),
(2, 'david jeronimo', 'giraldo atehortua', '3162824301', 'dddd@ffff.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `img_id` int(11) NOT NULL,
  `img_imagen` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `img_titulo` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `img_url` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `img_titulo2` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `img_titulo3` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `img_contenido` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`img_id`, `img_imagen`, `img_titulo`, `img_url`, `img_titulo2`, `img_titulo3`, `img_contenido`) VALUES
(1, 'img/1.jpg', 'titulo', 'contenido.php?id=1', 'titulo2', 'titulo3', 'contenido de texto'),
(2, 'img/2.jpeg', 'titulo', 'contenido.php?id=2', 'titulo2', 'titulo3', 'contenido de texto'),
(3, 'img/3.jpeg', 'titulo', 'contenido.php?id=3', 'titulo2', 'titulo3', 'contenido de texto'),
(4, 'img/4.jpg', 'titulo', 'contenido.php?id=4', 'titulo2', 'titulo3', 'contenido de texto'),
(5, 'img/5.jpg', 'titulo', 'contenido.php?id=5', 'titulo2', 'titulo3', 'contenido de texto'),
(6, 'img/6.jpg', 'titulo', 'contenido.php?id=6', 'titulo2', 'titulo3', 'contenido de texto'),
(7, 'img/7.jpg', 'titulo', 'contenido.php?id=7', 'titulo2', 'titulo3', 'contenido de texto'),
(8, 'img/8.jpg', 'titulo', 'contenido.php?id=8', 'titulo2', 'titulo3', 'contenido de texto'),
(9, 'img/9.jpg', 'titulo', 'contenido.php?id=9', 'titulo2', 'titulo3', 'contenido de texto'),
(10, 'img/10.gif', 'titulo', 'contenido.php?id=10', 'titulo2', 'titulo3', 'contenido de texto');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`frm_id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`img_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `frm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
