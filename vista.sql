CREATE VIEW vista1
AS SELECT 
idAlumno,
EdadAlingreso,
Sexo, 
Egresado, 
Titulo,
MesesDesdeIngreso, 
MAX(Calificacion) as Calificacion
FROM consulta
WHERE Titulo in (SELECT Titulo FROM consulta
GROUP BY Titulo
HAVING COUNT(*) > 1);

CREATE VIEW vista2
AS SELECT 
idAlumno,
EdadAlingreso,
Sexo, 
Egresado, 
Titulo,
MesesDesdeIngreso, 
Calificacion
FROM consulta
WHERE Titulo in (SELECT Titulo FROM consulta
GROUP BY Titulo
HAVING COUNT(*) = 1);

CREATE VIEW vista3
as SELECT idAlumno, EdadAlingreso, Sexo, Egresado, Titulo, MesesDesdeIngreso, Calificacion FROM vista1
WHERE idAlumno is not null
union all
SELECT idAlumno, EdadAlingreso, Sexo, Egresado, Titulo, MesesDesdeIngreso, Calificacion FROM vista2
WHERE idAlumno is not null;

SELECT * FROM tienda.vista3;
