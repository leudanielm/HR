USE [master]
GO
/****** Object:  Database [ResurseUmane]    Script Date: 07/04/2014 00:09:19 ******/
CREATE DATABASE [ResurseUmane] ON  PRIMARY 
( NAME = N'ResurseUmane', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ResurseUmane.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ResurseUmane_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ResurseUmane_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ResurseUmane] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ResurseUmane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ResurseUmane] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ResurseUmane] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ResurseUmane] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ResurseUmane] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ResurseUmane] SET ARITHABORT OFF
GO
ALTER DATABASE [ResurseUmane] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ResurseUmane] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ResurseUmane] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ResurseUmane] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ResurseUmane] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ResurseUmane] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ResurseUmane] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ResurseUmane] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ResurseUmane] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ResurseUmane] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ResurseUmane] SET  ENABLE_BROKER
GO
ALTER DATABASE [ResurseUmane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ResurseUmane] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ResurseUmane] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ResurseUmane] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ResurseUmane] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ResurseUmane] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ResurseUmane] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ResurseUmane] SET  READ_WRITE
GO
ALTER DATABASE [ResurseUmane] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ResurseUmane] SET  MULTI_USER
GO
ALTER DATABASE [ResurseUmane] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ResurseUmane] SET DB_CHAINING OFF
GO
USE [ResurseUmane]
GO
/****** Object:  Table [dbo].[Departamente]    Script Date: 07/04/2014 00:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamente](
	[ID_dpt] [int] IDENTITY(1,1) NOT NULL,
	[Denumire_dpt] [varchar](50) NOT NULL,
	[Marca_manager] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_dpt] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Departamente] ON
INSERT [dbo].[Departamente] ([ID_dpt], [Denumire_dpt], [Marca_manager]) VALUES (1, N'IT', 223245)
INSERT [dbo].[Departamente] ([ID_dpt], [Denumire_dpt], [Marca_manager]) VALUES (2, N'Resurse Umane', 334455)
INSERT [dbo].[Departamente] ([ID_dpt], [Denumire_dpt], [Marca_manager]) VALUES (19, N'Marketing', 556432)
INSERT [dbo].[Departamente] ([ID_dpt], [Denumire_dpt], [Marca_manager]) VALUES (20, N'Contabilitate', 567845)
SET IDENTITY_INSERT [dbo].[Departamente] OFF
/****** Object:  Table [dbo].[Banci]    Script Date: 07/04/2014 00:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banci](
	[ID_banci] [int] IDENTITY(1,1) NOT NULL,
	[Nume_banci] [varchar](max) NOT NULL,
	[Comision] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_banci] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Banci] ON
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (21, N'BRD', CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (25, N'BCR', CAST(15.00 AS Decimal(18, 2)))
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (26, N'Piraeus', CAST(20.00 AS Decimal(18, 2)))
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (27, N'Transilvania', CAST(17.00 AS Decimal(18, 2)))
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (28, N'ING', CAST(16.00 AS Decimal(18, 2)))
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (31, N'CreditEurope', CAST(10.00 AS Decimal(18, 2)))
INSERT [dbo].[Banci] ([ID_banci], [Nume_banci], [Comision]) VALUES (32, N'Raiffeisen', CAST(15.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Banci] OFF
/****** Object:  Table [dbo].[Functii]    Script Date: 07/04/2014 00:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functii](
	[ID_functii] [int] IDENTITY(1,1) NOT NULL,
	[Denumire] [nvarchar](50) NOT NULL,
	[Is_management] [bit] NULL,
	[Is_director] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_functii] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Functii] ON
INSERT [dbo].[Functii] ([ID_functii], [Denumire], [Is_management], [Is_director]) VALUES (1, N'Frontend dev', NULL, NULL)
INSERT [dbo].[Functii] ([ID_functii], [Denumire], [Is_management], [Is_director]) VALUES (2, N'Agent Paza', NULL, NULL)
INSERT [dbo].[Functii] ([ID_functii], [Denumire], [Is_management], [Is_director]) VALUES (3, N'Dispecer', NULL, NULL)
INSERT [dbo].[Functii] ([ID_functii], [Denumire], [Is_management], [Is_director]) VALUES (4, N'Operator PC', NULL, NULL)
INSERT [dbo].[Functii] ([ID_functii], [Denumire], [Is_management], [Is_director]) VALUES (5, N'Specialist HR', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Functii] OFF
/****** Object:  Table [dbo].[Entitati_mapare]    Script Date: 07/04/2014 00:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entitati_mapare](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Entitate] [varchar](30) NULL,
	[Nume_tabel] [varchar](30) NULL,
	[Nume_ID] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Entitati_mapare] ON
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (1, N'departamente', N'dbo.Departamente', N'ID_dpt')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (2, N'angajati', N'dbo.Angajati', N'Marca_angajati')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (3, N'banci', N'dbo.Banci', N'ID_banci')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (4, N'orase', N'dbo.Orase', N'ID_orase')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (5, N'studii', N'dbo.Studii', N'ID_studii')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (6, N'functii', N'dbo.Functii', N'ID_functii')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (7, N'concedii_angajati', N'dbo.Concedii_angajati', N'ID_concedii_angajati')
INSERT [dbo].[Entitati_mapare] ([ID], [Entitate], [Nume_tabel], [Nume_ID]) VALUES (8, N'salarii', N'dbo.Salarii', N'ID_salarii')
SET IDENTITY_INSERT [dbo].[Entitati_mapare] OFF
/****** Object:  StoredProcedure [dbo].[getAngajati]    Script Date: 07/04/2014 00:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAngajati]
	-- Add the parameters for the stored procedure here
	
	@CNP bigint=null,
	@Nume nvarchar(max)=null,
	@Prenume nvarchar(max)=null,
	@Data_angajare_start date=null,
	@Data_angajare_end date=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE
	--@varCNP bigint ,
	--@varNume nvarchar(max),
	--@varPrenume nvarchar(max),
	
	@SQLQuery nvarchar(1000),
	@Params nvarchar (400)
	--set @varCNP = @CNP
	
	Set @SQLQuery = ' Select a.Marca_angajati ,
		   a.CNP,
		   a.Nume,
		   a.Prenume,
		   a.Adresa,
		   a.Nationalitate,
		   a.Telefon,
		   a.Data_nasterii,
		   a.Data_angajare,
		   a.Data_incheiere_contract,
		   a.Gen,
		   a.IBAN,
		   COALESCE(o.Denumire_orase, ''N/A'') as Oras,
		   COALESCE(b.Nume_banci, ''N/A'') as Banca From dbo.Angajati a left join dbo.Orase o  on  
		   o.ID_orase=a.ID_orase left join dbo.Banci b  on 
		   b.ID_banci=a.ID_banca'
		   
		   
	if @CNP is not null
	Set @SQLQuery = @SQLQuery+' and CNP = @CNP' 
	
	if @Nume is not null
	Set @SQLQuery = @SQLQuery+' and (Nume like ''%' + @Nume + '%'')'
	
	if @Prenume is not null
	Set @SQLQuery = @SQLQuery+' and (Prenume like ''%' + @Prenume + '%'')'
							
	If (@Data_angajare_start Is Not Null) AND (@Data_angajare_end Is Not Null)
			 Set @SQLQuery = @SQLQuery + ' And (Data_angajare 
			 BETWEEN ''' + convert(nvarchar(11),@Data_angajare_start, 111) + ''' AND ''' + convert(nvarchar(11),@Data_angajare_end, 111) + ''')'

	
	Set @Params = '@CNP int, 
				   @Nume nvarchar(max), 
				   @Prenume nvarchar(max),
				   @Data_angajare_start date,
				   @Data_angajare_end date'
	print @SQLQuery
	
	Execute sp_Executesql     @SQLQuery, 
							  @Params,
							  @CNP,
							  @Nume,
							  @Prenume,
							  @Data_angajare_start ,
				              @Data_angajare_end 
	
END
GO
/****** Object:  StoredProcedure [dbo].[getContents]    Script Date: 07/04/2014 00:09:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getContents]
	-- Add the parameters for the stored procedure here
	@tableName VARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	EXEC('SELECT * FROM ' + @tableName)
END
GO
/****** Object:  UserDefinedFunction [dbo].[getFks]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[getFks]
(	
	-- Add the parameters for the function here
	@tableName VARCHAR(200)
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 
   OBJECT_NAME(f.parent_object_id) TableName,
   COL_NAME(fc.parent_object_id,fc.parent_column_id) ColName
	FROM 
	   sys.foreign_keys AS f
	INNER JOIN 
	   sys.foreign_key_columns AS fc 
		  ON f.OBJECT_ID = fc.constraint_object_id
	INNER JOIN 
	   sys.tables t 
		  ON t.OBJECT_ID = fc.referenced_object_id
	WHERE 
	   OBJECT_NAME (f.referenced_object_id) = @tableName
)
GO
/****** Object:  StoredProcedure [dbo].[getRapoarte]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getRapoarte]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT REPLACE(name,'rpt_', '') as [name] FROM sys.procedures
	WHERE name like 'rpt_%'
END
GO
/****** Object:  Table [dbo].[Orase]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orase](
	[ID_orase] [int] IDENTITY(1,1) NOT NULL,
	[Denumire_orase] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_orase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orase] ON
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (1, N'Craiova')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (2, N'Medgidia')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (3, N'Bucuresti')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (4, N'Arad')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (5, N'Timisoara')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (6, N'Bacau')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (7, N'Galati')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (9, N'Ploiesti')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (10, N'Sibiu')
INSERT [dbo].[Orase] ([ID_orase], [Denumire_orase]) VALUES (11, N'Buzau')
SET IDENTITY_INSERT [dbo].[Orase] OFF
/****** Object:  Table [dbo].[Salarii]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salarii](
	[ID_salarii] [int] IDENTITY(1,1) NOT NULL,
	[Brut] [decimal](18, 2) NULL,
	[Data_plata] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_salarii] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Salarii] ON
INSERT [dbo].[Salarii] ([ID_salarii], [Brut], [Data_plata]) VALUES (6, CAST(9000.00 AS Decimal(18, 2)), CAST(0x0A380B00 AS Date))
SET IDENTITY_INSERT [dbo].[Salarii] OFF
/****** Object:  Table [dbo].[legaturi_tbl]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[legaturi_tbl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[from] [varchar](250) NOT NULL,
	[to] [varchar](250) NOT NULL,
	[by] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[legaturi_tbl] ON
INSERT [dbo].[legaturi_tbl] ([ID], [from], [to], [by]) VALUES (1, N'Angajati', N'Orase', N'ID_orase')
INSERT [dbo].[legaturi_tbl] ([ID], [from], [to], [by]) VALUES (2, N'Angajati', N'Banci', N'ID_banca')
SET IDENTITY_INSERT [dbo].[legaturi_tbl] OFF
/****** Object:  Table [dbo].[Studii]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studii](
	[ID_studii] [int] IDENTITY(1,1) NOT NULL,
	[Denumire_studii] [nvarchar](50) NOT NULL,
	[Nivel] [int] NULL,
	[Has_scutire_impozit] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_studii] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Studii] ON
INSERT [dbo].[Studii] ([ID_studii], [Denumire_studii], [Nivel], [Has_scutire_impozit]) VALUES (2, N'liceu', 5, NULL)
INSERT [dbo].[Studii] ([ID_studii], [Denumire_studii], [Nivel], [Has_scutire_impozit]) VALUES (4, N'facultate', 1, NULL)
INSERT [dbo].[Studii] ([ID_studii], [Denumire_studii], [Nivel], [Has_scutire_impozit]) VALUES (9, N'studii postliceale', 3, 0)
SET IDENTITY_INSERT [dbo].[Studii] OFF
/****** Object:  Table [dbo].[Utilizatori]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Utilizatori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Utilizator] [varchar](40) NOT NULL,
	[Parola] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Utilizatori] ON
INSERT [dbo].[Utilizatori] ([ID], [Utilizator], [Parola]) VALUES (1, N'admin', N'E10ADC3949BA59ABBE56E057F20F883E')
SET IDENTITY_INSERT [dbo].[Utilizatori] OFF
/****** Object:  StoredProcedure [dbo].[updateStudii]    Script Date: 07/04/2014 00:10:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateStudii]
	-- Add the parameters for the stored procedure here
	@ID_studii INT,
	@Denumire_studii NVARCHAR(50) = NULL,
	@Nivel INT = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Denumire_studii = (SELECT COALESCE( @Denumire_studii, (SELECT Denumire_studii from dbo.Studii WHERE ID_studii = @ID_studii)));
	SET @Nivel = (SELECT COALESCE( @Nivel, (SELECT Nivel from dbo.Studii WHERE ID_studii = @ID_studii)));
	UPDATE dbo.Studii SET Denumire_studii=@Denumire_studii,Nivel=@Nivel WHERE ID_studii = @ID_studii;
END
GO
/****** Object:  StoredProcedure [dbo].[updateSalarii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateSalarii]
	-- Add the parameters for the stored procedure here
	@ID_salarii INT,
	@Brut DECIMAL(18,2) = NULL,
	@Data_plata DATE = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Brut = (SELECT COALESCE( @Brut, (SELECT Brut from dbo.Salarii WHERE ID_salarii = @ID_Salarii)));
	SET @Data_plata = (SELECT COALESCE( @Data_plata, (SELECT Data_plata from dbo.Salarii WHERE ID_salarii = @ID_Salarii)));
	UPDATE dbo.Salarii SET 
	Brut=@Brut,
	Data_plata=@Data_plata
	WHERE ID_salarii = @ID_salarii;
END
GO
/****** Object:  StoredProcedure [dbo].[updateFunctii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateFunctii]
	-- Add the parameters for the stored procedure here
	@ID_functii INT,
	@Denumire NVARCHAR(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Denumire = (SELECT COALESCE( @Denumire, (SELECT Denumire from dbo.Functii WHERE ID_functii = @ID_functii)));
	UPDATE dbo.Functii SET Denumire=@Denumire WHERE ID_Functii = @ID_Functii;
END
GO
/****** Object:  StoredProcedure [dbo].[updateDepartamente]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateDepartamente]
	-- Add the parameters for the stored procedure here
	@ID_dpt INT,
	@Denumire_dpt varchar(50) =NULL,
	@Marca_manager INT =NULL
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	SET @Denumire_dpt = (SELECT COALESCE( @Denumire_dpt, (SELECT Denumire_dpt from dbo.Departamente WHERE ID_dpt = @ID_dpt)));
	SET @Marca_manager = (SELECT COALESCE( @Marca_manager, (SELECT Marca_manager from dbo.Departamente WHERE ID_dpt = @ID_dpt)));
	
	UPDATE dbo.Departamente SET 
	Denumire_dpt=@Denumire_dpt,
	Marca_manager=@Marca_manager
	WHERE ID_dpt = @ID_dpt;
END
GO
/****** Object:  StoredProcedure [dbo].[stergeEntitati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[stergeEntitati] 
	-- Add the parameters for the stored procedure here
	@ID int,
	@Type varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	DECLARE
	@TableName varchar(100),
	@RowID varchar(100),
	@SQLQuery nvarchar(200),
	@Params nvarchar(50)
	
	SET @TableName = (SELECT TOP 1 Nume_tabel from dbo.Entitati_mapare where Entitate = @Type)
	SET @RowID = (SELECT TOP 1 Nume_ID from dbo.Entitati_mapare where Entitate = @Type)
	
	set @SQLQuery = 'DELETE FROM ' + @TableName + ' WHERE ' + @RowID + ' = ' + CAST(@ID AS VARCHAR(10))
	set @Params = '@ID int,@TableName varchar(100),@RowID varchar(100)'
		
	EXEC(@SQLQuery)
END
GO
/****** Object:  StoredProcedure [dbo].[insertStudii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertStudii] 
	-- Add the parameters for the stored procedure here
	@Denumire_studii NVARCHAR(50),
	@Nivel INT,
	@Has_scutire_impozit BIT = 0
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO dbo.Studii(Denumire_studii,Nivel,Has_scutire_impozit)
    VALUES(@Denumire_studii,@Nivel, @Has_scutire_impozit)
END
GO
/****** Object:  StoredProcedure [dbo].[updateBanci]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateBanci]
	-- Add the parameters for the stored procedure here
	@ID_banci INT,                 
	@Nume_banci VARCHAR(MAX) = NULL,
	@Comision decimal(18,2) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @Nume_banci = (SELECT COALESCE( @Nume_banci, (SELECT Nume_banci from dbo.Banci WHERE ID_banci = @ID_banci)));
	SET @Comision = (SELECT COALESCE( @Comision, (SELECT Comision from dbo.Banci WHERE ID_banci = @ID_banci)));

	UPDATE dbo.Banci SET Nume_banci = @Nume_banci, Comision = @Comision WHERE ID_banci = @ID_banci;
END
GO
/****** Object:  StoredProcedure [dbo].[getOraseList]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getOraseList]
	-- Add the parameters for the stored procedure here
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ID_orase,Denumire_orase from dbo.Orase 
END
GO
/****** Object:  StoredProcedure [dbo].[getOrase]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getOrase]
	-- Add the parameters for the stored procedure here
	@Denumire_orase nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	    -- Insert statements for procedure here
	DECLARE 
	
	@varDenumire_orase nvarchar(50)
	set @varDenumire_orase = ltrim(rtrim(@Denumire_orase))
	
	select ID_orase,Denumire_orase as Denumire  from dbo.Orase
	where @varDenumire_orase is null or Denumire_orase LIKE '%' + @varDenumire_orase + '%'
	
	
    -- Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[getLegaturi]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getLegaturi]
	-- Add the parameters for the stored procedure here
	@tableName VARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM dbo.legaturi_tbl WHERE [from] = @tableName
END
GO
/****** Object:  StoredProcedure [dbo].[getFunctii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getFunctii]
	@Denumire nvarchar(50)=null
	
AS
BEGIN
	
	SET NOCOUNT ON;

    
    DECLARE 
	
	@varDenumire nvarchar(50)
	set @varDenumire = ltrim(rtrim(@Denumire))
	
	select ID_functii,Denumire   from dbo.Functii
	where @varDenumire is null or Denumire LIKE '%' + @varDenumire + '%'
    
END
GO
/****** Object:  StoredProcedure [dbo].[getDepartamente]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getDepartamente] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	select * from dbo.Departamente
	
END
GO
/****** Object:  StoredProcedure [dbo].[insertDepartamente]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertDepartamente] 
	-- Add the parameters for the stored procedure here
	@Denumire_dpt VARCHAR(50),
	@Marca_manager INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.Departamente(Denumire_dpt,Marca_manager)
    VALUES (@Denumire_dpt,@Marca_manager)
END
GO
/****** Object:  StoredProcedure [dbo].[insertOrase]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertOrase]
	-- Add the parameters for the stored procedure here
	@Denumire_orase NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.Orase(Denumire_orase)
    VALUES(@Denumire_orase)
END
GO
/****** Object:  StoredProcedure [dbo].[insertFunctii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertFunctii]
	-- Add the parameters for the stored procedure here
	@Denumire NVARCHAR(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.Functii(Denumire)
    VALUES(@Denumire)
END
GO
/****** Object:  StoredProcedure [dbo].[getStudii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getStudii]
	-- Add the parameters for the stored procedure here
	@Denumire_studii nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE 
	@varDenumire_studii nvarchar(50)
    -- Insert statements for procedure here
	set @varDenumire_studii= ltrim(rtrim(@Denumire_studii))
	
	
	
	select ID_studii,Denumire_studii as Denumire ,Nivel from dbo.Studii
	where @varDenumire_studii is null or Denumire_studii LIKE '%' + @varDenumire_studii + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[getSalariiAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getSalariiAngajati]
	-- Add the parameters for the stored procedure here
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ID_salarii,Brut,CONVERT(varchar,Data_plata,105) as [Data Plata] from dbo.Salarii
END
GO
/****** Object:  StoredProcedure [dbo].[insertBanci]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertBanci]
	-- Add the parameters for the stored procedure here
	@Name VARCHAR(max),
	@Cms decimal(18,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT into dbo.Banci(Nume_banci,Comision)
    VALUES (@Name,@Cms);
END
GO
/****** Object:  StoredProcedure [dbo].[getBanciList]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getBanciList] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ID_banci,Nume_banci from dbo.Banci 
END
GO
/****** Object:  StoredProcedure [dbo].[getBanci]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getBanci]
	-- Add the parameters for the stored procedure here
	
	@Nume_banci varchar(max)=null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE 
	
	@varNume_banci varchar(max)
	
	
	set @varNume_banci = ltrim(rtrim(@Nume_banci))
	
	
	
	select ID_banci,Nume_banci as Denumire ,Comision from dbo.Banci
	where @varNume_banci is null or Nume_banci LIKE '%' + @varNume_banci + '%'
	
	

	
END
GO
/****** Object:  StoredProcedure [dbo].[editEntitati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[editEntitati]
	-- Add the parameters for the stored procedure here
	@ID int,
	@Type varchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	
	DECLARE
	@TableName varchar(100),
	@RowID varchar(100),
	@SQLQuery nvarchar(200),
	@Params nvarchar(50)
	
	SET @TableName = (SELECT TOP 1 Nume_tabel from dbo.Entitati_mapare where Entitate = @Type)
	SET @RowID = (SELECT TOP 1 Nume_ID from dbo.Entitati_mapare where Entitate = @Type)
	
	set @SQLQuery = 'SELECT * FROM ' + @TableName + ' WHERE ' + @RowID + ' = ' + CAST(@ID AS VARCHAR(10))
	set @Params = '@ID int,@TableName varchar(100),@RowID varchar(100)'
		
	EXEC(@SQLQuery)
	
END
GO
/****** Object:  StoredProcedure [dbo].[autentificaUtilizator]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[autentificaUtilizator]
	-- Add the parameters for the stored procedure here
	@Utilizator VARCHAR(40),
	@Parola VARCHAR(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @exists INT;
    -- Insert statements for procedure here
	
	SELECT COUNT(*) FROM dbo.Utilizatori 
	WHERE Utilizator = @Utilizator
	  AND Parola = CONVERT(VARCHAR(32), HashBytes('MD5', @Parola), 2)
END
GO
/****** Object:  Table [dbo].[Angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Angajati](
	[Marca_angajati] [int] NOT NULL,
	[CNP] [bigint] NOT NULL,
	[Nume] [nvarchar](max) NOT NULL,
	[Prenume] [nvarchar](max) NOT NULL,
	[Adresa] [nvarchar](max) NULL,
	[Nationalitate] [nvarchar](50) NULL,
	[Telefon] [varchar](30) NULL,
	[Data_nasterii] [date] NOT NULL,
	[Data_angajare] [date] NOT NULL,
	[Data_incheiere_contract] [date] NOT NULL,
	[Gen] [char](1) NOT NULL,
	[IBAN] [varchar](max) NOT NULL,
	[ID_orase] [int] NULL,
	[ID_banca] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Marca_angajati] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Marca_angajati] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (123221, 1900107756634, N'Rosu', N'Mihai', N'Bd Carol nr 8', N'Roman', N'0770987890', CAST(0xC9150B00 AS Date), CAST(0x77360B00 AS Date), CAST(0x21380B00 AS Date), N'M', N'7586986978364750089634', 7, 31)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (223245, 1880513984657, N'Remus', N'Stefan', N'Bd Garii nr 22', N'Roman', N'0779870065', CAST(0x6D130B00 AS Date), CAST(0x81350B00 AS Date), CAST(0x83380B00 AS Date), N'M', N'7485936475869763546758', 11, 27)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (334455, 1881002578695, N'Matei', N'Ionut', N'Str. Racari nr 29', N'Roman', N'0748573847', CAST(0x10130B00 AS Date), CAST(0xE2360B00 AS Date), CAST(0xA8380B00 AS Date), N'M', N'7587765466775588447755', 1, 28)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (346928, 1870224232145, N'Cancea', N'Paul', N'Bd Regiei nr 199', N'Roman', N'0775243647', CAST(0xB1110B00 AS Date), CAST(0x9A2F0B00 AS Date), CAST(0x20380B00 AS Date), N'M', N'3748573647583746578935', 10, 31)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (347895, 1900330232145, N'Preda', N'Matei', N'Str Valsan nr 3', N'Roman', N'0775241254', CAST(0x1B160B00 AS Date), CAST(0x0B380B00 AS Date), CAST(0x98380B00 AS Date), N'M', N'4657686849495768132435', 10, 31)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (445678, 1671212856754, N'Balan', N'George', N'Cal Rahovei nr 13', N'Roman', N'0748236475', CAST(0x4BF60A00 AS Date), CAST(0xA8380B00 AS Date), CAST(0xB2380B00 AS Date), N'M', N'7756453647586753423456', 4, 21)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (456234, 1770201675867, N'Marin', N'Ionut', N'Bd Uverturii nr 1', N'Roman', N'0747856784', CAST(0x56030B00 AS Date), CAST(0xE3330B00 AS Date), CAST(0x3B390B00 AS Date), N'M', N'7564324897685736489969', 5, 32)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (465723, 1890330846754, N'Amariei', N'Catalin', N'Str Florilor nr 24', N'Roman', N'0723453456', CAST(0xAE140B00 AS Date), CAST(0x0B380B00 AS Date), CAST(0x98380B00 AS Date), N'M', N'6574857687936475867432', 9, 25)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (554309, 1851123675867, N'Marcoci', N'Cosmin', N'Str Secetei nr 87', N'Roman', N'0776543298', CAST(0xE70F0B00 AS Date), CAST(0x692B0B00 AS Date), CAST(0x16380B00 AS Date), N'M', N'2485768798746576891423', 11, 27)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (556432, 1780211675867, N'Stefan', N'Dan', N'Bd Elisabeta nr 10', N'Roman', N'0778569374', CAST(0xCD040B00 AS Date), CAST(0x752C0B00 AS Date), CAST(0xCB380B00 AS Date), N'M', N'1224354657564536457645', 10, 21)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (567845, 1871010578697, N'Ionita', N'Marius', N'Bd. Ion Mihalache nr.100', N'Roman', N'0748927485', CAST(0x95120B00 AS Date), CAST(0x25360B00 AS Date), CAST(0xAD380B00 AS Date), N'M', N'8857884477558866996688', 3, 27)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (675485, 1770401758674, N'Avram', N'Alexandru', N'Cal. Giulesti nr 4', N'Roman', N'0752837438', CAST(0x91030B00 AS Date), CAST(0x98380B00 AS Date), CAST(0xAE380B00 AS Date), N'F', N'7586973647586753423456', 3, 27)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (758697, 1680714768956, N'Rosu', N'Mihai', N'Bd Carol nr 8', N'Roman', N'0770987890', CAST(0x22F70A00 AS Date), CAST(0x7A330B00 AS Date), CAST(0x0A340B00 AS Date), N'M', N'5543432557685768475887', 3, 25)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (786566, 1660401675867, N'Gica', N'Marius', N'Bd Ghencea nr 1', N'Roman', N'0745453564', CAST(0xDFF30A00 AS Date), CAST(0x10370B00 AS Date), CAST(0x52390B00 AS Date), N'M', N'7758366655495875648569', 3, 21)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (867596, 1880220758675, N'Melcescu', N'Paul', N'Cal. Vitan nr.54', N'Roman', N'0768547474', CAST(0x1A130B00 AS Date), CAST(0xFA370B00 AS Date), CAST(0xA9380B00 AS Date), N'M', N'7478694758665544336754', 6, 25)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (879765, 1790201675867, N'Ardeleanu', N'Alexandru', N'Bd Cheii nr 10', N'Roman', N'0747843211', CAST(0x30060B00 AS Date), CAST(0xF52F0B00 AS Date), CAST(0xFC380B00 AS Date), N'M', N'9678765443223456789869', 11, 28)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (885567, 1830511675867, N'Dragan', N'Florin', N'Str Starduintei nr 23', N'Roman', N'0799876543', CAST(0x480C0B00 AS Date), CAST(0xAB300B00 AS Date), CAST(0xFC380B00 AS Date), N'M', N'2434759986756453264769', 5, 25)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (889654, 1570808578695, N'Matei', N'Ionut', N'Str. Racari nr 29', N'Roman', N'0748573847', CAST(0x89E70A00 AS Date), CAST(0x25360B00 AS Date), CAST(0x8C380B00 AS Date), N'M', N'4856978466775588447755', 1, 26)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (906756, 1780418675867, N'Ramon', N'Razvan', N'Bd Unirii nr 43', N'Roman', N'0776544301', CAST(0x0F050B00 AS Date), CAST(0xFF260B00 AS Date), CAST(0x10340B00 AS Date), N'M', N'7658697876543675990087', 2, 32)
INSERT [dbo].[Angajati] ([Marca_angajati], [CNP], [Nume], [Prenume], [Adresa], [Nationalitate], [Telefon], [Data_nasterii], [Data_angajare], [Data_incheiere_contract], [Gen], [IBAN], [ID_orase], [ID_banca]) VALUES (998866, 1850304578697, N'Mihai', N'Sorin', N'Cal.Crangasi nr.10', N'Roman', N'0758637485', CAST(0xFD0E0B00 AS Date), CAST(0xA0380B00 AS Date), CAST(0xAD380B00 AS Date), N'M', N'7865432477558866996688', 3, 28)
/****** Object:  StoredProcedure [dbo].[add_Banca]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[add_Banca]
	-- Add the parameters for the stored procedure here
	@id_banca INT,
	@nume_banca VARCHAR(MAX) = NULL,
	@comision decimal(18,0) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SET @nume_banca = (SELECT COALESCE( @nume_banca, (SELECT Nume_banci from dbo.Banci WHERE ID_banci = @id_banca)));
	SET @comision = (SELECT COALESCE( @comision, (SELECT Comision from dbo.Banci WHERE ID_banci = @id_banca)));

	update dbo.Banci set Nume_banci = @nume_banca, Comision = @comision WHERE ID_banci = @id_banca;
END
GO
/****** Object:  StoredProcedure [dbo].[adaugaUtilizator]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[adaugaUtilizator]
	-- Add the parameters for the stored procedure here
	@Utilizator VARCHAR(40),
	@Parola VARCHAR(200)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @exists INT;
    -- Insert statements for procedure here
	
	SELECT @exists = COUNT(*) FROM dbo.Utilizatori WHERE Utilizator = @Utilizator;
	IF ( @exists = 0 )
	BEGIN
		INSERT INTO dbo.Utilizatori
		VALUES( @Utilizator, CONVERT(VARCHAR(32), HashBytes('MD5', @Parola), 2) );
	END
END
GO
/****** Object:  StoredProcedure [dbo].[deleteDepartamente]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteDepartamente]
	-- Add the parameters for the stored procedure here
	@ID_dpt int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE from dbo.Departamente where ID_dpt=@ID_dpt
END
GO
/****** Object:  StoredProcedure [dbo].[deleteAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteAngajati] 
	-- Add the parameters for the stored procedure here
	@Marca_angajati INT
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	DELETE FROM dbo.Angajati 
	WHERE Marca_angajati = @Marca_angajati;
	
END
GO
/****** Object:  Table [dbo].[Concedii_angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concedii_angajati](
	[ID_concedii_angajati] [int] IDENTITY(1,1) NOT NULL,
	[An] [int] NOT NULL,
	[Total_zile] [int] NULL,
	[Zile_ramase] [int] NULL,
	[Marca_angajat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_concedii_angajati] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Concedii_angajati] ON
INSERT [dbo].[Concedii_angajati] ([ID_concedii_angajati], [An], [Total_zile], [Zile_ramase], [Marca_angajat]) VALUES (1, 2008, 14, 4, 334455)
INSERT [dbo].[Concedii_angajati] ([ID_concedii_angajati], [An], [Total_zile], [Zile_ramase], [Marca_angajat]) VALUES (2, 2009, 20, 10, 445678)
INSERT [dbo].[Concedii_angajati] ([ID_concedii_angajati], [An], [Total_zile], [Zile_ramase], [Marca_angajat]) VALUES (3, 2008, 31, 20, 998866)
INSERT [dbo].[Concedii_angajati] ([ID_concedii_angajati], [An], [Total_zile], [Zile_ramase], [Marca_angajat]) VALUES (4, 2010, 20, 2, 675485)
INSERT [dbo].[Concedii_angajati] ([ID_concedii_angajati], [An], [Total_zile], [Zile_ramase], [Marca_angajat]) VALUES (9, 2014, 30, 20, 998866)
INSERT [dbo].[Concedii_angajati] ([ID_concedii_angajati], [An], [Total_zile], [Zile_ramase], [Marca_angajat]) VALUES (10, 2014, 30, 2, 334455)
SET IDENTITY_INSERT [dbo].[Concedii_angajati] OFF
/****** Object:  Table [dbo].[Concedii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concedii](
	[ID_concedii] [int] IDENTITY(1,1) NOT NULL,
	[Data_start] [date] NOT NULL,
	[Data_end] [date] NOT NULL,
	[Nr_zile] [int] NOT NULL,
	[Marca_angajat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_concedii] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Concedii] ON
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (1, CAST(0xBE380B00 AS Date), CAST(0xC4380B00 AS Date), 6, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (2, CAST(0xBE380B00 AS Date), CAST(0xC4380B00 AS Date), 0, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (3, CAST(0xB7380B00 AS Date), CAST(0xBF380B00 AS Date), 8, 445678)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (4, CAST(0xB7380B00 AS Date), CAST(0xBF380B00 AS Date), 8, 445678)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (5, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (6, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (7, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (8, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (9, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (10, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (11, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (12, CAST(0xBE380B00 AS Date), CAST(0xC7380B00 AS Date), 9, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (13, CAST(0x01380B00 AS Date), CAST(0x02380B00 AS Date), 1, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (14, CAST(0xB6380B00 AS Date), CAST(0xB8380B00 AS Date), 2, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (15, CAST(0xB6380B00 AS Date), CAST(0xB8380B00 AS Date), 2, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (16, CAST(0xB6380B00 AS Date), CAST(0xB8380B00 AS Date), 2, 334455)
INSERT [dbo].[Concedii] ([ID_concedii], [Data_start], [Data_end], [Nr_zile], [Marca_angajat]) VALUES (17, CAST(0xB6380B00 AS Date), CAST(0xB8380B00 AS Date), 2, 334455)
SET IDENTITY_INSERT [dbo].[Concedii] OFF
/****** Object:  Table [dbo].[Evaluari]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluari](
	[ID_evaluari] [int] IDENTITY(1,1) NOT NULL,
	[Nota] [decimal](4, 1) NULL,
	[Data_evaluare] [date] NOT NULL,
	[Observatii] [nvarchar](max) NOT NULL,
	[Marca_angajat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_evaluari] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamente_angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamente_angajati](
	[Marca_angajat] [int] NULL,
	[ID_dpt] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functii_angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functii_angajati](
	[Marca_angajat] [int] NULL,
	[ID_functie] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[insertAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertAngajati]
	-- Add the parameters for the stored procedure here
	@Marca_angajati INT,
	@CNP BIGINT,
	@Nume NVARCHAR(max),
	@Prenume NVARCHAR(max),
	@Adresa NVARCHAR(max),
	@Nationalitate NVARCHAR(50),
	@Telefon BIGINT,
	@Data_nasterii DATE,
	@Data_angajare DATE,
	@Data_incheiere_contract DATE,
	@Gen CHAR(1),
	@IBAN VARCHAR(max),
	@ID_banca int,
	@ID_orase int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO dbo.Angajati(
		Marca_angajati,
		CNP,
		Nume,
		Prenume,
		Adresa,
		Nationalitate,
		Telefon,
		Data_nasterii,
		Data_angajare,
		Data_incheiere_contract,
		Gen,
		IBAN,
		ID_banca,
		ID_orase
	)
	VALUES(
		@Marca_angajati,
		@CNP,
		@Nume,
		@Prenume,
		@Adresa,
		@Nationalitate,
		@Telefon,
		@Data_nasterii,
		@Data_angajare,
		@Data_incheiere_contract,
		@Gen,
		@IBAN,
		@ID_banca,
		@ID_orase
	);
    
END
GO
/****** Object:  StoredProcedure [dbo].[updateAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateAngajati]
	-- Add the parameters for the stored procedure here
	@Marca_angajati INT,
	@CNP BIGINT = NULL,
	@Nume NVARCHAR(max)= NULL,
	@Prenume NVARCHAR(max)= NULL,
	@Adresa NVARCHAR(max)= NULL,
	@Nationalitate NVARCHAR(50)= NULL,
	@Telefon BIGINT= NULL,
	@Data_nasterii DATE= NULL,
	@Data_angajare DATE= NULL,
	@Data_incheiere_contract DATE= NULL,
	@Gen CHAR(1)= NULL,
	@IBAN VARCHAR(max)= NULL,
	@Banca VARCHAR(50)= NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @CNP = (SELECT COALESCE( @CNP, (SELECT CNP from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Nume = (SELECT COALESCE( @Nume, (SELECT Nume from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Prenume = (SELECT COALESCE( @Prenume, (SELECT Prenume from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Adresa = (SELECT COALESCE( @Adresa, (SELECT Adresa from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Nationalitate = (SELECT COALESCE( @Nationalitate, (SELECT Nationalitate from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Telefon = (SELECT COALESCE( @Telefon, (SELECT Telefon from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Data_nasterii = (SELECT COALESCE( @Data_nasterii, (SELECT Data_nasterii from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Data_angajare = (SELECT COALESCE( @Data_angajare, (SELECT Data_angajare from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Data_incheiere_contract = (SELECT COALESCE( @Data_incheiere_contract, (SELECT Data_incheiere_contract from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Gen = (SELECT COALESCE( @Gen, (SELECT Gen from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @IBAN = (SELECT COALESCE( @IBAN, (SELECT IBAN from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	SET @Banca = (SELECT COALESCE( @Banca, (SELECT Banca from dbo.Angajati WHERE Marca_angajati = @Marca_angajati)));
	
	UPDATE dbo.Angajati SET 
	CNP=@CNP,
	Nume=@Nume,
	Prenume=@Prenume,
	Adresa=@Adresa,
	Nationalitate=@Nationalitate,
	Telefon=@Telefon,
	Data_nasterii=@Data_nasterii,
	Data_angajare=@Data_angajare,
	Data_incheiere_contract=@Data_incheiere_contract,
	IBAN=@IBAN,
	Banca=@Banca
	WHERE Marca_angajati = @Marca_angajati;
END
GO
/****** Object:  Table [dbo].[Studii_angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studii_angajati](
	[Marca_angajat] [int] NULL,
	[ID_studiu] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[rpt_AngajatiPerOras]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rpt_AngajatiPerOras]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT COUNT(an.Marca_angajati) as [Numar angajati],
		   [or].Denumire_orase as [Oras]
	FROM
		dbo.Angajati an
		LEFT JOIN dbo.Orase [or]
		ON [an].[ID_orase] = [or].[ID_orase]
		GROUP BY [or].Denumire_orase
END
GO
/****** Object:  StoredProcedure [dbo].[getAngajatiList]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAngajatiList] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Marca_angajati,Nume,Prenume from dbo.Angajati
END
GO
/****** Object:  Table [dbo].[Nivel_studii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nivel_studii](
	[ID_nivel_studii] [int] IDENTITY(1,1) NOT NULL,
	[Denumire_nivel_studii] [nvarchar](50) NOT NULL,
	[Marca_angajat] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_nivel_studii] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salarii_angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salarii_angajati](
	[Marca_angajat] [int] NULL,
	[ID_salariu] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Salarii_angajati] ([Marca_angajat], [ID_salariu]) VALUES (123221, 6)
/****** Object:  StoredProcedure [dbo].[updateConcediiAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateConcediiAngajati]
	-- Add the parameters for the stored procedure here
	@ID_concedii_angajati INT,
	@An INT =NULL,
	@Total_zile INT =NULL,
	@Zile_ramase INT =NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @An = (SELECT COALESCE( @An, (SELECT An from dbo.Concedii_angajati WHERE ID_concedii_angajati = @ID_concedii_angajati)));
	SET @Total_zile = (SELECT COALESCE( @Total_zile, (SELECT Total_zile from dbo.Concedii_angajati WHERE ID_concedii_angajati = @ID_concedii_angajati)));
	SET @Zile_ramase = (SELECT COALESCE( @Zile_ramase, (SELECT Zile_ramase from dbo.Concedii_angajati WHERE ID_concedii_angajati = @ID_concedii_angajati)));
	UPDATE dbo.Concedii_angajati SET
	An=@An,
	Total_zile=@Total_zile,
	Zile_ramase=@Zile_ramase 
	WHERE ID_concedii_angajati = @ID_concedii_angajati;
END
GO
/****** Object:  StoredProcedure [dbo].[updateConcedii_Angajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateConcedii_Angajati]
	-- Add the parameters for the stored procedure here
	
	@ID_concedii_angajati int,
	@An int=NULL,
	@Total_zile int =NULL,
	@Zile_ramase int = NULL,
	@Marca_angajat int = NULL
	
	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	
	set @An = (select coalesce (@An,(select An from Concedii_angajati where ID_concedii_angajati=@ID_concedii_angajati)));
	set @Total_zile = (select coalesce (@Total_zile,(select Total_zile from Concedii_angajati where ID_concedii_angajati=@ID_concedii_angajati)));
	set @Zile_ramase = (select coalesce (@Zile_ramase,(select Zile_ramase from Concedii_angajati where ID_concedii_angajati=@ID_concedii_angajati)));
	set @Marca_angajat = (select coalesce (@Marca_angajat,(select Marca_angajat from Concedii_angajati where ID_concedii_angajati=@ID_concedii_angajati)));
	
	update Concedii_angajati set An=@An,Total_zile=@Total_zile,Zile_ramase=@Zile_ramase,Marca_angajat=@Marca_angajat
	where ID_concedii_angajati=@ID_concedii_angajati
	
END
GO
/****** Object:  StoredProcedure [dbo].[rpt_PlanificareConcedii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rpt_PlanificareConcedii]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SELECT
	an.Marca_angajati as Marca,
	an.Nume,
	an.Prenume,
	COALESCE( dpt.Denumire_dpt, 'N/A' ) as Departament,
	CONVERT(varchar,co.Data_start,105) as [Data Inceput],
	CONVERT(varchar,co.Data_end,105) as [Data Sfarsit],
	ca.Total_zile as [Zile initiale],
	ca.Zile_ramase as [Zile ramase]
FROM dbo.Concedii_angajati ca
	LEFT JOIN dbo.Angajati an
		ON ca.Marca_angajat = an.Marca_angajati
	LEFT JOIN dbo.Concedii co
		ON ca.ID_concedii_angajati = co.ID_concedii
	LEFT JOIN dbo.Departamente_angajati dpa
		ON an.Marca_angajati = dpa.Marca_angajat
	LEFT JOIN dbo.Departamente dpt
		ON dpa.ID_dpt = dpt.ID_dpt
	
END
GO
/****** Object:  StoredProcedure [dbo].[rpt_ListaAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[rpt_ListaAngajati]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT
		an.Marca_angajati as Marca,
		an.CNP,
		an.Nume,
		an.Prenume,
		an.Adresa,
		an.Nationalitate,
		an.Telefon,
		Convert(varchar,an.Data_nasterii,105) as [Data Nasterii],
		Convert(varchar,an.Data_angajare,105) as [Data Angajare],
		an.Gen,
		COALESCE( fn.Denumire, 'N/A' ) as Functie,
		COALESCE( dpt.Denumire_dpt, 'N/A' ) as Departament
	FROM dbo.Angajati an
	 LEFT JOIN dbo.Orase os
		ON an.ID_orase = os.ID_orase
	 LEFT JOIN dbo.Functii_angajati fa
		ON an.Marca_angajati = fa.Marca_angajat
	 LEFT JOIN dbo.Functii fn
		ON fa.ID_functie = fn.ID_functii
	 LEFT JOIN dbo.Departamente_angajati dpa
		ON an.Marca_angajati = dpa.Marca_angajat
	 LEFT JOIN dbo.Departamente dpt
		ON dpa.ID_dpt = dpt.ID_dpt

END
GO
/****** Object:  StoredProcedure [dbo].[insertSalarii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertSalarii]
	-- Add the parameters for the stored procedure here
	@Marca_angajat INT,
	@Brut DECIMAL(18,2),
	@Data_plata DATE
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @SCOPEID INT

    INSERT INTO dbo.Salarii(Brut,Data_plata) VALUES(@Brut,@Data_plata);
    SELECT @SCOPEID = SCOPE_IDENTITY();
    INSERT INTO dbo.Salarii_angajati VALUES(@Marca_angajat, @SCOPEID);
END
GO
/****** Object:  StoredProcedure [dbo].[insertEvaluari]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertEvaluari] 
	-- Add the parameters for the stored procedure here
	@Nota DECIMAL (4,1),
	@Data_evaluare DATE,
	@Observatii NVARCHAR(max)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.Evaluari(Nota,Data_evaluare,Observatii)
    VALUES(@Nota,@Data_evaluare,@Observatii)
END
GO
/****** Object:  StoredProcedure [dbo].[insertConcediiAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertConcediiAngajati]
	-- Add the parameters for the stored procedure here
	@An INT,
	@Total_zile INT,
	@Zile_ramase INT,
	@Marca_angajat INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if exists(select Marca_angajat, An from dbo.Concedii_angajati where Marca_angajat=@Marca_angajat and An=@An)
	
	BEGIN
		print 'Nu se poate aloca mai mult de un concediu pe an pentru un anumit angajat!'
	END
	
	else
	BEGIN
	
    INSERT INTO dbo.Concedii_angajati (An,Total_zile,Zile_ramase,Marca_angajat)
    VALUES (@An,@Total_zile,@Zile_ramase,@Marca_angajat);
    
    END
END
GO
/****** Object:  StoredProcedure [dbo].[insertConcedii]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertConcedii]
	-- Add the parameters for the stored procedure here
	@Marca_angajat int,
	@Data_start date,
	@Data_end date,
	@Nr_zile int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	
	--IF NOT EXISTS (select )
	IF @Nr_zile < (select Top 1 Zile_ramase from dbo.Concedii_angajati 
	where Marca_angajat=@Marca_angajat and YEAR(@Data_start)=YEAR(GETDATE()) and An = CONVERT(int,YEAR(GETDATE())))
	
	BEGIN
		insert into dbo.Concedii (Marca_angajat,Data_start,Data_end,Nr_zile) 
		values (@Marca_angajat,@Data_start,@Data_end,@Nr_zile)
		
		UPDATE dbo.Concedii_angajati set Zile_ramase = Zile_ramase-@Nr_zile 
		where Marca_angajat=@Marca_angajat and YEAR(@Data_start)=YEAR(GETDATE()) and An = CONVERT(int,YEAR(GETDATE()) )
		
		SELECT 'Concediul a fost alocat!'
	END
	
	ELSE
		SELECT 'Insuficiente zile ramase! ('+CAST((select Zile_ramase from dbo.Concedii_angajati 
											 where Marca_angajat=@Marca_angajat and 
											 YEAR(@Data_start)=YEAR(GETDATE()) and 
											 An = CONVERT(int,YEAR(GETDATE()))) AS VARCHAR(3)) + ')'
	
END
GO
/****** Object:  StoredProcedure [dbo].[getConcediiAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getConcediiAngajati]
	-- Add the parameters for the stored procedure here
	
	@An int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
		c.ID_concedii_angajati as ID,
		a.Nume + ' ' + a.Prenume as Nume,
		c.An,
		c.Total_zile as [Total Zile],
		c.Zile_ramase as [Zile ramase]
	from Concedii_angajati c
	LEFT JOIN dbo.Angajati a ON
	c.Marca_angajat = a.Marca_angajati
	where c.An=@An
END
GO
/****** Object:  StoredProcedure [dbo].[getAniConcediiAngajati]    Script Date: 07/04/2014 00:10:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAniConcediiAngajati] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DISTINCT An from dbo.Concedii_angajati
END
GO
/****** Object:  ForeignKey [FK__Angajati__ID_ban__6754599E]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Angajati]  WITH CHECK ADD FOREIGN KEY([ID_banca])
REFERENCES [dbo].[Banci] ([ID_banci])
GO
/****** Object:  ForeignKey [FK__Angajati__ID_ora__66603565]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Angajati]  WITH CHECK ADD FOREIGN KEY([ID_orase])
REFERENCES [dbo].[Orase] ([ID_orase])
GO
/****** Object:  ForeignKey [FK__Concedii___Marca__2B3F6F97]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Concedii_angajati]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Concedii__Marca___4D94879B]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Concedii]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Evaluari__Marca___145C0A3F]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Evaluari]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Departame__ID_dp__2E1BDC42]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Departamente_angajati]  WITH CHECK ADD FOREIGN KEY([ID_dpt])
REFERENCES [dbo].[Departamente] ([ID_dpt])
GO
/****** Object:  ForeignKey [FK__Departame__Marca__2D27B809]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Departamente_angajati]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Functii_a__ID_fu__30F848ED]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Functii_angajati]  WITH CHECK ADD FOREIGN KEY([ID_functie])
REFERENCES [dbo].[Functii] ([ID_functii])
GO
/****** Object:  ForeignKey [FK__Functii_a__Marca__300424B4]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Functii_angajati]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Studii_an__ID_st__36B12243]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Studii_angajati]  WITH CHECK ADD FOREIGN KEY([ID_studiu])
REFERENCES [dbo].[Studii] ([ID_studii])
GO
/****** Object:  ForeignKey [FK__Studii_an__Marca__35BCFE0A]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Studii_angajati]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Nivel_stu__Marca__787EE5A0]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Nivel_studii]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
/****** Object:  ForeignKey [FK__Salarii_a__ID_sa__33D4B598]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Salarii_angajati]  WITH CHECK ADD FOREIGN KEY([ID_salariu])
REFERENCES [dbo].[Salarii] ([ID_salarii])
GO
/****** Object:  ForeignKey [FK__Salarii_a__Marca__32E0915F]    Script Date: 07/04/2014 00:10:04 ******/
ALTER TABLE [dbo].[Salarii_angajati]  WITH CHECK ADD FOREIGN KEY([Marca_angajat])
REFERENCES [dbo].[Angajati] ([Marca_angajati])
GO
