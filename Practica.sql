CREATE DATABASE primer_db; /* Crea la base de datos */

SHOW DATABASES;

USE primer_db; /*  Usa la base de datos indicada */

SHOW TABLES;

/* Permite crear la tabla segun la informacion que necesitamos manejar */
CREATE TABLE primer_tabla(
    id_libro INT NOT NULL AUTO_INCREMENT,
    nombre_libro VARCHAR(30) NOT NULL,
    precio_libro FLOAT,
    PRIMARY KEY (id_libro)
);

SHOW TABLES;

/* Describe la tabla indicada */
DESCRIBE primer_tabla;

/*Muestra TODO(*) el contenido de la tabla indicada*/
SELECT * FROM primer_tabla;

/* Inserta un registro en la tabla indicada */
INSERT INTO primer_tabla (nombre_libro, precio_libro) VALUES ("Elantris", 2.000);

INSERT INTO primer_tabla (nombre_libro, precio_libro) VALUES ("Mistborn", 18.000);

INSERT INTO primer_tabla (nombre_libro, precio_libro) VALUES ("El Aliento de los dioses", 4.000);

INSERT INTO primer_tabla (nombre_libro, precio_libro) VALUES ("El archivo de las tormentas", null );

/*Seleccionar informacion de una tabla*/
SELECT * FROM primer_tabla;

SELECT nombre_libro FROM primer_tabla;

SELECT nombre_libro, precio_libro FROM primer_tabla;

SELECT * FROM primer_tabla WHERE id_libro = 2;

SELECT * FROM primer_tabla WHERE id_libro = 7;

SELECT * FROM primer_tabla LIMIT 3;

/* Actualiza un registro con nueva informacion */
UPDATE primer_tabla SET nombre_libro = “Elantris agotado”, precio_libro = 0.0 WHERE id_libro =  1;

/* Elimina un registro DONDE el id sea el correspondiente */
DELETE FROM primer_tabla WHERE id_libro = 2;

INSERT INTO primer_tabla (nombre_libro, precio_libro) VALUES ("Mistborn", 123.4);

SELECT * FROM primer_tabla;