use P_Restaurant

select * from Platillo
/**		Select Basicos		**/
select * from Clientes WHERE vDomicilio = 'Real de Palmas, Zuazua'
select * from Clientes WHERE vDomicilio = 'Huniala, Apodaca'
select * from Clientes WHERE vApPat = 'Rodriguez'
select * from Clientes WHERE vApMat = 'Martinez'

select * from Empleados WHERE vStatus = 'A'
SELECT COUNT(*) AS 'Empleados activos' FROM Empleados WHERE vStatus = 'A' 
select * from Empleados WHERE dFechaIngreso = '2017-12-27'
select * from Empleados WHERE iEdad = '20'

select * from Platillo WHERE mPrecio = '60'
select * from Platillo WHERE mPrecio = '80'

/**		Select Avanzados	**/
SELECT Clientes.*, Empleados.* FROM Clientes JOIN Empleados ON Clientes.vDomicilio = Empleados.vDomicilio

SELECT Clientes.vNombreCom, Factura.* FROM Clientes JOIN Factura ON Clientes.iIdCliente = Factura.iIdCliente

SELECT Factura.*, FormaPago.vFormaPago FROM Factura JOIN FormaPago ON Factura.iIdFormaPago = FormaPago.iIdFormaPago

SELECT Clientes.vNombreCom, Factura.*, FormaPago.vFormaPago FROM Clientes JOIN Factura ON Clientes.iIdCliente = Factura.iIdCliente JOIN FormaPago ON Factura.iIdFormaPago = FormaPago.iIdFormaPago 


