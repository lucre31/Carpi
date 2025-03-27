-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-03-2025 a las 01:17:57
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_sigeflex`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `DNI` int(8) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Edad` int(2) NOT NULL,
  `Mail` varchar(45) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `FechaNac` date NOT NULL,
  `User` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`DNI`, `Apellido`, `Nombre`, `Edad`, `Mail`, `Direccion`, `FechaNac`, `User`, `Pass`) VALUES
(47551605, 'Zamudio', 'Lucrecia', 18, 'zamudiolucrecia5@gmail.com', 'El Callao 388', '2006-08-31', 'lucre', '12345678'),
(47862612, 'pumarega', 'martina', 18, 'martinapito@gmail.cion', '123 callefalsa', '2007-01-15', 'pumarega', '87654321');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
