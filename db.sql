-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 17:45:05
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
-- Base de datos: `canciones`
--

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

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`idArtista`, `nombre`, `apellido`, `banda`) VALUES
(1, 'Gustavo', 'Cerati', 'Soda Stereo'),
(2, 'Charly', 'Garcia', 'Sue Generis'),
(3, 'Indio', 'Solari', ''),
(4, 'Carlos', 'Guastavino', ''),
(5, 'Ariel', 'Ramirez', ''),
(6, 'Fito', 'Páez', ''),
(7, 'Astor', 'Piazzolla', ''),
(8, 'Andres', 'Calamaro', ''),
(9, 'Sergio', 'Asencio', ''),
(10, 'DeiGamer', '', '');

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`idCancion`, `titulo`, `duracion`, `lanzamiento`, `descripcion`, `genero`, `img`, `ytlink`, `idArtista`) VALUES
(1, 'Slenderman VS Jeff The Killer', '1:53', '2013-08-25', '', 'Rap', 'https://i1.sndcdn.com/artworks-000171904510-j6tl7g-t500x500.jpg', 'https://www.youtube.com/watch?v=budELM6evbc&ab_channel=DeiGamer', 10),
(2, 'Crimen', '4:10', '2006-01-01', '«Crimen» es una canción y sencillo del cantautor de Argentina Gustavo Cerati, la letra fue escrita por él mismo. Lanzada como primer sencillo promocional de su cuarto álbum de estudio Ahí vamos, publicado en el año 2006. Es una de las canciones más conocidas de su etapa como solista y uno de sus éxitos masivos. Fue elegida en 2007, como mejor canción de rock de América por los premios Grammy Latino.1​ La canción fue interpretada por Cerati en las giras musicales para promocionar los álbumes Ahí ', 'Rock', 'https://i.pinimg.com/474x/a7/7a/13/a77a13e1e56aa10fae5214874ec42e4f.jpg', 'https://www.youtube.com/watch?v=uLIs0j2WnlM&ab_channel=GustavoCeratiVEVO', 1),
(3, 'Minecraft Rap', '3:36', '2012-09-03', '', 'Rap', 'https://i.scdn.co/image/ab67616d0000b2730bc3902f0ad1c480ed02c751', 'https://www.youtube.com/watch?v=Ae4rzDsM6VM&ab_channel=DeiGamer', 10),
(4, 'Libertango', '5:44', '1974-01-01', 'Libertango es tanto un disco como un tema del compositor y músico de tango argentino Astor Piazzolla, publicado por primera vez en 1974 en Milán, y reversionado por muchos artistas diferentes. Su título es una palabra compuesta por los términos \"libertad\" y \"tango\", presumiblemente como bandera de la libertad creativa que buscaba Piazzolla al crear el llamado tango nuevo, a diferencia del tango clásico.', 'Clasica', 'https://lastfm.freetls.fastly.net/i/u/500x500/4b07678270186b50dfb5a86f79707934.jpg', 'https://www.youtube.com/watch?v=vaXNdVTGT0k&ab_channel=nasuisaidel', 7),
(5, 'Limbo Rap', '3:36', '2013-08-22', '', 'Rap', 'https://i1.sndcdn.com/artworks-000635818285-qpx80b-t500x500.jpg', 'https://www.youtube.com/watch?v=fIAK7ZA48kc&ab_channel=DeiGamer', 10),
(6, 'Tarea Fina', '3:43', '1991-01-01', '«Tarea fina» es una canción escrita por el Indio Solari junto a Skay Beilinson, e interpretada por el grupo musical de Argentina Patricio Rey y sus Redonditos de Ricota. Fue grabada para su quinto álbum de estudio titulado La mosca y la sopa, lanzado en 1991, En un análisis de la canción se puede encontrar que habla de un hombre que sufre por una mujer que lo dejó por un hombre adinerado. ', 'Clasica', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Up5bLgZhoKY4q7yOugsNNoVJRxhT0idHAw&usqp=CAU', 'https://www.youtube.com/watch?v=1_XRHtG-ll0&ab_channel=PatricioReyysusRedonditosdeRicota-Topic', 2),
(7, 'Canción de Cuna', '2:30', '1941-01-01', '\"Canción de cuna\" es una de las canciones más populares de la música clásica argentina. Es una canción de cuna tranquila y relajante que suele ser interpretada por sopranos o mezzosopranos. La letra, escrita por el propio Guastavino, es un poema sobre la belleza de la naturaleza y el amor de una madre por su hijo.', 'Clasica', 'https://m.media-amazon.com/images/I/911GaKsdLZL._SY466_.jpg', 'https://www.youtube.com/watch?v=I3DxG0REMXc&ab_channel=ZulyamirLopezr%C3%ADos', 4),
(8, 'Adiós Nonino', '5:15', '1959-01-01', '\"Adiós Nonino\" es un tango melancólico compuesto por Astor Piazzolla en honor a su abuelo. La canción es una expresión de la tristeza y el dolor del compositor por la muerte de su abuelo. La letra, escrita por Horacio Ferrer, es un poema sobre la despedida de un abuelo de su nieto.', 'Clasica', 'https://zitabs.com.ar/wp-content/uploads/2019/09/Adi%C3%B3s-Nonino-Astor-Piazzolla-PORTADA-slider.jpg', 'https://www.youtube.com/watch?v=VTPec8z5vdY&ab_channel=MarquinhoG.S.', 7),
(9, 'La Misa Criolla', '50 minutos', '1964-01-01', '\"La Misa Criolla\" es una misa sinfónica compuesta por Ariel Ramírez. La obra combina elementos de la música clásica europea con la música tradicional argentina, como el tango, el folclore y el candombe. La misa es una expresión de la fe y la cultura argentinas.', 'Clasica', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Misa_Criolla.png', 'https://www.youtube.com/watch?v=6dlXnR6SPI0&ab_channel=tuker0', 5),
(10, 'El amor después del amor', '5:15', '1992-01-01', '\"El amor después del amor\" es una de las canciones más populares del rock argentino. Es una canción de amor con un sonido épico. La letra, escrita por Fito Páez, es una expresión de la búsqueda del amor y la superación de los obstáculos.\r\n\r\n', 'Rock', 'https://m.media-amazon.com/images/I/51bMnMtY2aL.__AC_SX300_SY300_QL70_ML2_.jpg', 'https://www.youtube.com/watch?v=knvgOdKPaMQ&ab_channel=FitoPaez', 6),
(11, 'Flaca', '4:20', '1997-01-01', '\"Flaca\" es una de las canciones más melancólicas del rock argentino. Es una canción de amor con un sonido bluesy. La letra, escrita por Andrés Calamaro, es una expresión de la pérdida del amor y el dolor de la nostalg', 'Rock', 'https://guitarra-do.com/wp-content/uploads/2021/06/PDF-Flaca.jpg', 'https://www.youtube.com/watch?v=UCF9oHXhDMU&ab_channel=WarnerMusicSpain', 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
