USE [web]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Tuan] [int] NULL,
	[Nhom_ID] [int] NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [text] NULL,
	[ThoiGianBaoCao] [date] NULL,
	[FileUpload] [varchar](500) NULL,
 CONSTRAINT [PK_report] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu_NguoiDung]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu_NguoiDung](
	[NguoiDung_ID] [int] NOT NULL,
	[ChucVu_ID] [int] NOT NULL,
 CONSTRAINT [PK_role_user] PRIMARY KEY CLUSTERED 
(
	[NguoiDung_ID] ASC,
	[ChucVu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeTai]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeTai](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDeTai] [nvarchar](50) NULL,
	[YeuCauDeTai] [nvarchar](500) NULL,
	[ThoiGian] [nchar](10) NULL,
 CONSTRAINT [PK_topic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](10) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Nhom_ID] [int] NOT NULL,
	[DeTai_ID] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung_QuyenHan]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung_QuyenHan](
	[QuyenHan_ID] [int] NOT NULL,
	[NguoiDung_ID] [int] NOT NULL,
 CONSTRAINT [PK_NguoiDung_QuyenHan] PRIMARY KEY CLUSTERED 
(
	[QuyenHan_ID] ASC,
	[NguoiDung_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhom]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhom](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaNhom] [varchar](10) NOT NULL,
 CONSTRAINT [PK_group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BaoCao_ID] [int] NULL,
	[NoiDung] [text] NULL,
	[TieuDe] [nvarchar](50) NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenHan]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenHan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyenHan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QuyenHan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenHan_ChucVu]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenHan_ChucVu](
	[ChucVu_ID] [int] NOT NULL,
	[QuyenHan_ID] [int] NOT NULL,
 CONSTRAINT [PK_QuyenHan_ChucVu] PRIMARY KEY CLUSTERED 
(
	[QuyenHan_ID] ASC,
	[ChucVu_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([ID], [TenChucVu]) VALUES (1, N'Giáo viên')
INSERT [dbo].[ChucVu] ([ID], [TenChucVu]) VALUES (2, N'Sinh viên')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[QuyenHan] ON 

INSERT [dbo].[QuyenHan] ([ID], [TenQuyenHan]) VALUES (1, N'Thêm')
INSERT [dbo].[QuyenHan] ([ID], [TenQuyenHan]) VALUES (2, N'Xóa')
INSERT [dbo].[QuyenHan] ([ID], [TenQuyenHan]) VALUES (3, N'Sửa')
SET IDENTITY_INSERT [dbo].[QuyenHan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_TenDangNhap]    Script Date: 11/17/2020 11:25:43 PM ******/
ALTER TABLE [dbo].[NguoiDung] ADD  CONSTRAINT [unique_TenDangNhap] UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaoCao]  WITH CHECK ADD  CONSTRAINT [FK_BaoCao_Nhom] FOREIGN KEY([Nhom_ID])
REFERENCES [dbo].[Nhom] ([ID])
GO
ALTER TABLE [dbo].[BaoCao] CHECK CONSTRAINT [FK_BaoCao_Nhom]
GO
ALTER TABLE [dbo].[ChucVu_NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_NguoiDung_NguoiDung] FOREIGN KEY([NguoiDung_ID])
REFERENCES [dbo].[NguoiDung] ([ID])
GO
ALTER TABLE [dbo].[ChucVu_NguoiDung] CHECK CONSTRAINT [FK_PhanQuyen_NguoiDung_NguoiDung]
GO
ALTER TABLE [dbo].[ChucVu_NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_NguoiDung_PhanQuyen] FOREIGN KEY([ChucVu_ID])
REFERENCES [dbo].[ChucVu] ([ID])
GO
ALTER TABLE [dbo].[ChucVu_NguoiDung] CHECK CONSTRAINT [FK_PhanQuyen_NguoiDung_PhanQuyen]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_DeTai] FOREIGN KEY([DeTai_ID])
REFERENCES [dbo].[DeTai] ([ID])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_DeTai]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_Nhom] FOREIGN KEY([Nhom_ID])
REFERENCES [dbo].[Nhom] ([ID])
GO
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_Nhom]
GO
ALTER TABLE [dbo].[NguoiDung_QuyenHan]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_QuyenHan_NguoiDung] FOREIGN KEY([NguoiDung_ID])
REFERENCES [dbo].[NguoiDung] ([ID])
GO
ALTER TABLE [dbo].[NguoiDung_QuyenHan] CHECK CONSTRAINT [FK_NguoiDung_QuyenHan_NguoiDung]
GO
ALTER TABLE [dbo].[NguoiDung_QuyenHan]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_QuyenHan_QuyenHan] FOREIGN KEY([QuyenHan_ID])
REFERENCES [dbo].[QuyenHan] ([ID])
GO
ALTER TABLE [dbo].[NguoiDung_QuyenHan] CHECK CONSTRAINT [FK_NguoiDung_QuyenHan_QuyenHan]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoi_BaoCao] FOREIGN KEY([BaoCao_ID])
REFERENCES [dbo].[BaoCao] ([ID])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK_PhanHoi_BaoCao]
GO
ALTER TABLE [dbo].[QuyenHan_ChucVu]  WITH CHECK ADD  CONSTRAINT [FK_QuyenHan_ChucVu_ChucVu] FOREIGN KEY([ChucVu_ID])
REFERENCES [dbo].[ChucVu] ([ID])
GO
ALTER TABLE [dbo].[QuyenHan_ChucVu] CHECK CONSTRAINT [FK_QuyenHan_ChucVu_ChucVu]
GO
ALTER TABLE [dbo].[QuyenHan_ChucVu]  WITH CHECK ADD  CONSTRAINT [FK_QuyenHan_ChucVu_QuyenHan] FOREIGN KEY([QuyenHan_ID])
REFERENCES [dbo].[QuyenHan] ([ID])
GO
ALTER TABLE [dbo].[QuyenHan_ChucVu] CHECK CONSTRAINT [FK_QuyenHan_ChucVu_QuyenHan]
GO
/****** Object:  StoredProcedure [dbo].[NguoiDung_Login]    Script Date: 11/17/2020 11:25:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[NguoiDung_Login]
	@TenDangNhap varchar(10),
	@MatKhau varchar(50)
as
begin
	declare @count int 
	declare @res bit 
	select @count=count(*) from NguoiDung where TenDangNhap=@TenDangNhap and MatKhau=@MatKhau
	if(@count >0)
		set @res=1
	else 
		set @res=0
	select @res
end
GO
