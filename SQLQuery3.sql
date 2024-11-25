USE SistemaSoporte;
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'Usuarios' AND xtype = 'U')
BEGIN
    CREATE TABLE Usuarios (
        UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
        Nombre NVARCHAR(100) NOT NULL,
        Correo NVARCHAR(100) NOT NULL UNIQUE,
        Telefono NVARCHAR(15),
        FechaRegistro DATETIME DEFAULT GETDATE()
    );
END;
GO


IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'Tecnicos' AND xtype = 'U')
BEGIN
    CREATE TABLE Tecnicos (
        TecnicoID INT IDENTITY(1,1) PRIMARY KEY,
        Nombre NVARCHAR(100) NOT NULL,
        Especialidad NVARCHAR(100),
        Telefono NVARCHAR(15),
        FechaIngreso DATETIME DEFAULT GETDATE()
    );
END;
GO


IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = 'Equipos' AND xtype = 'U')
BEGIN
    CREATE TABLE Equipos (
        EquipoID INT IDENTITY(1,1) PRIMARY KEY,
        Nombre NVARCHAR(100) NOT NULL,
        Marca NVARCHAR(50),
        Modelo NVARCHAR(50),
        UsuarioID INT NOT NULL,
        TecnicoID INT NOT NULL,
        FechaAsignacion DATETIME DEFAULT GETDATE(),
        FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
        FOREIGN KEY (TecnicoID) REFERENCES Tecnicos(TecnicoID)
    );
END;
GO

CREATE OR ALTER PROCEDURE spAgregarUsuario
    @Nombre NVARCHAR(100),
    @Correo NVARCHAR(100),
    @Telefono NVARCHAR(15)
AS
BEGIN
   
    IF EXISTS (SELECT 1 FROM Usuarios WHERE Correo = @Correo)
    BEGIN
        PRINT 'El correo ya está registrado.';
        RETURN;
    END;


    INSERT INTO Usuarios (Nombre, Correo, Telefono)
    VALUES (@Nombre, @Correo, @Telefono);
END;
GO

CREATE OR ALTER PROCEDURE spAgregarTecnico
    @Nombre NVARCHAR(100),
    @Especialidad NVARCHAR(100),
    @Telefono NVARCHAR(15)
AS
BEGIN
   
    INSERT INTO Tecnicos (Nombre, Especialidad, Telefono)
    VALUES (@Nombre, @Especialidad, @Telefono);
END;
GO

CREATE OR ALTER PROCEDURE spAgregarEquipo
    @Nombre NVARCHAR(100),
    @Marca NVARCHAR(50),
    @Modelo NVARCHAR(50),
    @UsuarioID INT,
    @TecnicoID INT
AS
BEGIN
 
    INSERT INTO Equipos (Nombre, Marca, Modelo, UsuarioID, TecnicoID)
    VALUES (@Nombre, @Marca, @Modelo, @UsuarioID, @TecnicoID);
END;
GO

CREATE OR ALTER PROCEDURE spConsultarEquipos
AS
BEGIN
   
    SELECT EquipoID, Nombre, Marca, Modelo, UsuarioID, TecnicoID, FechaAsignacion
    FROM Equipos;
END;
GO


EXEC spAgregarUsuario 
    @Nombre = 'Carlos Gómez', 
    @Correo = 'carlos.gomez@example.com', 
    @Telefono = '5551234567';

EXEC spAgregarTecnico 
    @Nombre = 'Luis Ramírez', 
    @Especialidad = 'Redes', 
    @Telefono = '5551234567';


EXEC spAgregarEquipo 
    @Nombre = 'Laptop HP', 
    @Marca = 'HP', 
    @Modelo = 'ProBook 450', 
    @UsuarioID = 1,  
    @TecnicoID = 1;  

SELECT * FROM Usuarios;

SELECT * FROM Tecnicos;
