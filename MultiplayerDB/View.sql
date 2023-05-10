USE dio

CREATE VIEW VistaCarreras AS
SELECT p.pista_nombre, c.carrera_duracion, c.carrera_tiempo_fecha,
    u1.usuario_nombre AS first_position, u2.usuario_nombre AS second_position, u3.usuario_nombre AS third_position
        FROM Carreras c
        JOIN Usuarios u1 ON c.first_id = u1.usuario_id
        JOIN Usuarios u2 ON c.second_id = u2.usuario_id
        JOIN Usuarios u3 ON c.third_id = u3.usuario_id
        JOIN Pistas p ON c.pista_id = p.pista_id;
        
 SELECT * FROM VistaCarreras;
 
DROP VIEW VistaCarreras;