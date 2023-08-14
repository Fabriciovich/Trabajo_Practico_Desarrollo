-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2023 a las 20:02:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `image`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `secure_url` text DEFAULT NULL,
  `asset_id` varchar(255) DEFAULT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `version_id` varchar(255) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `original_filename`, `format`, `resource_type`, `url`, `secure_url`, `asset_id`, `public_id`, `version_id`, `creation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cr7', 'jpg', 'image', 'http://res.cloudinary.com/dzgwb2cel/image/upload/v1692035945/rvsugpm8seveoa6ejvur.jpg', 'https://res.cloudinary.com/dzgwb2cel/image/upload/v1692035945/rvsugpm8seveoa6ejvur.jpg', 'ba9dda0645cc4025e8fccd3b381d35b5', 'rvsugpm8seveoa6ejvur', '3bf01f417d830b91aad26895412acdd6', '2023-08-14 17:59:05', '2023-08-14 17:59:06', '2023-08-14 17:59:06', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
