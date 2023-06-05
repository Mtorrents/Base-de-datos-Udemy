/*Clausula LEFT JOIN, RIGHT JOIN, FULL JOIN*/

-- Ejemplo LEFT JOIN
SELECT * FROM Alumnos
LEFT JOIN Cursos ON Curso_AlumnoID = Alumno_Id;

-- Ejemplo RIGHT JOIN
SELECT * FROM Alumnos
RIGHT JOIN Cursos ON Curso_AlumnoID = Alumno_Id;

-- Ejemplo FULL JOIN
SELECT * FROM Alumnos
LEFT JOIN Cursos ON Curso_AlumnoID = Alumno_Id
UNION
SELECT * FROM Alumnos
RIGHT JOIN Cursos ON Curso_AlumnoID = Alumno_Id;