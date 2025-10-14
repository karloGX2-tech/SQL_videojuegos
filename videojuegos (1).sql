-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2025 a las 01:10:11
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
-- Base de datos: `videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `IdCategoria` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion` text NOT NULL,
  `Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`IdCategoria`, `Nombre`, `Descripcion`, `Foto`) VALUES
(1, 'Playstation', 'Potencia y exclusivos cinematográficos.', 'consolas/categoria/sony.jpg'),
(2, 'Nintendo', 'Consolas familiares con juegos creativos y coloridos.', 'consolas/categoria/nintendoLogo.jpg'),
(3, 'Xbox', 'Rendimiento sólido y gran servicio en línea.', 'consolas/categoria/microsoft.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IDcliente` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `ApellidoPat` varchar(20) NOT NULL,
  `ApellidoMat` varchar(20) NOT NULL,
  `NumTelfefonico` varchar(12) NOT NULL,
  `CorreoElec` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IDcliente`, `Nombre`, `ApellidoPat`, `ApellidoMat`, `NumTelfefonico`, `CorreoElec`) VALUES
(1, 'Alejandro Daniel', 'Torres', 'Ramírez', '912 457 630', 'alejandro.torresr@gmail.com'),
(2, 'Mariana Isabel', 'Ríos', 'Delgado', '987 234 518', 'mariana.riosd@gmail.com'),
(3, 'Julián Andrés ', 'Herrera ', 'Campos', '934 852 701', 'julian.herrerac@gmail.com'),
(4, 'Camila Fernanda ', 'Guzmán', ' Ortega', '921 678 245', 'camila.guzmano@gmail.com'),
(5, 'Diego Alejandro ', ' Salazar', ' Muñoz', '980 345 672', 'diego.salazarm@gmail.com'),
(6, 'Valeria Sofía ', ' Mendoza', ' Paredes', '913 520 489', 'valeria.mendozap@gmail.com'),
(7, 'Santiago Gabriel ', ' Paredes', 'Lozano', '995 741 306', 'santiago.paredesl@gmail.com'),
(8, 'Lucía Beatriz ', 'Villanueva', 'Soto', '51 976 238 5', 'lucia.villanuevas@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consolas`
--

CREATE TABLE `consolas` (
  `IdConsola` int(11) NOT NULL,
  `IdCategoria` int(11) NOT NULL,
  `NombreConsola` varchar(50) NOT NULL,
  `MarcaConsola` varchar(50) NOT NULL,
  `FechaConsola` date NOT NULL,
  `PrecioConsola` decimal(10,2) NOT NULL,
  `ImagenConsolaChica` varchar(255) NOT NULL,
  `ImagenConsolaGrande` varchar(255) NOT NULL,
  `DescripcionConsola` text NOT NULL,
  `PromedioEstrellas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consolas`
--

INSERT INTO `consolas` (`IdConsola`, `IdCategoria`, `NombreConsola`, `MarcaConsola`, `FechaConsola`, `PrecioConsola`, `ImagenConsolaChica`, `ImagenConsolaGrande`, `DescripcionConsola`, `PromedioEstrellas`) VALUES
(1, 2, 'Switch OLED', 'Nintendo', '2021-10-08', 349.99, 'consolas/imch/switcholed.jpg', 'consolas/imgr/switcholed.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 1),
(2, 2, 'Nintendo 3DS', 'Nintendo', '2011-02-26', 199.99, 'consolas/imch/nintendo3ds.jpg', 'consolas/imgr/nintendo3ds.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 1),
(3, 2, 'Wii', 'Nintendo', '2011-02-26', 199.99, 'consolas/imch/WII.jpg', 'consolas/imgr/WII.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 3),
(4, 2, 'Nintendo Switch', 'Nintendo', '2013-02-10', 299.99, 'consolas/imch/switch.jpg', 'consolas/imgr/switch.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 3),
(5, 1, 'PlayStation 5', 'PlayStation', '2020-11-12', 499.99, 'consolas/imch/playstation5.jpg', 'consolas/imgr/playstation5.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 2),
(6, 1, 'PlayStation 4', 'PlayStation', '2013-11-15', 399.99, 'consolas/imch/playstation4.jpg', 'consolas/imgr/playstation4.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 1),
(7, 1, 'PlayStation 2', 'PlayStation', '2000-03-06', 150.99, 'consolas/imch/playstation2.jpg', 'consolas/imgr/playstation2.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 3),
(8, 1, 'PlayStation 1', 'PlayStation', '1994-12-12', 100.00, 'consolas/imch/playstation1.jpg', 'consolas/imgr/playstation1.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 4),
(9, 3, 'Xbox Series X', 'Xbox', '2020-11-10', 499.99, 'consolas/imch/XboxSeriesX.jpg', 'consolas/imgr/XboxSeriesX.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 4),
(10, 3, 'Xbox Series S', 'Xbox', '2020-11-10', 399.99, 'consolas/imch/seriesS.jpg', 'consolas/imgr/seriesS.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 5),
(11, 3, 'Xbox 360', 'Xbox', '2005-03-05', 150.99, 'consolas/imch/xbox360.jpg', 'consolas/imgr/xbox360.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 5),
(12, 3, 'Xbox One', 'Xbox', '2013-11-22', 299.99, 'consolas/imch/XboxOne.jpg', 'consolas/imgr/XboxOne.jpg', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `NombreEmpleado` varchar(20) NOT NULL,
  `ApellidoEmpleado` varchar(20) NOT NULL,
  `FotoEmpleado` tinytext NOT NULL,
  `CargoEmpleado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `NombreEmpleado`, `ApellidoEmpleado`, `FotoEmpleado`, `CargoEmpleado`) VALUES
(1, 'Nancy', 'Davolio', 'consolas/empleados/catherine.jpg', 'Representante de ventas'),
(2, 'Sheldon', ' Cooper', 'consolas/empleados/danilo.jpg', 'Supervisor de Ventas'),
(3, 'Elle', 'Faning', 'consolas/empleados/elle faning.jpg', 'Representante de ventas'),
(4, 'Emma', 'Myers', 'consolas/empleados/emma myers.jpg', 'Representante de ventas'),
(5, 'Finn', 'Wolfhard', 'consolas/empleados/fin.jpg', 'Representante de ventas'),
(6, 'Jenna', 'Ortega', 'consolas/empleados/jenna ortega.jpg', 'Representante de ventas'),
(7, 'Leonard', 'Hoftstater', 'consolas/empleados/leonard.jpg', 'Representante de ventas'),
(8, 'Stuart', 'Buchanan', 'consolas/empleados/leonardo.jpg', 'Supervisor de Ventas'),
(9, 'Robert', 'King', 'consolas/empleados/robert pattinson.jpg', 'Representante de ventas'),
(10, 'Samara', 'Callahan', 'consolas/empleados/samara.jpg', 'Representante de ventas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IdCategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IDcliente`);

--
-- Indices de la tabla `consolas`
--
ALTER TABLE `consolas`
  ADD PRIMARY KEY (`IdConsola`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `IdCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IDcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `consolas`
--
ALTER TABLE `consolas`
  MODIFY `IdConsola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
