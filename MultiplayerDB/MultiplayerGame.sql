CREATE TABLE Usuarios (
  usuario_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre_usuario VARCHAR(50) NOT NULL,
  correo_electronico VARCHAR(100) NOT NULL,
  contraseña VARCHAR(50) NOT NULL,
  nivel_de_experiencia INT NOT NULL
);

CREATE TABLE Tiempos (
  tiempo_id INT AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT NOT NULL,
  tiempo TIME NOT NULL,
  fecha DATE NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);


CREATE TABLE Carreras (
  carrera_id INT AUTO_INCREMENT PRIMARY KEY,
  ubicacion VARCHAR(100) NOT NULL,
  nivel_de_dificultad INT NOT NULL,
  duracion_de_la_carrera TIME NOT NULL
);

CREATE TABLE Clasificaciones (
  clasificacion_id INT AUTO_INCREMENT PRIMARY KEY,
  carrera_id INT NOT NULL,
  usuario_id INT NOT NULL,
  tiempo TIME NOT NULL,
  fecha DATE NOT NULL,
  FOREIGN KEY (carrera_id) REFERENCES Carreras(carrera_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id)
);

CREATE TABLE Usuarios_Carreras (
  usuario_id INT NOT NULL,
  carrera_id INT NOT NULL,
  PRIMARY KEY (usuario_id, carrera_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
  FOREIGN KEY (carrera_id) REFERENCES Carreras(carrera_id)
);