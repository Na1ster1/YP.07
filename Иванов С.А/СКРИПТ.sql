USE [18ip34]
GO
/****** Object:  Table [dbo].[Администратор]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Администратор](
	[ID администратора] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[График] [nvarchar](50) NOT NULL,
	[ID смены] [int] NOT NULL,
 CONSTRAINT [PK_Администратор] PRIMARY KEY CLUSTERED 
(
	[ID администратора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Блюдо]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Блюдо](
	[[ID блюда] [int] NOT NULL,
	[Наименование блюда] [nvarchar](50) NOT NULL,
	[Объем порции(граммы)] [nvarchar](50) NOT NULL,
	[Стоимость] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Блюдо] PRIMARY KEY CLUSTERED 
(
	[[ID блюда] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказ]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказ](
	[ID заказа] [int] NOT NULL,
	[Номер стола] [nvarchar](50) NOT NULL,
	[Время] [time](7) NOT NULL,
	[Код сотрудника] [int] NOT NULL,
	[ID повара] [int] NOT NULL,
	[ID блюда] [int] NOT NULL,
 CONSTRAINT [PK_Заказ] PRIMARY KEY CLUSTERED 
(
	[ID заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент1]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент1](
	[ID клиента] [int] NOT NULL,
	[Номер стола] [nvarchar](50) NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[ID заказа] [int] NOT NULL,
 CONSTRAINT [PK_Клиент1] PRIMARY KEY CLUSTERED 
(
	[ID клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Официант]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Официант](
	[ID официанта] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[ID смены] [int] NOT NULL,
	[График] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Официант] PRIMARY KEY CLUSTERED 
(
	[ID официанта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ресторан]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ресторан](
	[ID Ресторана] [int] NOT NULL,
	[ID клиента] [int] NOT NULL,
	[ID Заказа] [int] NOT NULL,
	[ID смены] [int] NOT NULL,
 CONSTRAINT [PK_Ресторан] PRIMARY KEY CLUSTERED 
(
	[ID Ресторана] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Смены]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Смены](
	[ID смены] [int] NOT NULL,
	[ID Управляющего] [int] NOT NULL,
	[ID Администратора] [int] NOT NULL,
	[ID шеф повара] [int] NOT NULL,
	[ID официанта] [int] NOT NULL,
 CONSTRAINT [PK_Смены] PRIMARY KEY CLUSTERED 
(
	[ID смены] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Управляющий]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Управляющий](
	[ID управляющего] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[График] [nvarchar](50) NOT NULL,
	[ID смены] [int] NOT NULL,
 CONSTRAINT [PK_Управляющий] PRIMARY KEY CLUSTERED 
(
	[ID управляющего] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Шеф повар]    Script Date: 01.12.2021 8:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Шеф повар](
	[ID повара] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[График] [nvarchar](50) NOT NULL,
	[ID смены] [int] NOT NULL,
 CONSTRAINT [PK_Шеф повар] PRIMARY KEY CLUSTERED 
(
	[ID повара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Блюдо] FOREIGN KEY([ID блюда])
REFERENCES [dbo].[Блюдо] ([[ID блюда])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Блюдо]
GO
ALTER TABLE [dbo].[Ресторан]  WITH CHECK ADD  CONSTRAINT [FK_Ресторан_Заказ] FOREIGN KEY([ID Заказа])
REFERENCES [dbo].[Заказ] ([ID заказа])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ресторан] CHECK CONSTRAINT [FK_Ресторан_Заказ]
GO
ALTER TABLE [dbo].[Ресторан]  WITH CHECK ADD  CONSTRAINT [FK_Ресторан_Клиент1] FOREIGN KEY([ID клиента])
REFERENCES [dbo].[Клиент1] ([ID клиента])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ресторан] CHECK CONSTRAINT [FK_Ресторан_Клиент1]
GO
ALTER TABLE [dbo].[Ресторан]  WITH CHECK ADD  CONSTRAINT [FK_Ресторан_Смены] FOREIGN KEY([ID смены])
REFERENCES [dbo].[Смены] ([ID смены])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ресторан] CHECK CONSTRAINT [FK_Ресторан_Смены]
GO
ALTER TABLE [dbo].[Смены]  WITH CHECK ADD  CONSTRAINT [FK_Смены_Администратор] FOREIGN KEY([ID Администратора])
REFERENCES [dbo].[Администратор] ([ID администратора])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Смены] CHECK CONSTRAINT [FK_Смены_Администратор]
GO
ALTER TABLE [dbo].[Смены]  WITH CHECK ADD  CONSTRAINT [FK_Смены_Официант] FOREIGN KEY([ID официанта])
REFERENCES [dbo].[Официант] ([ID официанта])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Смены] CHECK CONSTRAINT [FK_Смены_Официант]
GO
ALTER TABLE [dbo].[Смены]  WITH CHECK ADD  CONSTRAINT [FK_Смены_Управляющий] FOREIGN KEY([ID Управляющего])
REFERENCES [dbo].[Управляющий] ([ID управляющего])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Смены] CHECK CONSTRAINT [FK_Смены_Управляющий]
GO
ALTER TABLE [dbo].[Смены]  WITH CHECK ADD  CONSTRAINT [FK_Смены_Шеф повар] FOREIGN KEY([ID шеф повара])
REFERENCES [dbo].[Шеф повар] ([ID повара])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Смены] CHECK CONSTRAINT [FK_Смены_Шеф повар]
GO
