CREATE TABLE trglog(
     idlogmv INT PRIMARY KEY,
	 mov varchar(50),
	 tbl_affect varchar(50),
     fecha DATETIME,
  );
  GO

CREATE TRIGGER tr_INSEmpleados ON Empleados
    for INSERT
    AS
    BEGIN
		set nocount on;
		INSERT INTO trglog VALUES((SELECT COUNT(*) FROM trglog) + 1,'Se agrego al empleado' + STR((SELECT iIdEmp FROM inserted)),'Empleados',GETDATE());
    END
GO

CREATE TRIGGER tr_DELEmpleados ON Empleados
    for DELETE
    AS
    BEGIN
		set nocount on;
		INSERT INTO trglog VALUES((SELECT COUNT(*) FROM trglog) + 1,'Se elimino al empleado' + STR((SELECT iIdEmp FROM inserted)),'Empleados',GETDATE());
    END
GO

CREATE TRIGGER tr_UPDEmpleados ON Empleados
    for UPDATE
    AS
    BEGIN
		set nocount on;
		INSERT INTO trglog VALUES((SELECT COUNT(*) FROM trglog) + 1,'Se actualizo al empleado' + STR((SELECT iIdEmp FROM inserted)),'Empleados',GETDATE());
    END
GO

CREATE PROCEDURE sp_VerOrden
AS
SELECT * FROM Orden
GO

EXEC sp_VerOrden

CREATE PROCEDURE sp_VerFactura
AS
SELECT * FROM Factura
GO

EXEC sp_VerFactura

CREATE PROCEDURE sp_VerCliente
AS
SELECT * FROM Clientes
GO

EXEC sp_VerCliente

CREATE PROCEDURE sp_VerEmpleado
AS
SELECT * FROM Empleados
GO

EXEC sp_VerEmpleado

CREATE PROCEDURE sp_VerPlatillo
AS
SELECT * FROM Platillo
GO

EXEC sp_VerPlatillo