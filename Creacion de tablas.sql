
Create Table Cliente(
IdCliente Int identity (1,1) not null,
Nombre Varchar (200) not null,
Cif varchar (20) not null,
Email varchar (50) not null,
Direccion varchar (200) not null,
Usuario varchar (200) not null,
Password varbinary (500) not null,
FechaAlta datetime not null,
Fechabaja datetime not null,
CONSTRAINT PK_Cliente Primary key clustered
)


Create table Factura(
IdFactura Int identity (1,1)not null,
IdPedido Int not null, 
TotalProductos float not null,
TotalIva float not null,
TotalFactura float not null,
FechaFactura datetime not null,
Constraint PK_Factura primary key clustered 
)

Create Table Linea_Pedido(
IdLineaPedido Int Not null,
IdPedido Int not null,
IdProducto Int Not Null,
PVP float not null,
Cantidad float not null,
IvaDetalle float not null,
)

Create table Pedido(
IdPedido Int not null,
IdCliente Int Not null,
FechaPedido datetime not null,
Fechaanulacion datetime not null,
)

Create table Producto(
IdProducto Int not null,
CodProducto uniqueidentifier Not null,
PVP FLOAT  NOT NULL,
PrecioCompra float not null,
Tangible bit not null,
IvaActual float not null,
StockDisponible Int not null,
)

Drop table Factura
select * from factura