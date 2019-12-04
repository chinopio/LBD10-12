use RESTAURANT
alter table Empleados add iIdTipoEmpleado int
alter table Empleados add vCorreo varchar(30)
alter table Empleados add fSalario float


alter table Proveedores add vNomContacto varchar(40)
alter table Proveedores add vTelefono varchar(15)

create table PedidosProductos(
iIdPedido int primary key,
dFechaPedido date not null,
iIdIngrediente int not null
)
create index FechaPedido on PedidosProductos (dFechaPedido)
exec sp_helpindex PedidosProductos

create table TipoEmpleado(
iIdTipoEmpleado int primary key,
vTipoEmpleado varchar(20) not null
)
create index TipoEmpleado on TipoEmpleado (vTipoEmpleado)
exec sp_helpindex TipoEmpleado

create table Factura(
iIdFactura int primary key,
dFecha date not null,
fSubtotal float not null,
fIVA float not null,
fTotal float not null,
fEfectivo float null,
fCambio float null,
iIdCliente int not null,
iIdFormaPago int not null
)
create index FechaFactura on Factura (dFecha)
exec sp_helpindex Factura

alter table Platillo add vNomPlatillo varchar(30) 
alter table Platillo add vDescripcion varchar(50)
alter table Platillo drop column iIdIngred 

create table Orden (
iIdOrden int primary key,
iIdReservacion int null,
iIdMesa int not null,
iIdPlatillo int not null,
iIdCombo int null
)

create table Combo(
iIdCombo int primary key,
vNombreCombo varchar (30) not null,
fPrecio float not null
)




