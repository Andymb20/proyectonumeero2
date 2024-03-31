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
(2, 'Stiven', 'Conejo', 'Canino, Roedor, Acu�tico'),
(3, 'Andres', 'Gutierrez', 'Reptil o Anfibio, Felinos, Aves, Roedor'),
(4, 'Benjamin', 'Curling', 'Canino, Felino, Reptil o Anfibio, Acu�tico');

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
(1, 'Nextgard', 'Prevenci�n y tratamiento de pulgas y garrapatas'),
(2, 'Revolution', 'Prevenci�n y tratamiento de pulgas, garrapatas, �caros y gusanos del coraz�n'),
(3, 'Bravecto', 'Prevenci�n y tratamiento de pulgas y garrapatas'),
(4, 'Heartgard', 'Prevenci�n de gusanos del coraz�n y tratamiento de lombrices intestinales'),
(5, 'Advantage', 'Prevenci�n y tratamiento de pulgas'),
(6, 'Drontal', 'Tratamiento de lombrices intestinales'),
(7, 'Felimazole', 'Tratamiento de hipertiroidismo felino'),
(8, 'Metacam', 'Antiinflamatorio y analg�sico para el tratamiento del dolor y la inflamaci�n'),
(9, 'Rimadyl', 'Antiinflamatorio y analg�sico para el tratamiento del dolor y la inflamaci�n'),
(10, 'Baytril', 'Antibi�tico de amplio espectro para el tratamiento de infecciones bacterianas'),
(11, 'Vacuna contra Rabia', 'Protecci�n contra el virus de la rabia'),
(12, 'Vacuna contra Moquillo', 'Protecci�n contra el virus del moquillo'),
(13, 'Vacuna contra Parvovirus', 'Protecci�n contra el virus del parvovirus'),
(14, 'Vacuna contra Leptospirosis', 'Protecci�n contra la bacteria leptospira'),
(15, 'Vacuna contra Coronavirus', 'Protecci�n contra el virus del coronavirus canino');

 


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