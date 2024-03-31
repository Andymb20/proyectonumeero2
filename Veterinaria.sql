USE Veterinaria


-- Tabla para las personas
CREATE TABLE Personas (
    ID_Persona INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Persona NVARCHAR(50),
    Telefono NVARCHAR(15)
);
-- Tabla para las mascotas
CREATE TABLE Mascotas (
    ID_Mascota INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Mascota NVARCHAR(50),
    Tipo_Mascota NVARCHAR(50),
    Edad INT,
    Raza NVARCHAR(50),
    Peso DECIMAL(5,2),
    ID_Persona INT FOREIGN KEY REFERENCES Personas(ID_Persona)
);

-- Tabla para los logins
CREATE TABLE Logins (
    ID_Login INT IDENTITY(1,1) PRIMARY KEY,
    Usuario NVARCHAR(50),
    Clave NVARCHAR(50),
    Tipo_Usuario NVARCHAR(50),
    ID_Usuario INT
);

-- Tabla para las citas
CREATE TABLE Citas (
    ID_Cita INT IDENTITY(1,1) PRIMARY KEY,
    ID_Mascota INT FOREIGN KEY REFERENCES Mascotas(ID_Mascota),
    ID_Persona INT FOREIGN KEY REFERENCES Personas(ID_Persona),
    Fecha_Cita DATE
);

-- Tabla para los medicos
CREATE TABLE Medicos (
    ID_Medico INT PRIMARY KEY,
    Nombre_Medico NVARCHAR(100),
    Apellido_Medico NVARCHAR(100),
    Especialidad NVARCHAR(100)
);

INSERT INTO Medicos (ID_Medico, Nombre_Medico, Apellido_Medico, Especialidad)
VALUES 
(1, 'Andrey', 'Murillo', 'Canino, Felinos, Aves, Granja'),
(2, 'Stiven', 'Conejo', 'Canino, Roedor, Acuático'),
(3, 'Andres', 'Gutierrez', 'Reptil o Anfibio, Felinos, Aves, Roedor'),
(4, 'Benjamin', 'Curling', 'Canino, Felino, Reptil o Anfibio, Acuático');

-- Tabla para los diagnosticos
CREATE TABLE Diagnosticos (
    ID_Diagnostico INT IDENTITY(1,1) PRIMARY KEY,
    Nombre_Diagnostico NVARCHAR(50),
    Descripcion NVARCHAR(255)
);



-- Tabla para los medicamentos
CREATE TABLE Medicamentos(
    ID_Medicamento INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Descripcion NVARCHAR(255)
);

-- Insertar datos de ejemplo de medicamentos para animales
INSERT INTO Medicamentos (ID_Medicamento, Nombre, Descripcion)
VALUES 
(1, 'Nextgard', 'Prevención y tratamiento de pulgas y garrapatas'),
(2, 'Revolution', 'Prevención y tratamiento de pulgas, garrapatas, ácaros y gusanos del corazón'),
(3, 'Bravecto', 'Prevención y tratamiento de pulgas y garrapatas'),
(4, 'Heartgard', 'Prevención de gusanos del corazón y tratamiento de lombrices intestinales'),
(5, 'Advantage', 'Prevención y tratamiento de pulgas'),
(6, 'Drontal', 'Tratamiento de lombrices intestinales'),
(7, 'Felimazole', 'Tratamiento de hipertiroidismo felino'),
(8, 'Metacam', 'Antiinflamatorio y analgésico para el tratamiento del dolor y la inflamación'),
(9, 'Rimadyl', 'Antiinflamatorio y analgésico para el tratamiento del dolor y la inflamación'),
(10, 'Baytril', 'Antibiótico de amplio espectro para el tratamiento de infecciones bacterianas'),
(11, 'Vacuna contra Rabia', 'Protección contra el virus de la rabia'),
(12, 'Vacuna contra Moquillo', 'Protección contra el virus del moquillo'),
(13, 'Vacuna contra Parvovirus', 'Protección contra el virus del parvovirus'),
(14, 'Vacuna contra Leptospirosis', 'Protección contra la bacteria leptospira'),
(15, 'Vacuna contra Coronavirus', 'Protección contra el virus del coronavirus canino');

 


-- Tabla para las citas de los diagnosticos
CREATE TABLE Citas_Diagnosticos (
    ID_Cita INT,
    ID_Diagnostico INT,
    FOREIGN KEY (ID_Cita) REFERENCES Citas(ID_Cita),
    FOREIGN KEY (ID_Diagnostico) REFERENCES Diagnosticos(ID_Diagnostico)
);


-- Tabla para las medicinas de los diagnosticos
CREATE TABLE Diagnosticos_Medicinas (
    ID_Diagnostico INT FOREIGN KEY REFERENCES Diagnosticos(ID_Diagnostico),
    ID_Medicina INT FOREIGN KEY REFERENCES Medicamentos(ID_Medicamento)
); 