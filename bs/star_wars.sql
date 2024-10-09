-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2024 a las 19:28:33
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

--
-- Volcado de datos para la tabla `especie`
--

INSERT INTO `especie` (`id`, `nombre`) VALUES
(1, 'Humano'),
(2, 'Yoda\\\'s species'),
(3, 'Zabrak'),
(4, 'Droide'),
(5, 'Togruta'),
(6, 'Wookiee'),
(7, 'Twi\'lek '),
(8, 'Hutt  '),
(9, 'Mon Calamari'),
(10, 'Ewok  ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `naves`
--

CREATE TABLE `naves` (
  `id` int(11) NOT NULL,
  `sistema_navegacion` varchar(100) NOT NULL,
  `coste` varchar(100) NOT NULL,
  `fabricante` varchar(100) NOT NULL,
  `especificacion_tecnica` varchar(100) NOT NULL,
  `tamanio` varchar(100) NOT NULL,
  `faccion` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `velocidad` varchar(100) NOT NULL,
  `armamento` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen_uno` varchar(100) NOT NULL,
  `imagen_dos` varchar(100) NOT NULL,
  `nombre_naves_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `naves`
--

INSERT INTO `naves` (`id`, `sistema_navegacion`, `coste`, `fabricante`, `especificacion_tecnica`, `tamanio`, `faccion`, `tipo`, `velocidad`, `armamento`, `descripcion`, `imagen_uno`, `imagen_dos`, `nombre_naves_id`) VALUES
(1, 'HoloNavegador con actualizaciones pirata.', 'Aproximadamente 100,000 créditos.', 'Corellian Engineering Corporation.', 'Hiperimpulsor clase 0.5.', '34.75 metros.', 'Alianza Rebelde / Neutro.', 'Carguero ligero.', '0.5 (híper) / 1050 km/h (sublumínica).', '2 cañones láser, torpedos de protones.', 'La famosa Millennium Falcon es una nave de carga\r\n                                modificada, reconocida por su velocidad y maniobrabilidad excepcionales. Con un diseño\r\n                                distintivo, esta icónica nave es utilizada por Han Solo y Chewbacca. A pesar de su\r\n                                apariencia desgastada, cuenta con avances tecnológicos que la hacen competitiva en\r\n                                combate. Su capacidad para realizar viajes en el hiperespacio con rapidez la convierte\r\n                                en un recurso valioso en la lucha contra el Imperio y los enemigos de la Rebelión.', 'Halcón_Milenario.jpg', 'Halcón_Milenario-fotor-bg-remover-20240930172554.png', 1),
(2, 'Sistema de navegación estelar con computadoras de ', '150 Millones de créditos Imperiales por Unidad.', 'Kuat Drive Yards.', 'Motores hiperespaciales y Motores convencionales d', 'Más de 1,600 metros de longitud.', 'Imperio Galáctico.', 'Nave capital.', '0.75 (híper) / 60 km/h (sublumínica).', 'Antipersonal y multifuncional.', 'El X-wing es el caza estelar por excelencia de la Alianza\r\n                                Rebelde, diseñado para el combate y la formación de escuadrones. Su diseño distintivo\r\n                                presenta alas que se extienden en forma de X, lo que le otorga su nombre. Con potencia\r\n                                de fuego superior y velocidad, su capacidad para realizar maniobras ágiles lo convierte\r\n                                en el adversario perfecto contra los cazas TIE del Imperio. Ha sido crucial en varias\r\n                                batallas climáticas en la galaxia, destacando en \"La Batalla de Yavin\".', 'destructorestelar.jpg', 'destructorestelar-fotor-bg-remover-2024093017311.png', 2),
(3, 'Avanzado, integrado con el sistema de la flota.', '150,000 créditos.', 'Incom Corporation.', 'Hiperimpulsor clase 1.', '12.5 metros.', 'Alianza Rebelde / Nueva República.', 'Caza estelar.', '1.0 (híper) / 1,050 km/h (sublumínica).', '4 blásteres láser, torpedos de protones.', 'El TIE Fighter, utilizado por el Imperio Galáctico, es\r\n                                conocido por su inconfundible diseño de esferas y alas hexagonales. Aunque es rápido y\r\n                                maniobrable, carece de escudos, lo que lo hace vulnerable en combate. Su función\r\n                                principal es la de interceptor, ataques rápidos y reconocimiento, y es un símbolo del\r\n                                poder del Imperio. La masa de estos cazas en el espacio destaca el autoritarismo y la\r\n                                amenaza que representa el Imperio frente a la Rebelión.', 'cazaestelar.jpg', 'cazaestelar-fotor-bg-remover-20240930173825.png', 3),
(4, 'Básico, sin hiperimpulsor.', '40,000 créditos.', 'Sienar Fleet Systems.', 'Dos motores de iones (Twin Ion Engines).', '6.3 metros.', 'Imperio Galáctico.', 'Caza estelar.', '1.0 (híper) / 1,200 km/h (sublumínica).', 'Dos blásteres láser.', 'El Destructor Estelar es una de las naves más icónicas del\r\n                                Imperio Galáctico, temido por su tamaño y potencia de fuego. Con una longitud de 1,600\r\n                                metros, es una nave capital que sirve como buque insignia y centro de comando. Está\r\n                                diseñado para intimidar a los enemigos y posee una armada de cazas TIE, tanto para\r\n                                ataques terrestres como espaciales. Su presencia en el espacio denota la fuerza militar\r\n                                del Imperio y su capacidad para controlar la galaxia.', 'cazas-tie.webp', 'cazas-tie-fotor-bg-remover-20240930174126.png', 4),
(5, 'Avanzado, con capacidades de sigilo.', '200,000 créditos.', 'Sienar-Jaeger.', 'Capaz de entrar en hiperspacio, con un sistema de hipermotor avanzado.', '14.8 metros.', 'Primer Orden.', 'Caza estelar.', '1.0 (híper) / 1,500 km/h (sublumínica).', 'Blásteres de energía, torpedos.', 'El TIE Interceptor es una versión avanzada del TIE Fighter,\r\n                                ofreciendo mayor velocidad y agilidad. Su diseño aerodinámico y alas en forma de punta\r\n                                lo hacen más letal en combate, permitiéndole enfrentarse a cazas rebeldes con eficacia.\r\n                                Equipado con blásteres de energía y torpedos, es un favorito entre los pilotos del\r\n                                Imperio. Su papel fundamental en la batalla refuerza la imagen del Imperio como un poder\r\n                                militar formidable en la galaxia.', 'tiekylo.jpg', 'tiekylo-fotor-bg-remover-20240930174527.png', 5),
(6, 'Avanzado, con múltiples sistemas de navegación estelar.', '75,000 créditos.', 'Crest Shipwrights.', 'Motores hyperspace y motores de subluminal para viajes espaciales.', '21 metros.', 'Neutro / Cazarrecompensas.', 'Carguero / Transporte.', '0.8 (híper) / 800 km/h (sublumínica).', 'Cañones láser, lanzadores de misiles.', 'La Razor Crest es una nave de transporte de\r\n                                cazarrecompensas utilizada por Din Djarin en \"The Mandalorian\". Aunque tiene un aspecto\r\n                                robusto y desgastado, cuenta con tecnología avanzada y capacidades de combate. Sus\r\n                                múltiples compartimientos permiten el transporte de víctimas y bienes, mientras que su\r\n                                sistema de navegación le permite evitar peligros en el espacio. Esta nave emblemática se\r\n                                ha convertido en un símbolo de la independencia y el estilo de vida de los\r\n                                cazarrecompensas.', 'razorcrest.jpg', 'razorcrest-fotor-bg-remover-20240930174829.png', 6),
(7, 'Avanzado, equipada con tecnología de sigilo.', '200,000 créditos.', 'Firespray-31.', 'Generalmente operada por un solo piloto (Boba Fett)', '21.5 metros.', 'Neutro / Cazarrecompensas.', 'Nave de caza.', '0.6 (híper) / 1,200 km/h (sublumínica).', 'Blásteres láser, misiles.', 'La Slave I es una nave icónica perteneciente a los\r\n                                cazarrecompensas Jango y Boba Fett. Su diseño distintivo y su capacidad para volar en\r\n                                múltiples orientaciones la hacen única. Equipado con tecnología avanzada de sigilo, es\r\n                                ideal para misiones de infiltración y captura. La potencia de su armamento, que incluye\r\n                                blásteres láser y misiles, la convierte en un formidable oponente en la batalla. Es un\r\n                                símbolo de la astucia y el ingenio de sus pilotos.', 'slave1.webp', 'slave1-fotor-bg-remover-2024093017522.png', 7),
(8, 'Avanzado con tecnología de interdicción.', '175.000.000 créditos.', 'Kuat Drive Yards.', 'Sistemas de escudos que protegen la nave de ataques y daños.', '1,600 metros.', 'Imperio Galáctico.', 'Nave capital.', '0.75 (híper) / 60 km/h (sublumínica).', 'Cañones Turbo Laser, Cañones de Defensa, Proyectores de Campo Gravitacional.', 'El Destructor Estelar Interdictor es una formidable nave\r\n                                capital utilizada por el Imperio para interrumpir los viajes hiperespaciales de las\r\n                                naves enemigas. Con un diseño similar al del Destructor Estelar convencional, está\r\n                                equipada con generadores de interdicción que generan campos gravitacionales, obligando a\r\n                                las naves a salir del hiperespacio. Su rol clave en las tácticas imperialistas la\r\n                                convierte en un pilar del dominio galáctico, reflejando la estrategia de control militar\r\n                                del Imperio.', 'interdictor.jpg', 'interdictor-fotor-bg-remover-20240930175435.png', 8),
(9, 'Sistema de navegación estelar.', '100,000 créditos.', 'Corellian Engineering Corporation.', 'Motores hiperspacial, Motores de subluz', '150 metros.', 'Alianza Rebelde.', 'Naves de transporte.', '0.6 (híper) / 800 km/h (sublumínica).', 'Blásteres láser.', 'El Tantive IV es una nave de transporte utilizada por la\r\n                                Alianza Rebelde, famosa por su papel en \"Una nueva esperanza\". Con un diseño elegante y\r\n                                ligero, es utilizada para misiones de diplomacia y transporte de información esencial.\r\n                                Aunque está equipada para la defensa, su velocidad es su mayor ventaja. La nave\r\n                                simboliza la lucha de la Rebelión y su búsqueda por la libertad en una galaxia dominada\r\n                                por el Imperio, siendo un icono de la resistencia.', 'MP-Tantive.webp', 'MP-Tantive-fotor-bg-remover-2024093017579.png', 9),
(10, 'Sistema estelar modificado.', '365.000 créditos imperiales.', 'Cañón Starfighter.', 'Transporte de la tripulación, actividades de contrabando', '16 metros.', 'Alianza Rebelde.', 'Caza estelar.', '1.0 (híper) / 1,000 km/h (sublumínica).', 'Blásteres láser, torpedos.', 'El Fantasma es una nave estelar utilizada por la\r\n                                tripulación de \"Star Wars Rebels\". Con un diseño distintivo y capacidades de\r\n                                ocultamiento, es multifuncional, sirviendo tanto para combate como para transporte. La\r\n                                nave es un símbolo de la lucha por la libertad y la resistencia contra el Imperio. Con\r\n                                una tripulación diversa de héroes rebeldes, el Fantasma se convierte en un refugio\r\n                                seguro y un punto de partida para misiones audaces en la galaxia.', 'espiritu.webp', 'espiritu-fotor-bg-remover-202409301841.png', 10),
(11, 'Avanzado, integrado.', '150,000 créditos.', 'Koensayr Manufacturing.', 'Tripulación 2 (piloto y artillero)', '16.9 metros.', 'Alianza Rebelde.', 'Bombardero.', '1.0 (híper) / 1,000 km/h (sublumínica).', 'Cañones láser, torpedos de protones.', 'El Y-Wing es un bombardero estelar muy utilizado por la\r\n                                Alianza Rebelde durante la Guerra Civil Galáctica. Su robustez y capacidad de carga lo\r\n                                hacen ideal para misiones de asalto y bombardeo en combate. Equipado con tecnología\r\n                                avanzada, su diseño es óptimo para la resistencia y el sacrificio. A pesar de ser\r\n                                considerado menos ágil que otros cazas, su fiabilidad y potencia de fuego lo hacen\r\n                                crucial en batallas decisivas, simbolizando el espíritu de lucha de la Rebelión.', 'y-wing.jpg', 'y-wing-fotor-bg-remover-2024093018647.png', 11),
(12, 'Standard de la época.', '90,000 créditos.', 'Incom Corporation.', 'Motores hiperspacial, Motores de subluz.', '11.5 metros.', 'Nueva República.', 'Caza estelar.', '1.7 (híper) / 1,050 km/h (sublumínica).', 'Cañones láser, torpedos de protones.', 'El Ala-B es un moderno caza estelar utilizado por la Nueva\r\n                                República, diseñado para mejorar las capacidades de combate. Con un diseño ágil, cuenta\r\n                                con un sistema de navegación avanzado y armamento letal, incluyendo cañones láser y\r\n                                torpedos. Usado por pilotos experimentados, combina velocidad y potencia de fuego en un\r\n                                paquete compacto. Esta nave se ha destacado en misiones clave, reflejando la evolución y\r\n                                adaptación de la Nueva República en su lucha por la paz y seguridad en la galaxia.', 'ala-b2.jpg', 'ala-b2-fotor-bg-remover-20240930181056.png', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nombre_naves`
--

CREATE TABLE `nombre_naves` (
  `id` int(11) NOT NULL,
  `nombre` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nombre_naves`
--

INSERT INTO `nombre_naves` (`id`, `nombre`) VALUES
(1, 'Halcón Milenario'),
(2, 'Súper Destructor Estelar'),
(3, 'Caza estelar Ala-X'),
(4, 'Caza estelar TIE'),
(5, 'Silenciador TIE de Kylo Ren'),
(6, 'Razor Crest'),
(7, 'Slave I'),
(8, 'Destructor Estelar Interdictor'),
(9, 'Tantive IV'),
(10, 'El Fantasma'),
(11, 'Y-Wing'),
(12, 'Ala-B');

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
  `estreno` varchar(100) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `recaudacion` varchar(100) NOT NULL,
  `personajes_principales` text NOT NULL,
  `reparto` text NOT NULL,
  `director` varchar(100) NOT NULL,
  `produccion` varchar(100) NOT NULL,
  `guion` varchar(100) NOT NULL,
  `musica` varchar(100) NOT NULL,
  `fotografia` varchar(100) NOT NULL,
  `montaje` varchar(100) NOT NULL,
  `vestuario` varchar(100) NOT NULL,
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
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `afiliacion` varchar(100) NOT NULL,
  `planeta _ natal` varchar(100) NOT NULL,
  `habilidades` varchar(100) NOT NULL,
  `arma` varchar(100) NOT NULL,
  `actor` varchar(100) NOT NULL,
  `imagen_uno` varchar(100) NOT NULL,
  `imagen_dos` varchar(100) NOT NULL,
  `especie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `descripcion`, `afiliacion`, `planeta _ natal`, `habilidades`, `arma`, `actor`, `imagen_uno`, `imagen_dos`, `especie_id`) VALUES
(1, 'Darth Vader', 'Darth Vader, antes conocido como Anakin Skywalker, fue un Jedi prodigioso que sucumbió al lado oscuro de la Fuerza. Como aprendiz del Emperador Palpatine, se convirtió en uno de los más temidos señores Sith de la galaxia. A pesar de su caída, la redención de Vader llegó a través de su hijo, Luke, a quien ayudó a destruir al Emperador antes de morir, cumpliendo la profecía que lo había destinado a traer equilibrio a la Fuerza.', 'Imperio Galáctico', 'Tatooine', 'Combate con sable de luz', 'Sable de luz', 'James Earl Jones', 'dark6.webp', 'dark6-fotor-bg-remover-20240911103438.png', 1),
(2, 'Yoda', 'Yoda es uno de los maestros Jedi más sabios y poderosos en la historia de la Orden Jedi. Durante siglos, Yoda formó a generaciones de Jedi en el uso de la Fuerza, y fue una figura central en los acontecimientos que llevaron a la caída de la República y la ascensión del Imperio. Aunque pequeño en tamaño, Yoda es temido por sus enemigos y respetado por sus aliados por su dominio de la Fuerza y su habilidad en el combate con sable de luz.', 'Orden Jedi', 'Desconocido', 'Uso de la Fuerza', 'Sable de luz', 'Frank Oz', 'yoda.webp', 'Yoda-fotor-bg-remover-20240911104135.png', 2),
(3, 'Darth Maul', 'Darth Maul fue el primer aprendiz de Darth Sidious y uno de los guerreros Sith más temidos de la galaxia. Con su característico sable de luz doble y su dominio del combate, Maul casi destruyó a la Orden Jedi al asesinar al Maestro Qui-Gon Jinn. Aunque se creyó que había muerto, Maul sobrevivió a su derrota y continuó sembrando el caos en la galaxia, persiguiendo venganza contra Obi-Wan Kenobi y los Jedi.', 'Imperio Galáctico', 'Dathomir', 'Combate con sable de luz', 'Sable de luz', 'Ray Park ', 'dark-maul.jpg', 'dark-maul-fotor-bg-remover-20240911112150.png', 3),
(4, 'Palpatine', 'Palpatine, también conocido como Darth Sidious, es un poderoso Sith y una figura clave en la saga de Star Wars. Desde su posición como Senador de Naboo, manipula eventos políticos para alcanzar el poder total, convirtiéndose en Canciller y finalmente en Emperador. Su astucia y habilidades en la Fuerza le permiten manipular a otros, creando el Imperio Galáctico y exterminando a los Jedi.', 'Imperio Galáctico', 'Naboo', 'Maestría en la Fuerza, manipulación, estrategia política.', 'Sable de luz', 'Ian McDiarmid', 'emperador.jpg', 'Emperor_Palpatine_GA-fotor-bg-remover-20240911161957.png', 1),
(5, 'C-3PO', 'C-3PO es un droide de protocolo especializado en traducción y etiqueta, conocido por su fluidez en más de seis millones de formas de comunicación. Aunque a menudo es visto como nervioso y preocupado, C-3PO ha sido crucial en muchas misiones diplomáticas y de combate. A lo largo de los años, ha acompañado a figuras clave de la Alianza Rebelde y de la resistencia, y ha demostrado ser un miembro invaluable en la lucha por la libertad galáctica.', 'Rebel Alliance', 'Tatooine', 'Protocolo ', 'N/A', 'Anthony Daniels', 'c-3po.jpg', 'c-3po-fotor-bg-remover-20240911111039.png', 4),
(6, 'Luke Skywalker', 'Luke Skywalker es un caballero Jedi legendario que desempeñó un papel fundamental en la derrota del Imperio Galáctico. Nacido como el hijo de Anakin Skywalker y Padmé Amidala, Luke fue criado en el planeta desértico Tatooine. Con el tiempo, se convirtió en un poderoso Jedi bajo la tutela de Obi-Wan Kenobi y Yoda, luchando contra su propio padre, Darth Vader, y el Emperador Palpatine para restaurar la paz en la galaxia.', 'Rebel Alliance', 'Tatooine', 'Uso de la Fuerza', 'Sable de luz', 'Mark Hamill', 'luke.jpg', 'LukeSkywalker-fotor-bg-remover-2024091116553.png', 1),
(7, 'R2-D2', 'R2-D2 es un droide astromecánico altamente ingenioso y valiente que ha sido testigo de muchos de los eventos más importantes en la historia galáctica. Desde servir a la Reina Amidala hasta ayudar en la destrucción de la Estrella de la Muerte, R2-D2 ha demostrado ser un héroe en numerosas ocasiones. Su habilidad para interactuar con sistemas tecnológicos y su lealtad a sus dueños lo han convertido en uno de los droides más confiables de la galaxia.', 'Rebel Alliance', 'Desconocido', 'Reparación de naves', 'N/A', 'Kenny Baker', 'r2-d2-fondo.jpg', 'r2-d2-fotor-bg-remover-20240911164931.png', 4),
(8, 'Leia Organa', 'Leia Organa es la princesa de Alderaan y una líder clave en la Alianza Rebelde. Como hija de Anakin Skywalker y hermana gemela de Luke, Leia es también fuerte en la Fuerza, aunque fue entrenada principalmente como diplomática y estratega. Su valentía y determinación fueron cruciales en la lucha contra el Imperio, y posteriormente, en la resistencia contra la Primera Orden. También es conocida por su espíritu indomable y sus habilidades como comandante.', 'Rebel Alliance', 'Alderaan', 'Diplomacia', 'Blaster', 'Carrie Fisher', 'leia-star-wars-8-1532775543.jpg', 'leia-star-wars-8-1532775543-fotor-bg-remover-2024091117453.png', 1),
(9, 'Han Solo', 'Han Solo es un contrabandista que se unió a la Rebelión tras ser convencido por Luke y Leia. Pilotando el icónico Halcón Milenario junto a su leal compañero Wookiee, Chewbacca, Han jugó un papel vital en la destrucción de la Estrella de la Muerte y en la victoria contra el Imperio. A pesar de su actitud inicialmente cínica, Han demostró ser un héroe con un gran corazón, y eventualmente se convirtió en el esposo de Leia Organa y padre de Ben Solo.', 'Rebel Alliance', 'Corellia', 'Pilotaje', 'Blaster', 'Harrison Ford', 'handsolo.jpg', 'handsolo-fotor-bg-remover-20240911171921.png', 1),
(10, 'Obi-Wan Kenobi', 'Obi-Wan Kenobi es un legendario Maestro Jedi, conocido por su papel en la formación de Anakin Skywalker y posteriormente de su hijo, Luke. Nacido en el planeta Stewjon, Obi-Wan fue un fiel seguidor del Código Jedi, pero también mostró compasión y sabiduría más allá de lo común. Su duelo final con Anakin lo llevó al exilio en Tatooine, donde vigiló a Luke hasta que llegó el momento de entrenarlo en los caminos de la Fuerza.', 'Orden Jedi', 'Stewjon', 'Combate con sable de luz', 'Sable de luz', 'Ewan McGregor', 'obi-wan-kenobi-tv-series.png', 'obi-wan-kenobi-tv-series-fotor-bg-remover-20240911173258.png', 1),
(11, 'Ahsoka Tano', 'Ahsoka Tano fue la aprendiz de Anakin Skywalker, conocida por su espíritu independiente y su habilidad con los sables de luz. Aunque inicialmente comenzó como una joven impulsiva, Ahsoka maduró para convertirse en una formidable guerrera y líder. Después de abandonar la Orden Jedi, Ahsoka continuó luchando por la justicia durante la Guerra Civil Galáctica, y eventualmente se convirtió en una figura clave en la lucha contra el Imperio.', 'Orden Jedi', 'Shili', 'Combate con sable de luz', 'Sable de luz', 'Rosario Dawson', 'AhsokaTano.webp', 'Ahsoka-Tano-AG-2023-fotor-bg-remover-20240911174548.png', 5),
(12, 'Chewbacca', 'Chewbacca, un Wookiee del planeta Kashyyyk, es el fiel copiloto y amigo de Han Solo. Conocido por su gran fuerza física y su lealtad inquebrantable, Chewbacca ha sido un valioso miembro de la Alianza Rebelde, participando en misiones cruciales para la liberación de la galaxia. Aunque no habla el idioma común, su capacidad para entender a sus amigos humanos y su habilidad en combate lo convierten en un aliado invaluable.', 'Rebel Alliance', 'Kashyyyk', 'Pilotaje', 'Ballesta láser', 'Peter Mayhew', 'chewbacca.jpg', 'life-sized-chewbacca-statue-figure-1-fotor-bg-remover-20240911175322.png', 6),
(13, 'Anakin Skywalker', 'Anakin Skywalker, conocido como el Elegido, es un Jedi excepcional que se convierte en el temido Sith, Darth Vader. Su historia es trágica: desde su niñez como esclavo en Tatooine, su entrenamiento con Obi-Wan Kenobi, hasta su caída hacia el lado oscuro, es un viaje de redención y pérdida. Anakin lucha constantemente con su destino y las expectativas que los demás tienen de él.', 'Jedi, luego Imperio Galáctico', 'Tatooine', 'Piloto excepcional, maestro de la Fuerza, combate con sable de luz', 'Sable de luz', 'Hayden Christensen', 'Anakin_Skywalker_RotS.webp', 'anakin44-fotor-bg-remover-202409258543.png', 1),
(14, 'Aayla Secura', 'Aayla Secura es una Jedi Twi\'lek conocida por su valentía y destreza en el combate. Es aprendiz de Ki-Adi-Mundi y se convierte en una destacada líder durante las Guerras Clónicas. Reconocida por su habilidad con el sable de luz y su agilidad, Aayla también tiene un fuerte sentido de la justicia y una profunda conexión con la Fuerza, que utiliza para proteger a los inocentes.', 'Orden Jedi', 'Ryloth', 'Combate con sable de luz, agilidad, conexión con la Fuerza', 'Sable de luz', 'Amy Allen', 'aayla.jpg', 'aayla-fotor-bg-remover-20240924141530.png', 7),
(15, 'Mara Jade Skywalker', 'Mara Jade, una exasesina del Emperador, se convierte en un Jedi y es la esposa de Luke Skywalker. Su historia comienza como la mano del Emperador, pero su vida cambia drásticamente tras la caída del Imperio. Con una fuerte conexión a la Fuerza y habilidades en combate, Mara busca redimirse y convertirse en un símbolo de esperanza, enfrentándose a sus demonios internos y los peligros del pasado.', 'Nueva Orden Jedi', 'Emperor\'s Hand', 'Maestría en la Fuerza, combate, espionaje.', 'Sable de luz', 'Shannon McRandle (videojuegos, cómics, novelas, Ilustrac', 'sw-mara-jade.jpg', 'sw-mara-jade-fotor-bg-remover-20240924142035.png', 1),
(16, 'Mace Windu', 'Mace Windu fue uno de los miembros más destacados del Consejo Jedi, conocido por su sabiduría y habilidad en el combate. Con su característico sable de luz púrpura, Mace fue un maestro espadachín y un líder respetado dentro de la Orden. Fue uno de los pocos Jedi que desafió abiertamente al Canciller Palpatine, lo que lo llevó a un fatídico enfrentamiento que resultó en su muerte y el inicio de la purga Jedi.', 'Orden Jedi', 'Haruun Kal', 'Combate con sable de luz', 'Sable de luz', 'Samuel L. Jackson', 'mace.jpg', 'mace-fotor-bg-remover-20240924143351.png', 1),
(17, 'Jabba el Hutt', 'Jabba el Hutt es un infame gánster del crimen galáctico, conocido por su influyente poder y su repugnante apariencia. Reside en el desierto de Tatooine y controla un vasto imperio criminal, involucrándose en actividades ilegales que van desde el contrabando hasta la esclavitud. Su naturaleza manipuladora y despiadada lo convierte en un formidable adversario. Jabba es un símbolo de la corrupción que alimenta el submundo galáctico.', 'Ninguna (criminal)', 'Nal Hutta', 'Manipulación, estrategia criminal, intimidación', 'Poder político y su propio palacio como fortaleza', 'Declan Mulholland (como la versión original) y el muñeco', 'jabba2.jpg', 'jabba2-fotor-bg-remover-20240924164527.png', 8),
(18, 'Bib Fortuna', 'Bib Fortuna es el asistente y guardaespaldas de Jabba el Hutt, caracterizado por su apariencia de Twi\'lek y su comportamiento servil. Actúa como el enlace entre Jabba y sus subordinados, gestionando el negocio criminal del gánster. Fortuna es astuto y servicial, pero no dudará en traicionar a aquellos que amenacen su posición. Su lealtad a Jabba es inquebrantable, pero siempre busca enriquecerse a sí mismo.', 'Jabba el Hutt', 'Ryloth', 'Manipulación, espionaje', 'Bastón o garrote', 'Matthew Wood', 'big.jpg', 'big-fotor-bg-remover-20240924165314.png', 7),
(19, 'Admiral Ackbar', 'El Almirante Ackbar es un comandante de la Alianza Rebelde, un Mon Calamari conocido por su icónico grito de “¡Es una trampa!” en la batalla de Endor. Su estrategia naval y enfoque táctico lo convierten en una figura de autoridad en la lucha contra el Imperio. Ackbar es un líder carismático y firme que desempeña un papel crucial en los eventos que culminan con la caída del Imperio.', 'Alianza Rebelde', 'Mon Cala', 'Estrategia militar, liderazgo.', 'Pistola bláster', 'Tim Rose (puppet work)', 'admiral.jpg', 'admiral2-fotor-bg-remover-20240924173434.png', 9),
(20, 'Qui-Gon Jinn', 'Qui-Gon Jinn fue un Maestro Jedi no ortodoxo, conocido por su enfoque poco convencional hacia la Fuerza y su creencia en las profecías Jedi. Fue el descubridor de Anakin Skywalker, a quien creyó que era el Elegido destinado a traer equilibrio a la Fuerza. Aunque fue asesinado por Darth Maul, su legado vivió a través de su aprendiz, Obi-Wan Kenobi, y el entrenamiento de Anakin, que influiría en el destino de la galaxia.', 'Orden Jedi', 'Coruscant', 'Combate con sable de luz', 'Sable de luz', 'Liam Neeson', 'QuiGon.jpg', 'qui33-fotor-bg-remover-20240924181242.png', 1),
(21, 'Darth Bane', 'Darth Bane es conocido como el creador de la Regla de Dos, que establece que solo puede haber un Maestro y un aprendiz en la orden Sith. Su ambición lo lleva a derribar el antiguo orden de los Sith tras la derrota ante los Jedi, reformulando la filosofía Sith. Con una gran maestría en la Fuerza y habilidades combativas sobresalientes, Bane busca venganza contra los Jedi y la dominación del lado oscuro.', 'Sith', 'Apatros', 'Maestría en la Fuerza, combate, estrategia.', 'Sable de luz', 'No ha aparecido en películas.', 'darthbane34.jpg', 'darthbane34-fotor-bg-remover-20240924182758.png', 1),
(22, 'Grand Moff Tarkin', 'Wilhuff Tarkin, conocido como Gran Moff Tarkin, es un alto funcionario del Imperio Galáctico y comandante del temido Sable de la Muerte, la estación espacial de batalla. Es famoso por su crueldad y su habilidad táctica, desempeñando un papel fundamental en la destrucción de Alderaan. Su determinación y lealtad al Emperador lo convierten en un temible líder militar, conocido por aplicar el vuelo del terror para mantener el control.', 'Imperio Galáctico', 'Eriadu', 'Estrategia militar, intimidación.', 'Poder político.', 'Peter Cushing', 'grand_moff_tarkin.jpg', 'grand_moff_tarkin-fotor-bg-remover-20240924173858.png', 1),
(23, 'Conde Dooku', 'El Conde Dooku, también conocido como Darth Tyranus, es un antiguo Maestro Jedi que se convierte en un poderoso Lord Sith. Es un líder separatista durante las Guerras Clónicas, buscando poder y justicia de manera destructiva. Su elegante estilo y habilidades en combate lo hacen formidable, al tiempo que maneja la intriga política con astucia. La dualidad de su carácter refleja la tensión entre el bien y el mal.', 'Separatistas, Sith', 'Serenno', 'Maestría en la Fuerza, combate.', 'Sable de luz', 'Christopher Lee', 'dooku.jpg', 'dooku2-fotor-bg-remover-2024092419149.png', 1),
(24, 'Wicket W. Warrick', 'Wicket W. Warrick es un Ewok valiente y aventurero, conocido por su papel decisivo en la batalla de Endor. Es un guerrero astuto y estratégico, mostrando gran lealtad hacia sus amigos y su tribu. A pesar de su pequeño tamaño, Wicket es valiente y juega un papel importante en la derrota del Imperio, utilizando su ingenio y habilidades naturales en el entorno forestal de su hogar.', 'Alianza Rebelde', 'Endor', 'Combate, estrategia en selva.', 'Hacha, bolos.', 'Warwick Davis', 'Wicket3.jpg', 'Wicket3-fotor-bg-remover-20240924172924.png', 10);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `naves`
--
ALTER TABLE `naves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `nombre_naves`
--
ALTER TABLE `nombre_naves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
