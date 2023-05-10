CREATE DATABASE dio

USE dio

CREATE TABLE Usuarios (
  usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  usuario_nombre  VARCHAR(50) UNIQUE NOT NULL ,
  usuario_email  VARCHAR(100) UNIQUE NOT NULL,
  usuario_password VARCHAR(50) NOT NULL,
  usuario_nivel INT NOT NULL
);

CREATE TABLE Pistas(
	pista_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	pista_nombre VARCHAR(255) NOT NULL,
	pista_dificultad ENUM ('1','2','3','4','5') NOT NULL
);

CREATE TABLE Carreras (
carrera_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_id INT UNSIGNED,
second_id INT UNSIGNED,
third_id INT UNSIGNED,
pista_id INT UNSIGNED,
carrera_tiempo_fecha DATETIME NOT NULL,
carrera_duracion TIME NOT NULL,
FOREIGN KEY (pista_id) REFERENCES pistas(pista_id),
FOREIGN KEY (first_id) REFERENCES Usuarios(usuario_id),
FOREIGN KEY (second_id) REFERENCES Usuarios(usuario_id),
FOREIGN KEY (third_id) REFERENCES Usuarios(usuario_id)
);

SHOW TABLES
