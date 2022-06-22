-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2022 a las 15:22:19
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `deacero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(50) NOT NULL,
  `Np` varchar(100) NOT NULL,
  `Descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `Np`, `Descripción`) VALUES
(1, 'Alambre Galvanizado Ferretero', 'Mejor adherencia de la capa de zinc, diámetro uniforme a todo lo largo del rollo. Rollos continuos y sin cortes.'),
(2, 'Alambre Presfuerzo', 'Es un alambre de acero de alto carbono sometido a un proceso térmico relevado de esfuerzos y baja relajación, con las propiedades adecuadas para la fabricación de viguetas.\r\n\r\n'),
(3, 'Alambre Recocido para Construcción', 'Alambre hecho con acero en acabado negro que se utiliza tanto en la construcción como en diversos procesos industriales para múltiples tareas.'),
(4, 'Alambrón para Construcción', 'Alambrón de acero al carbón y sin tratamiento que se utiliza en la industria de la construcción para formar figuras de acero de refuerzo.'),
(5, 'Alambrón para Trefilar', 'Alambrón de acero al carbón que se utiliza para fabricar otros alambres con acabados y usos específicos dentro de un proceso industrial determinado.'),
(6, 'Ángulos Comerciales', 'Figura angular de acero con lados iguales o desiguales adaptable a diversos usos en función de su espesor y propiedades mecánicas.'),
(7, 'Ángulos Estructurales', 'Figura angular de acero con lados iguales o desiguales adaptable a diversos usos en función de su espesor y propiedades mecánicas.'),
(8, 'Cadena Galvanizada por Inmersión', 'Cadenas formadas en frio, fabricadas con acero, cada uno de sus eslabones es electro soldado uniéndolos entre sí, posee un acabado galvanizado por inmersión en caliente para mayor resistencia en condiciones de salinidad.'),
(9, 'Canastilla Pasajuntas', 'Barras de acero con canastilla metálica de soporte. Barras de acero redondo liso y acabado pulido, con un corte preciso de sus extremos que no deja rebaba y permite el movimiento longitudinal de la barra'),
(10, 'Concertina', 'Cintilla metálica galvanizada en forma helicoidal con alma de alambre de acero de alta resistencia que cuenta con navajas altamente punzocortantes que sirven como protección complementaria para cualquier tipo de malla, muros y diversas áreas vulnerables en donde se requiera una protección extrema.'),
(11, 'Malla Soldada 44 Y 66', 'Malla cuadricular soldada en sus puntos de cruce que ejerce como acero de refuerzo para concreto sustituyendo a las varillas tradicionales grado 42.'),
(12, 'Barrera de Cables', 'Sistema compuesto por cuatro lineas de cables que absorben y disipan progresivamente la inercia del vehículo, impidiendo que rebote hacia otros carriles vehiculares.\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto1`
--

CREATE TABLE `producto1` (
  `id_producto` int(50) NOT NULL,
  `Np` varchar(100) NOT NULL,
  `cantidad` float NOT NULL,
  `costo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto1`
--

INSERT INTO `producto1` (`id_producto`, `Np`, `cantidad`, `costo`) VALUES
(1, 'Alambre Galvanizado Ferretero', 2500, 1504.68),
(2, 'Alambre Presfuerzo	', 4567, 60000),
(3, 'Alambre Recocido para Construcción	', 10, 15500),
(4, 'Alambrón para Construcción	', 600, 80000),
(5, 'Alambrón para Trefilar	', 50, 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto2`
--

CREATE TABLE `producto2` (
  `id_producto` int(11) NOT NULL,
  `Np` varchar(100) NOT NULL,
  `cantidad` float NOT NULL,
  `costo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto2`
--

INSERT INTO `producto2` (`id_producto`, `Np`, `cantidad`, `costo`) VALUES
(6, 'Ángulos Comerciales', 671, '16789'),
(7, 'Ángulos Estructurales	', 600, '7000'),
(8, 'Cadena Galvanizada por Inmersión	', 100, '6000'),
(9, 'Canastilla Pasajuntas	', 80, '20000'),
(10, 'Concertina	', 6, '1500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `N_producto` varchar(100) NOT NULL,
  `Cantidad` float NOT NULL,
  `salida` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(50) NOT NULL,
  `llave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `llave`) VALUES
('juan@gmail.com', 'bear'),
('juan', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
