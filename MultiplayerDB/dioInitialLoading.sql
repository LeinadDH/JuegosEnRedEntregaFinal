USE dio

INSERT INTO pistas(pista_nombre, pista_dificultad) VALUES
	('downToBasics', 1),
	('cityStreets', 2),
	('flowingCurves',3),
	('devilsPass',4);

INSERT INTO Usuarios(usuario_nombre,usuario_email,usuario_password,usuario_nivel)
VALUES 
('johnsmith', 'johnsmith@gmail.com', 'password123', 1),
('janedoe', 'janedoe@yahoo.com', 'secret321', 2),
('michaelj', 'michaelj@outlook.com', 'mydog123', 1),
('sthompson', 'sarahthompson@gmail.com', 'letmein456', 3),
('davidl', 'davidl@protonmail.com', 'iamawesome', 2),
('annar', 'annarodriguez@gmail.com', 'coolpassword', 1);

INSERT INTO Carreras(pista_id, carrera_tiempo_fecha, carrera_duracion, first_id, second_id, third_id)
VALUES 
  (1, '2023-05-08 12:00:00', '01:30:00', 1, 2, 3),
  (2, '2023-05-09 14:30:00', '02:15:00', 4, 5, 1),
  (4, '2023-05-10 15:45:00', '01:50:00', 5, 2, 6);
