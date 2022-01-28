CREATE TABLE consulta
AS SELECT 
Alumnos.idAlumno,
anios(EdadActual, FechaIngreso) AS EdadAlingreso,
Sexo, 
Egresado, 
Titulo,
meses(Fecha, FechaIngreso) AS MesesDesdeIngreso, 
Calificacion
FROM Alumnos, Calificaciones, Asignaturas
WHERE Alumnos.idAlumno = 5
AND Calificaciones.idAlumno = 5
AND Asignaturas.idAsignatura = Calificaciones.idAsignatura;

SELECT * FROM tienda.consulta;