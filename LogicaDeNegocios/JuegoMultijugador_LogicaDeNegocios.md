# Base de datos para un juego multijugador de carreras

## Listado de Entidades

**Usuarios**

- usuario_id (PK)
- nombre_usuario
- correo_electronico
- contraseña
- nivel_de_experiencia

**Tiempos**

- tiempo_id (PK)
- usuario_id (FK)
- tiempo
- fecha

**Carreras**

- carrera_id (PK)
- ubicacion
- nivel_de_dificultad
- duracion_de_la_carrera

**Clasificaciones**

- clasificacion_id (PK)
- carrera_id (FK)
- usuario_id (FK)
- tiempo
- fecha

## Relaciones

1. Un usuario puede tener varios tiempos (1 a M).
1. Una carrera puede tener varios tiempos (1 a M).
1. Un usuario puede participar en varias carreras (M a M).
1. Una carrera puede tener varias clasificaciones (1 a M).
1. Un usuario puede tener varias clasificaciones (1 a M).

## Diagrama
**Modelo Entidad-Relación**

![Modelo Entidad - Relación](Img/Entidad_Relacional.png)

## Reglas de negocio

**Usuarios**

1. Crear un usuario.
1. Leer todos los usuarios.
1. Leer un usuario en particular.
1. Actualizar un usuario.
1. Eliminar un usuario.

**Tiempos**

1. Crear un tiempo.
1. Leer todos los tiempos.
1. Leer los tiempos de un usuario en particular.
1. Leer los tiempos de una carrera en particular.
1. Actualizar un tiempo.
1. Eliminar un tiempo.

**Carreras**

1. Crear una carrera.
1. Leer todas las carreras.
1. Leer una carrera en particular.
1. Actualizar una carrera.
1. Eliminar una carrera.

**Clasificaciones**

1. Crear una clasificación.
1. Leer todas las clasificaciones.
1. Leer las clasificaciones de una carrera en particular.
1. Leer las clasificaciones de un usuario en particular.
1. Actualizar una clasificación.
1. Eliminar una clasificación.

## Validación

**Usuarios**

1. El correo electrónico del usuario debe ser válido y único.
1. La contraseña del usuario debe tener al menos 8 caracteres y contener una combinación de letras, números y símbolos.

**Tiempos**

1. El tiempo debe ser un valor numérico positivo.
1. La fecha debe estar en el formato "AAAA-MM-DD".

**Carreras**

1. La ubicación de la carrera no debe estar vacía.
1. El nivel de dificultad de la carrera debe estar en una escala de 1 a 5.
1. La duración de la carrera debe ser un valor numérico positivo.

**Clasificaciones**

1. El tiempo debe ser un valor numérico positivo.
1. La fecha debe estar en el formato "AAAA-MM-DD".