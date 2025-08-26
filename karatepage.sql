CREATE TABLE Usuarios (
id INT PRIMARY KEY auto_increment,
nombre varchar(100),
usuario varchar(50),
email varchar(100),
password varchar(255)
);
CREATE TABLE `Contenido` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `descripcion` TEXT,
  `url_video` VARCHAR(255),
  `categoria` ENUM('Combate', 'Kata', 'Fisico', 'Tutoriales') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Heian Shodan Completa', 'Heian Shodan es la primera kata del estilo Shotokan...', 'dKfL_KpjUeE', 'Kata'),
('Análisis de Bassai Dai', 'Un desglose detallado de la kata Bassai Dai, perfecta para cinturones marrones...', '7sLk8GNmzuk', 'Kata'),
('Movimientos básicos de Tekki Shodan', 'Aprende los movimientos de lado a lado de la kata Tekki Shodan...', 'zNzh-_t2ZCc', 'Kata');
select*from contenido;
INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Movimientos de combate', 'Este video explica los movimientos básicos para un combate efectivo, ideal para principiantes.', 'bUfn3RmOUVo', 'Combate');

INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Técnicas de sparring', 'Aprende las mejores técnicas de sparring para mejorar tu velocidad y precisión en el combate.', 'yRiYEZkb6O8', 'Combate');

INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Defensas en combate', 'Descubre cómo defenderte de los ataques más comunes y mantenerte seguro durante una pelea.', '2G8Sfl2aksA', 'Combate');

INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Fuerza y potencia en karate', 'Descubre por qué la fuerza y la potencia son cruciales para lograr golpes contundentes y movimientos explosivos. Este video te guiará a través de ejercicios específicos.', '4gN8GgWkECA', 'Fisico');

INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Resistencia para kumite', 'La resistencia es fundamental para mantener el rendimiento durante un combate. Aprende ejercicios de acondicionamiento físico para mejorar tu capacidad cardiovascular y aguantar más rounds.', 'B6n3N01r5lA', 'Fisico');

INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Flexibilidad para patadas altas', 'La flexibilidad no solo previene lesiones, sino que también es clave para ejecutar patadas altas y técnicas complejas. Este video te muestra estiramientos esenciales.', 'E-758yT6J68', 'Fisico');

INSERT INTO Contenido (titulo, descripcion, url_video, categoria) VALUES
('Heian Shodan Completa desde Google Drive', 'Kata de Bronce Universitario.', '1pRVZEOEfZHCK6PY6-1LSzis-OnmvmWCj', 'Kata');

UPDATE Contenido
SET url_video = '1eIQaXrrBMUnJxnEgFr3BY4JeDchrm5v7'
WHERE titulo = 'Defensas en combate' AND categoria = 'Combate';

UPDATE Contenido
SET url_video = '1aspsp5fxsTGzom-8rJy6KwBW5cE0ZEVt'
WHERE titulo = 'Técnicas de combate' AND categoria = 'Combate';

UPDATE Contenido
SET url_video = '1BEJD1o3J7vm-w8Uo1lUcnNe9jR1_DWlO'
WHERE titulo = 'Movimientos de combate' AND categoria = 'Combate';