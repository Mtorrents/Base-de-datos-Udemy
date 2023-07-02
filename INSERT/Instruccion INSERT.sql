-- Uso la base de datos curso
Use curso;

-- Ejemplo 1
INSERT INTO Alumnos (Alumno_Nombre) VALUES ('Pedro Narvaja');

-- Ejemplo 2
INSERT INTO Productos (Prod_Descripcion) VALUES ('Mesa y 4 sillas');

-- Ejemplo 3
INSERT INTO Productos (Prod_Descripcion, Prod_Color) VALUES ('MESA','Blanco');

-- Ejemplo 4
INSERT INTO Productos (Prod_Descripcion, Prod_Color, Prod_Precio) VALUES ('MESA','Blanco', 100.50);