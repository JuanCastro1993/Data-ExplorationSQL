USE [CursoSql]
GO

/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 20/09/2020 11:44:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTO]') AND type in (N'U'))
DROP TABLE [dbo].[PRODUCTO]
GO

/****** Object:  Table [dbo].[PEDIDO]    Script Date: 20/09/2020 11:44:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PEDIDO]') AND type in (N'U'))
DROP TABLE [dbo].[PEDIDO]
GO

/****** Object:  Table [dbo].[LINEAS_PEDIDO]    Script Date: 20/09/2020 11:44:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LINEAS_PEDIDO]') AND type in (N'U'))
DROP TABLE [dbo].[LINEAS_PEDIDO]
GO

/****** Object:  Table [dbo].[FACTURA]    Script Date: 20/09/2020 11:44:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FACTURA]') AND type in (N'U'))
DROP TABLE [dbo].[FACTURA]
GO

/****** Object:  Table [dbo].[CLIENTE]    Script Date: 20/09/2020 11:44:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLIENTE]') AND type in (N'U'))
DROP TABLE [dbo].[CLIENTE]
GO

/****** Object:  Table [dbo].[CLIENTE]    Script Date: 20/09/2020 11:44:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENTE](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NOT NULL,
	[Cif] [varchar](20) NOT NULL,
	[Email] [varchar](200) NOT NULL,
	[Direccion] [varchar](200) NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Password] [varbinary](500) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[FACTURA]    Script Date: 20/09/2020 11:44:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACTURA](
	[IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NOT NULL,
	[TotalProductos] [float] NOT NULL,
	[TotalIva] [float] NOT NULL,
	[TotalFactura] [float] NOT NULL,
	[FechaFactura] [datetime] NOT NULL,
	[FechaAnulacion] [datetime] NULL,
 CONSTRAINT [PK_FACTURA] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[LINEAS_PEDIDO]    Script Date: 20/09/2020 11:44:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LINEAS_PEDIDO](
	[IdLineaPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[PVP] [float] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IvaDetalle] [float] NOT NULL,
 CONSTRAINT [PK_LINEAS_PEDIDO] PRIMARY KEY CLUSTERED 
(
	[IdLineaPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[PEDIDO]    Script Date: 20/09/2020 11:44:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PEDIDO](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[FechaPedido] [datetime] NOT NULL,
	[FechaAnulacion] [datetime] NOT NULL,
 CONSTRAINT [PK_PEDIDO] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 20/09/2020 11:44:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUCTO](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[CodProducto] [uniqueidentifier] NOT NULL,
	[PVP] [float] NOT NULL,
	[PrecioCompra] [float] NOT NULL,
	[Tangible] [bit] NOT NULL,
	[IvaActual] [float] NOT NULL,
	[StockDisponible] [int] NOT NULL,
 CONSTRAINT PK_PRODUCTO PRIMARY KEY CLUSTERED
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, 
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


