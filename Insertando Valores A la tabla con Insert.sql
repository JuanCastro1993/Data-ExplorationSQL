

alter table producto
add nombre varchar (500) not null;

select*from producto

Insert Into producto (CodProducto, PVP, PrecioCompra, Tangible, IvaActual, StockDisponible, Nombre)
Values (NEWID (),'40.00','50.68','23','45','100','agua')

Insert Into producto (CodProducto, PVP, PrecioCompra, Tangible, IvaActual, StockDisponible, Nombre)
Values (NEWID (),'70.00','0.68','16','5','10','Romo')

Insert Into producto (CodProducto, PVP, PrecioCompra, Tangible, IvaActual, StockDisponible, Nombre)
Values (NEWID (),'33.00','450.68','263','445','1800','Cerveza')

Insert Into producto (CodProducto, PVP, PrecioCompra, Tangible, IvaActual, StockDisponible, Nombre)
Values (NEWID (),'4560.00','57780.68','2983','45','100','Glasess')

Insert Into producto (CodProducto, PVP, PrecioCompra, Tangible, IvaActual, StockDisponible, Nombre)
Values (NEWID (),'770.00','456.68','23','45','100','Sombrilla')

select*from cliente
--completando los campos de la tabla Clientes.

--declarando variable en SQL Server.
DECLARE @Pass varchar(500)
SET @PASS='PassCliente1'
DECLARE @passEncriptada varbinary(500)
SET @passEncriptada = ENCRYPTBYPASSPHRASE('ClaveIndiscifrable',@Pass)


Insert Into Cliente (nombre, Cif, Email, Direccion, Usuario, Password, FechaAlta, FechaBaja)
values ('Juan','S1621044E','juancastro@gmail.com','c\san antonio','Login1',@passEncriptada,GETDATE(),null)

Insert Into Cliente (nombre, Cif, Email, Direccion, Usuario, Password, FechaAlta, FechaBaja)
values ('JuanLuis','S1621044T','juancastro@gmail.com','JuanFelipe','Login56',@PassEncriptada,GETDATE(),null)

select*from cliente


----Insertando Valores en la tabla Pedidos
INSERT INTO [dbo].[LINEAS_PEDIDO]
           ([IdPedido]
           ,[IdProducto]
           ,[PVP]
           ,[Cantidad]
           ,[IvaDetalle])
     VALUES
           (2
           ,3
           ,70.00
           ,1
           ,201)

		 --EJEMPLO INSERT DE LA TABLA FACTURA	   
INSERT INTO [dbo].[FACTURA]
           ([IdPedido]
           ,[TotalProductos]
           ,[TotalIva]
           ,[TotalFactura]
           ,[FechaFactura]
           ,[FechaAnulacion])
     VALUES
           (1,15.00,3.36,19.25,GETDATE(),NULL)	

		   Select *From Cliente
		   Select * from Factura
		   Select * from Producto
		   Select * from lineas_pedido