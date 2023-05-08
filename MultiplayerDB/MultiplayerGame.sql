CREATE DATABASE dio

USE dio

CREATE TABLE Usuarios (
  usuario_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  usuario_nombre  VARCHAR(50) UNIQUE NOT NULL ,
  usuario_email  VARCHAR(100) UNIQUE NOT NULL,
  usuario_contraseña VARCHAR(50) NOT NULL,
  usuario_nivel INT NOT NULL
);

ALTER TABLE Usuarios ADD COLUMN usuario_password VARCHAR(50) NOT NULL;
ALTER TABLE Usuarios DROP COLUMN usuario_contraseña;

SELECT * FROM usuarios;

CREATE TABLE Pistas(
	pista_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	pista_nombre VARCHAR(255) NOT NULL,
	pista_dificultad ENUM ('1','2','3','4','5') NOT NULL
);

CREATE TABLE Carreras (
  carrera_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  pista_id INT UNSIGNED,
  carrera_tiempo_fecha DATETIME NOT NULL,
  carrera_duracion TIME NOT NULL,
  FOREIGN KEY (pista_id) REFERENCES pistas(pista_id)
);

CREATE TABLE Clasificaciones (
  clasificacion_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  carrera_id INT UNSIGNED NOT NULL,
  usuario_id INT UNSIGNED NOT NULL,
  tiempo TIME NOT NULL,
  fecha DATE NOT NULL,
  FOREIGN KEY (carrera_id) REFERENCES Carreras(carrera_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);

CREATE TABLE carreras_x_usuario(
	PRIMARY KEY (usuario_id ),
  	usuario_id INT UNSIGNED NOT NULL,
  	carrera_id INT UNSIGNED NOT NULL,
  	FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
  	FOREIGN KEY (carrera_id) REFERENCES Carreras(carrera_id)
);

CREATE TABLE usuarios_x_carrera(
	PRIMARY KEY(carrera_id),
	usuario_id INT UNSIGNED NOT NULL,
	carrera_id INT UNSIGNED NOT NULL,
	FOREIGN KEY (carrera_id) REFERENCES Carreras(carrera_id),
	FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);

SHOW TABLES
