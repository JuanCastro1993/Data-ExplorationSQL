
--EJEMPLO INSERT DE LA TABLA PRODUCTO
INSERT INTO [dbo].[PRODUCTO]
           ([CodProducto]
           ,[Nombre]
           ,[PVP]
           ,[PrecioCompra]
           ,[Tangible]
           ,[IvaActual]
           ,[StockDisponible])
     VALUES
           (NEWID()
           ,'Producto 6'
           ,40.00
           ,15.00
           ,0
           ,21.00
           ,21)
		   
--EJEMPLO INSERT DE LA TABLA CLIENTE
DECLARE @Pass varchar(500)
SET @PASS='PassCliente1'
DECLARE @passEncriptada varbinary(500)
SET @passEncriptada = ENCRYPTBYPASSPHRASE('ClaveIndiscifrable',@Pass)

INSERT INTO [dbo].[CLIENTE]
           ([Nombre]
           ,[Cif]
           ,[Email]
           ,[Direccion]
           ,[Usuario]
           ,[Password]
           ,[FechaAlta]
           ,[FechaBaja])
     VALUES
           ('Cliente 1','S1621044E','emailCliente1@mail.es','Direccion cliente 1','Login1',@passEncriptada,GETDATE(),NULL)
		   

--EJEMPLO INSERT DE LA TABLA LINEAS_PEDIDO
INSERT INTO [dbo].[LINEAS_PEDIDO]
           ([IdPedido]
           ,[IdProducto]
           ,[PVP]
           ,[Cantidad]
           ,[IvaDetalle])
     VALUES
           (1
           ,3
           ,50.00
           ,1
           ,21)

--EJEMPLO INSERT DE LA TABLA FACTURA	   
INSERT INTO [dbo].[FACTURA]
           ([IdPedido]
           ,[TotalProductos]
           ,[TotalIva]
           ,[TotalFactura]
           ,[FechaFactura]
           ,[FechaAnulacion])
     VALUES
           (1,15.99,3.36,19.35,GETDATE(),NULL)	