USE [CursoSql]
GO

/****** Object:  Table [dbo].[CLIENTE]    Script Date: 19/09/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENTE](
	[IdCliente] [int] NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[Cif] [varchar](20) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Direccion] [varchar](200) NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Password] [varbinary](500) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL
) ON [PRIMARY]
GO

drop table cliente

/****** Object:  Table [dbo].[FACTURA]    Script Date: 19/09/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACTURA](
	[IdFactura] [int] NOT NULL,
	[IdPedido] [int] NOT NULL,
	[TotalProductos] [float] NOT NULL,
	[TotalIva] [float] NOT NULL,
	[TotalFactura] [float] NOT NULL,
	[FechaFactura] [datetime] NOT NULL,
	[FechaAnulacion] [datetime] NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[LINEAS_PEDIDO]    Script Date: 19/09/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LINEAS_PEDIDO](
	[IdLineaPedido] [int] NOT NULL,
	[IdPedido] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[PVP] [float] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IvaDetalle] [float] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PEDIDO]    Script Date: 19/09/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PEDIDO](
	[IdPedido] [int] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[FechaPedido] [datetime] NOT NULL,
	[FechaAnulacion] [datetime] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 19/09/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUCTO](
	[IdProducto] [int] NOT NULL,
	[CodProducto] [uniqueidentifier] NOT NULL,
	[PVP] [float] NOT NULL,
	[PrecioCompra] [float] NOT NULL,
	[Tangible] [bit] NOT NULL,
	[IvaActual] [float] NOT NULL,
	[StockDisponible] [int] NOT NULL
) ON [PRIMARY]
GO


