CREATE TABLE Alumnos (
	idAlumno INT NOT NULL AUTO_INCREMENT,
    EdadActual INT NOT NULL,
    Sexo ENUM('M', 'F') DEFAULT NULL,
    FechaIngreso DATE DEFAULT NULL,
    Egresado ENUM('si', 'no') DEFAULT NULL,
    PRIMARY KEY (idAlumno)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Asignaturas (
	idAsignatura INT NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(45) DEFAULT NULL,
    CargaHoraria INT NOT NULL,
    Año INT NOT NULL,
    PRIMARY KEY (idAsignatura)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Calificaciones (
	idCalificaciones INT NOT NULL AUTO_INCREMENT,
    idAlumno INT NOT NULL,
    idAsignatura INT NULL,
    Fecha DATE DEFAULT NULL,
    Calificacion INT NOT NULL,
    PRIMARY KEY (idCalificaciones),
    FOREIGN KEY (idAlumno) REFERENCES Alumnos(idAlumno),
    FOREIGN KEY (idAsignatura) REFERENCES asignaturas(idAsignatura)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
