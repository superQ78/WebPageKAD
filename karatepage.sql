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