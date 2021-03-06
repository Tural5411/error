CREATE TABLE [dbo].[tbl_admin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_category]    Script Date: 25.06.2020 19:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[PhotoId] [int] NULL,
	[Aciqlama] [nvarchar](500) NULL,
	[Keyword] [nvarchar](500) NULL,
 CONSTRAINT [PK_tbl_category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_comment]    Script Date: 25.06.2020 19:53:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[PostId] [int] NULL,
	[Context] [nvarchar](max) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Tarixi] [datetime] NULL,
 CONSTRAINT [PK_tbl_comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_etiket]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_etiket](
	[EtiketId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_etiket] PRIMARY KEY CLUSTERED 
(
	[EtiketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_muellif_takip]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_muellif_takip](
	[UserId] [int] NOT NULL,
	[MuellifId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_muellif_takip] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[MuellifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_post]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_post](
	[PostId] [int] IDENTITY(1,1) NOT NULL,
	[MuellifId] [int] NULL,
	[Baslig] [nvarchar](300) NULL,
	[Context] [nvarchar](max) NULL,
	[PhotoId] [int] NULL,
	[CategoryId] [int] NULL,
	[Tarixi] [datetime] NULL,
	[Baxis] [int] NULL,
	[Beyenme] [int] NULL,
	[Keyword] [nvarchar](500) NULL,
	[QebulEdildi] [bit] NULL,
	[Aktiv] [bit] NULL,
 CONSTRAINT [PK_tbl_post_1] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_post_etiket]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_post_etiket](
	[PostId] [int] NOT NULL,
	[EtiketId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_post_etiket] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC,
	[EtiketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_rol]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rol](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_rol] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sekil]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sekil](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[Kicik] [nvarchar](500) NULL,
	[Orta] [nvarchar](500) NULL,
	[Boyuk] [nvarchar](500) NULL,
	[PostId] [int] NULL,
 CONSTRAINT [PK_tbl_sekil] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_userrol]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userrol](
	[userrolId] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_userrol] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 25.06.2020 19:53:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Sifre] [nvarchar](500) NULL,
	[Mail] [nvarchar](70) NULL,
	[DogumTarixi] [datetime] NULL,
	[QeydiyyatTarixi] [datetime] NULL,
	[PhotoId] [int] NULL,
	[Yazar] [bit] NULL,
	[Aktiv] [bit] NULL,
	[QebulEdildi] [bit] NULL,
	[Cinsi] [bit] NULL,
 CONSTRAINT [PK_tbl_users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_category] ON 

INSERT [dbo].[tbl_category] ([CategoryId], [Ad], [PhotoId], [Aciqlama], [Keyword]) VALUES (1, N'Texnologiya', 6, N'Texnologiya', N'Texnologiya')
INSERT [dbo].[tbl_category] ([CategoryId], [Ad], [PhotoId], [Aciqlama], [Keyword]) VALUES (2, N'Canlilar', 9, N'Canlilar', N'Canlilar')
INSERT [dbo].[tbl_category] ([CategoryId], [Ad], [PhotoId], [Aciqlama], [Keyword]) VALUES (3, N'Riyaziyyat', 36, N'Riyaziyyat', N'Riyaziyyat')
INSERT [dbo].[tbl_category] ([CategoryId], [Ad], [PhotoId], [Aciqlama], [Keyword]) VALUES (8, N'Zoologiya', 36, N'Zoologiya', N'Zoologiya')
INSERT [dbo].[tbl_category] ([CategoryId], [Ad], [PhotoId], [Aciqlama], [Keyword]) VALUES (9, N'Tebiet', 37, N'tebiet', N'tebiet')
SET IDENTITY_INSERT [dbo].[tbl_category] OFF
SET IDENTITY_INSERT [dbo].[tbl_etiket] ON 

INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (1, N'tural')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (2, N'hemze')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (3, N'nicat')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (4, N'peysel')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (5, N'Musa')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (6, N'Din')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (7, N'Yehudi')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (8, N'kosmos')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (9, N'qaradelik')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (10, N'elmadami')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (11, N'Atmosfer')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (12, N'Kosmos')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (13, N'Element')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (14, N'Kimya')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (15, N'Qizil')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (16, N'Almaz')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (17, N'Homoseksual')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (18, N'Növ.Cinsiyyət')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (19, N'Tural yaxsi oglandi')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (20, N'hawking')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (21, N'blackhole')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (22, N' Mars')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (23, N'Qırmızı')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (24, N'planet')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (25, N'cosmos')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (26, N'terraform')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (27, N'sonsuzbilgi')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (28, N'maraqli ')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (29, N'')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (30, N'Pişik')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (31, N'Pişiklər')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (32, N'Psixalogiya')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (33, N'stratosfer')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (34, N'mezosfer')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (35, N'ekzosfer')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (36, N'təkamül biologiyası')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (37, N' elm ')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (38, N'psevdoelm ')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (39, N'genetika')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (40, N' Mutasiya')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (41, N'Albert')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (42, N'Einstein')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (43, N'AlberEinstein')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (44, N'Dahiler')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (45, N'asdsadsa')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (46, N'aaa')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (47, N'bbb')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (48, N'dasdsada')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (49, N'5G')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (50, N'5G Zererleri')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (51, N'5G Haqqinda')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (52, N'Israil')
INSERT [dbo].[tbl_etiket] ([EtiketId], [Ad]) VALUES (53, N'Siyonizm')
SET IDENTITY_INSERT [dbo].[tbl_etiket] OFF
SET IDENTITY_INSERT [dbo].[tbl_post] ON 

INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (10, 1, N'Aya heqiqeten gedildimi ?', N'Aya heqiqeten gedildimi ?Aya heqiqeten gedildimi ?Aya heqiqeten gedildimi ?', 7, 1, CAST(N'2020-06-02T16:52:18.980' AS DateTime), 73, 305, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (11, 1, N'Siyonizm haqqinda', N'dsadadadada', 6, 1, CAST(N'2020-06-06T14:39:04.180' AS DateTime), 2, 2, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (13, 8, N'Musa misirli idi', N'dsadadadadadsadsadasda', 9, 1, CAST(N'2020-06-06T20:03:02.960' AS DateTime), 6, 4, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (21, 8, N'Atmosfer harada bitir və Kosmos hardan başlayır?', N'<h3><strong><em>Əslində Yer kosmosun bir hissəsidir. Bununla yanaşı, &quot;kosmos&quot; termini &ccedil;ox vaxt Yer və onun atmosferinin xarici hissəsi nəzərdə tutulur.&nbsp;Atmosferin ən xarici təbəqəsi Yer səthindən təxminən 960 kilometr y&uuml;ksəklikdə bitir. Hətta 1000 kilometr y&uuml;ksəklikdə, Yer k&uuml;rəsinin ətrafında hidrogen atomlarından formalaşan bir bulud təbəqəsi var.&nbsp;Ancaq atmosferin ən xarici qatının sıxlığı &ccedil;ox aşağıdır. Buna g&ouml;rə harda bitəcəyini demək &ccedil;ətindir.</em></strong></h3>

<h3>&nbsp;</h3>

<blockquote>
<h1 style="background: rgb(238, 238, 238); border: 1px solid rgb(204, 204, 204); padding: 5px 10px;"><strong>TEHSIL MILLETIN GELECEYIDIR</strong></h1>
</blockquote>

<p>Beynəlxalq Aviasiya Federasiyasına (FAI) g&ouml;rə kosmosun dəniz səviyyəsindən təxminən 100 kilometr y&uuml;ksəklikdə başladığı g&uuml;man edilir. Karman limiti olaraq bilinən bu səviyyə, &quot;atmosferin sıxlığının &ccedil;ox aşağı olduğu &uuml;&ccedil;&uuml;n, bir hava nəqliyyatının aerodinamik q&uuml;vvələrin təsiri səbəbinə g&ouml;rə havada qalmasına imkan verməyəcək h&uuml;nd&uuml;rl&uuml;k&quot; olaraq təyin edilmişdir.</p>

<p>&nbsp;</p>

<p><em>Bu həddən y&uuml;ksəkliklərdə hava m&uuml;qavimətinin yaratdığı aerodinamik q&uuml;vvələr, hava nəqliyyatının havada qalmasına və nəzarət edilməsinə he&ccedil; bir təsir g&ouml;stərmir. Karman sərhədindən yuxarı bir cisim havada qalmaq &uuml;&ccedil;&uuml;n &ccedil;ox y&uuml;ksək s&uuml;rətlə hərəkət etməlidir. Bu s&uuml;rət, orbitə sabit hərəkət etmək &uuml;&ccedil;&uuml;n kosmik gəminin sahib olduğu orbital s&uuml;rətdir</em></p>
', 18, 1, CAST(N'2020-06-09T19:22:57.940' AS DateTime), 8, 3, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (22, 8, N'120 Element arasında niyə məhz qızıl bu qədər dəyərlidir?', N'<p>İnsanın qızıla duyduğu həsrət bir az qəribədir. Kimyəvi baxımdan qızıl he&ccedil; də maraqlı bir maddə deyil. Digər elementlərə &ccedil;ətinliklə reaksiyaya girir. Lakin yenə də 118 fərqli maddənin olduğu periodik cədvəldə insanın pul vahidi olaraq se&ccedil;diyi tək elementdir.</p>

<p>&nbsp;</p>

<p>Yaxşı bəs niyə? Məsələn niyə osmium ya da xrom deyil? Ya da siborgium?</p>

<p>&nbsp;</p>

<p>Bu sualı ilk soruşan adam mən deyiləm. Lakin &ouml;z&uuml;m&uuml; British Museumdakı Kolumbdan Əvvəlki Amerikadakı Qızıl Dizaynlar sərgisi kimi diqqəti cəlb edən bir məkanda bu sualı soruşan ilk adam olaraq d&uuml;ş&uuml;nmək istəyirəm. Tam burada incə bir şəkildə qıızıldan d&ouml;y&uuml;lm&uuml;ş bir zirehin dərhal yanında University College Londonda kimya professoru Andre Sella ilə g&ouml;r&uuml;ş&uuml;rəm. Sella periodik cədvəlin bir n&uuml;sxəsini &ccedil;ıxarır. Cədvəlin sağ tərəfinə işarə edərək &quot;Bəzi elementləri yox saymaq olduqca asandır&quot; deyir.</p>

<p>&nbsp;</p>

<p>Zəhərli pul istərsinizmi?</p>

<p>&nbsp;</p>

<p>&quot;Burada nəcib qazlar və halogenler var. Bir qaz he&ccedil; bir zaman bir pul vahidi ola bilməz. Ki&ccedil;ik bir ş&uuml;şə i&ccedil;ində pul vahidi olaraq bir az qaz daşımaq he&ccedil; də praktik deyil&quot; deyir. Və əlavə edir: &quot;Bir faktor da bu elementlərin rəngsiz olmasıdır. Ş&uuml;şənin i&ccedil;ində nə olduğunu necə bilə bilərsiniz ki?&quot; Digər iki maye element civə və brom g&uuml;ndəlik istilik və cazibə d&uuml;ş&uuml;n&uuml;ld&uuml;y&uuml;ndə &ccedil;ox bir əlverişsiz olardı. Ayrıca, ikisi də zəhərlidir. Pul olaraq istifadə etmək &uuml;&ccedil;&uuml;n &ccedil;ox da g&ouml;zəl bir &uuml;ns&uuml;r deyil. Eyni səbəblərdən arsen və onun kimi digər maddələri də istifadə edə bilməzdik.</p>

<p>&nbsp;</p>

<p>Sella g&ouml;zlərini periodik cədvəlin sol tərəfinə doğru s&uuml;r&uuml;şd&uuml;r&uuml;r. Və pı&ccedil;ıldayır: &quot;Bu tərəfdəki bir &ccedil;ox elementi də yox saya bilərik. Qələvi metallar və qələvi-torpaq metallar da &ccedil;ox asan reaksiyaya daxil olur. Bir &ccedil;ox adam məktəblərdə natrium və kaliumu suyun i&ccedil;inə damladınca nə olduğunu xatırlayır. Əvvəl bir qabartı və sonrasında partlama. Partlayıcı x&uuml;susiyyətli pul vahidi &ccedil;ox da yaxşı bir fikir deyil.&quot;</p>

<p>&nbsp;</p>

<p>Bənzər səbəblər digər bir sinif elementlər &uuml;&ccedil;&uuml;n də etibarlıdır. Məsələn radioaktif olanlar. Pulunuzun sizi xər&ccedil;əng etməsini istəməzsiniz deyilmi?</p>

<p>&nbsp;</p>

<p>Geriyə torium, uran, plutonium və radioaktif olaraq par&ccedil;alanmadan laboratoriya m&uuml;hitində s&uuml;ni olaraq yaradılmış rozerfordium, seborium, ununpentium, eynşteynium qalır. Təbii bir də digər metalları var ki, bunlar qızıldan belə azdır. &Ccedil;ox təəss&uuml;f ki, kimyəvi olaraq bunları bir-birindən ayırmaq olduqca &ccedil;ətindir. Yəni he&ccedil; bir zaman cibinizdə nə olduğunu bilməyəcəkdiniz. Bu bizi periodik cədvəlin ortasındakı ke&ccedil;id metallarına və sonrasına aparır. Burada 49 ədəd, adı tanış olan element qarşımıza &ccedil;ıxır: Dəmir, al&uuml;minium, mis, qurğuşun və g&uuml;m&uuml;ş. Lakin detallı olaraq araşdırdığınızda hamısının təhl&uuml;kəli bir n&ouml;qtəsi olduğunu fərq edəcəksiniz.</p>

<p>&nbsp;</p>

<p>Geriyə qaldı 8 element</p>

<p>&nbsp;</p>

<p>Digər yandan sol tərəfdə titan, zirkon kimi sərt və dayanıqlı elementlər var. Lakin onlar &uuml;&ccedil;&uuml;n də problem fərqlidir: Əritmək olduqca &ccedil;ətindir. Miladdan min il əvvəl bu maddələri c&ouml;vhərlərindən ayırmanız &uuml;&ccedil;&uuml;n təhlil edici qazanınızı yanınızda daşımanız lazım olacaqdı. Və əlbəttə belə x&uuml;susi vasitələr o zamanlar m&ouml;vcud deyildi.</p>

<p>&nbsp;</p>

<p>Siyahını 118 maddədən 8 maddəyə qədər endirdik. Platin, paladium, rodium, iridium, osmium və rutenium. Təbii ki əlavə olaraq g&uuml;m&uuml;ş və qızıl. Bunlar nəcib maddələr olaraq bilinir. &Ccedil;&uuml;nki digər maddələrlə &ccedil;ətin reaksiyaya daxil olurlar. Ayrıca olduqca da nadir tapılırlar ki, bu da pul vahidi olması &uuml;&ccedil;&uuml;n əhəmiyyətli bir x&uuml;susiyyətdir. Əgər dəmir paslanmasaydı, pul &uuml;&ccedil;&uuml;n g&ouml;zəl bir qaynaq olardı. &Ccedil;&uuml;nki ətrafda &ccedil;ox miqdarda m&ouml;vcuddur. Amma &ccedil;ox b&ouml;y&uuml;k &ouml;l&ccedil;&uuml;lərdə xarab pulu daşımaq məcburiyyətində qala bilərdiniz. G&uuml;m&uuml;ş və qızıl xaricindəki b&uuml;t&uuml;n nadir elementlərdə tam tərs problemlər var. &Ccedil;ox az tapılırlar, buna g&ouml;rə &ccedil;ox ki&ccedil;ik nisbətdə daşımaq məcburiyyətində qalardınız, bu səbəbdən də &ccedil;ox asan itirə bilərdiniz. Ayrıca əritmək də olduqca &ccedil;ətindir. Platinin ərimə temperatur 1.768 santigratdır. Geriyə iki maddə qalır ki, bunlar da qızıl və g&uuml;m&uuml;şd&uuml;r.</p>

<p>&nbsp;</p>

<p>İkisi &ccedil;ox da geniş yayılmayıb, amma tapmaq da &ccedil;ox &ccedil;ətin deyil. İkisinin də nisbi olaraq aşağı ərimə n&ouml;qtəsi var və beləcə xarab pul, k&uuml;l&ccedil;ə, bij&uuml;teriya halına gətirilməsi asandır.</p>

<p>G&uuml;m&uuml;ş havada &ccedil;ox ki&ccedil;ik miqdarda k&uuml;k&uuml;rdlə təmas edər-etməz qaralır. Onun &uuml;&ccedil;&uuml;n qızıla belə x&uuml;susi bir dəyər veririk.</p>

<p>&nbsp;</p>

<p>Qızılın bu qədər qiymətli olmasının səbəbi kimyəvi olaraq maraqlı olmamasından qaynaqlanır. Qızılın bu sabit halı sayəsində kompleks şəkilldə dizayn edilən bir qızıl timsah min il sonra da Londonun mərkəzindəki bir muzeydə he&ccedil; pozulmamış halda m&ouml;vcud ola bilər. G&ouml;rd&uuml;y&uuml;m&uuml;z kimi bərk, daşına bilən və zəhərləyici olmaması lazımdır. Ayrıca ədalətli bir şəkildə az miqdarda təbiətdə olması lazımdır. Ayrıca qızıl parlaq sarı rəngdədir. Periodik cədvəldəki b&uuml;t&uuml;n metallar isə mis istisna olmaqla g&uuml;m&uuml;ş rəngini daşıyır. Mis havadakı nəmlə qarşılaşan kimi yaşıla &ccedil;evrilir. Və qızılı x&uuml;susi edən də budur. Sella &quot;qızılın m&uuml;vəffəqiyyətli bir pul vahidi olmasının sirlərindən biri bu&quot; deyir və əlavə edir: &quot;Qızıl inanılmaz dərəcədə g&ouml;zəldir&quot;</p>

<p>&nbsp;</p>

<blockquote>
<h1><span class="marker">Qızıl pul vahididirmi?</span></h1>
</blockquote>

<p>&nbsp;</p>

<p><strong>Yaxşı, necə olur hələ də qızıl pul vahidi olaraq artıq istifadə edilmir? 1973-c&uuml; ildə d&ouml;vr&uuml;n ABŞ pezidenti Richard Nixonun dollar ilə qızıl arasın</strong></p>

<hr />
<p><strong>dakı bağı qoparması bir d&ouml;n&uuml;ş n&ouml;qtəsi oldu. O tarixdən bəri b&uuml;t&uuml;n pul vahidlərinə dollar &uuml;zərindən dəyər bi&ccedil;ildi. Nixonun bu qərarı almasının səbəbi əslində olduqca sadə idi: ABŞ-ın qızıl anbarları t&uuml;kənirdi. Bu da qızılla bağlı problemin ana səbəbidir. Qızılın qaynağı iqtisadiyyatın vəziyyətinə deyil, mədən ocaqlarında &ccedil;ıxarılan miqdardan aslıdır.</strong></p>
', 19, 2, CAST(N'2020-06-10T01:27:48.223' AS DateTime), 105, 9, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (23, 8, N'Homoseksuallıq və təkamül', N'<p>İnsanın qızıla duyduğu həsrət bir az qəribədir. Kimyəvi baxımdan qızıl he&ccedil; də maraqlı bir maddə deyil. Digər elementlərə &ccedil;ətinliklə reaksiyaya girir. Lakin yenə də 118 fərqli maddənin olduğu periodik cədvəldə insanın pul vahidi olaraq se&ccedil;diyi tək elementdir.</p>

<p>&nbsp;</p>

<p>Yaxşı bəs niyə? Məsələn niyə osmium ya da xrom deyil? Ya da siborgium?</p>

<p>&nbsp;</p>

<p>Bu sualı ilk soruşan adam mən deyiləm. Lakin &ouml;z&uuml;m&uuml; British Museumdakı Kolumbdan Əvvəlki Amerikadakı Qızıl Dizaynlar sərgisi kimi diqqəti cəlb edən bir məkanda bu sualı soruşan ilk adam olaraq d&uuml;ş&uuml;nmək istəyirəm. Tam burada incə bir şəkildə qıızıldan d&ouml;y&uuml;lm&uuml;ş bir zirehin dərhal yanında University College Londonda kimya professoru Andre Sella ilə g&ouml;r&uuml;ş&uuml;rəm. Sella periodik cədvəlin bir n&uuml;sxəsini &ccedil;ıxarır. Cədvəlin sağ tərəfinə işarə edərək &quot;Bəzi elementləri yox saymaq olduqca asandır&quot; deyir.</p>

<p>&nbsp;</p>

<p>Zəhərli pul istərsinizmi?</p>

<p>&nbsp;</p>

<p>&quot;Burada nəcib qazlar və halogenler var. Bir qaz he&ccedil; bir zaman bir pul vahidi ola bilməz. Ki&ccedil;ik bir ş&uuml;şə i&ccedil;ində pul vahidi olaraq bir az qaz daşımaq he&ccedil; də praktik deyil&quot; deyir. Və əlavə edir: &quot;Bir faktor da bu elementlərin rəngsiz olmasıdır. Ş&uuml;şənin i&ccedil;ində nə olduğunu necə bilə bilərsiniz ki?&quot; Digər iki maye element civə və brom g&uuml;ndəlik istilik və cazibə d&uuml;ş&uuml;n&uuml;ld&uuml;y&uuml;ndə &ccedil;ox bir əlverişsiz olardı. Ayrıca, ikisi də zəhərlidir. Pul olaraq istifadə etmək &uuml;&ccedil;&uuml;n &ccedil;ox da g&ouml;zəl bir &uuml;ns&uuml;r deyil. Eyni səbəblərdən arsen və onun kimi digər maddələri də istifadə edə bilməzdik.</p>

<p>&nbsp;</p>

<p>Sella g&ouml;zlərini periodik cədvəlin sol tərəfinə doğru s&uuml;r&uuml;şd&uuml;r&uuml;r. Və pı&ccedil;ıldayır: &quot;Bu tərəfdəki bir &ccedil;ox elementi də yox saya bilərik. Qələvi metallar və qələvi-torpaq metallar da &ccedil;ox asan reaksiyaya daxil olur. Bir &ccedil;ox adam məktəblərdə natrium və kaliumu suyun i&ccedil;inə damladınca nə olduğunu xatırlayır. Əvvəl bir qabartı və sonrasında partlama. Partlayıcı x&uuml;susiyyətli pul vahidi &ccedil;ox da yaxşı bir fikir deyil.&quot;</p>

<p>&nbsp;</p>

<p>Bənzər səbəblər digər bir sinif elementlər &uuml;&ccedil;&uuml;n də etibarlıdır. Məsələn radioaktif olanlar. Pulunuzun sizi xər&ccedil;əng etməsini istəməzsiniz deyilmi?</p>

<p>&nbsp;</p>

<p>Geriyə torium, uran, plutonium və radioaktif olaraq par&ccedil;alanmadan laboratoriya m&uuml;hitində s&uuml;ni olaraq yaradılmış rozerfordium, seborium, ununpentium, eynşteynium qalır. Təbii bir də digər metalları var ki, bunlar qızıldan belə azdır. &Ccedil;ox təəss&uuml;f ki, kimyəvi olaraq bunları bir-birindən ayırmaq olduqca &ccedil;ətindir. Yəni he&ccedil; bir zaman cibinizdə nə olduğunu bilməyəcəkdiniz. Bu bizi periodik cədvəlin ortasındakı ke&ccedil;id metallarına və sonrasına aparır. Burada 49 ədəd, adı tanış olan element qarşımıza &ccedil;ıxır: Dəmir, al&uuml;minium, mis, qurğuşun və g&uuml;m&uuml;ş. Lakin detallı olaraq araşdırdığınızda hamısının təhl&uuml;kəli bir n&ouml;qtəsi olduğunu fərq edəcəksiniz.</p>

<p>&nbsp;</p>

<p>Geriyə qaldı 8 element</p>

<p>&nbsp;</p>

<p>Digər yandan sol tərəfdə titan, zirkon kimi sərt və dayanıqlı elementlər var. Lakin onlar &uuml;&ccedil;&uuml;n də problem fərqlidir: Əritmək olduqca &ccedil;ətindir. Miladdan min il əvvəl bu maddələri c&ouml;vhərlərindən ayırmanız &uuml;&ccedil;&uuml;n təhlil edici qazanınızı yanınızda daşımanız lazım olacaqdı. Və əlbəttə belə x&uuml;susi vasitələr o zamanlar m&ouml;vcud deyildi.</p>

<p>&nbsp;</p>

<p>Siyahını 118 maddədən 8 maddəyə qədər endirdik. Platin, paladium, rodium, iridium, osmium və rutenium. Təbii ki əlavə olaraq g&uuml;m&uuml;ş və qızıl. Bunlar nəcib maddələr olaraq bilinir. &Ccedil;&uuml;nki digər maddələrlə &ccedil;ətin reaksiyaya daxil olurlar. Ayrıca olduqca da nadir tapılırlar ki, bu da pul vahidi olması &uuml;&ccedil;&uuml;n əhəmiyyətli bir x&uuml;susiyyətdir. Əgər dəmir paslanmasaydı, pul &uuml;&ccedil;&uuml;n g&ouml;zəl bir qaynaq olardı. &Ccedil;&uuml;nki ətrafda &ccedil;ox miqdarda m&ouml;vcuddur. Amma &ccedil;ox b&ouml;y&uuml;k &ouml;l&ccedil;&uuml;lərdə xarab pulu daşımaq məcburiyyətində qala bilərdiniz. G&uuml;m&uuml;ş və qızıl xaricindəki b&uuml;t&uuml;n nadir elementlərdə tam tərs problemlər var. &Ccedil;ox az tapılırlar, buna g&ouml;rə &ccedil;ox ki&ccedil;ik nisbətdə daşımaq məcburiyyətində qalardınız, bu səbəbdən də &ccedil;ox asan itirə bilərdiniz. Ayrıca əritmək də olduqca &ccedil;ətindir. Platinin ərimə temperatur 1.768 santigratdır. Geriyə iki maddə qalır ki, bunlar da qızıl və g&uuml;m&uuml;şd&uuml;r.</p>

<p>&nbsp;</p>

<p>İkisi &ccedil;ox da geniş yayılmayıb, amma tapmaq da &ccedil;ox &ccedil;ətin deyil. İkisinin də nisbi olaraq aşağı ərimə n&ouml;qtəsi var və beləcə xarab pul, k&uuml;l&ccedil;ə, bij&uuml;teriya halına gətirilməsi asandır.</p>

<p>G&uuml;m&uuml;ş havada &ccedil;ox ki&ccedil;ik miqdarda k&uuml;k&uuml;rdlə təmas edər-etməz qaralır. Onun &uuml;&ccedil;&uuml;n qızıla belə x&uuml;susi bir dəyər veririk.</p>

<p>&nbsp;</p>

<p>Qızılın bu qədər qiymətli olmasının səbəbi kimyəvi olaraq maraqlı olmamasından qaynaqlanır. Qızılın bu sabit halı sayəsində kompleks şəkilldə dizayn edilən bir qızıl timsah min il sonra da Londonun mərkəzindəki bir muzeydə he&ccedil; pozulmamış halda m&ouml;vcud ola bilər. G&ouml;rd&uuml;y&uuml;m&uuml;z kimi bərk, daşına bilən və zəhərləyici olmaması lazımdır. Ayrıca ədalətli bir şəkildə az miqdarda təbiətdə olması lazımdır. Ayrıca qızıl parlaq sarı rəngdədir. Periodik cədvəldəki b&uuml;t&uuml;n metallar isə mis istisna olmaqla g&uuml;m&uuml;ş rəngini daşıyır. Mis havadakı nəmlə qarşılaşan kimi yaşıla &ccedil;evrilir. Və qızılı x&uuml;susi edən də budur. Sella &quot;qızılın m&uuml;vəffəqiyyətli bir pul vahidi olmasının sirlərindən biri bu&quot; deyir və əlavə edir: &quot;Qızıl inanılmaz dərəcədə g&ouml;zəldir&quot;</p>

<p>&nbsp;</p>

<blockquote>
<h1><span class="marker">Qızıl pul vahididirmi?</span></h1>
</blockquote>

<p>&nbsp;</p>

<p><strong>Yaxşı, necə olur hələ də qızıl pul vahidi olaraq artıq istifadə edilmir? 1973-c&uuml; ildə d&ouml;vr&uuml;n ABŞ pezidenti Richard Nixonun dollar ilə qızıl arasın</strong></p>

<hr />
<p><strong>dakı bağı qoparması bir d&ouml;n&uuml;ş n&ouml;qtəsi oldu. O tarixdən bəri b&uuml;t&uuml;n pul vahidlərinə dollar &uuml;zərindən dəyər bi&ccedil;ildi. Nixonun bu qərarı almasının səbəbi əslində olduqca sadə idi: ABŞ-ın qızıl anbarları t&uuml;kənirdi. Bu da qızılla bağlı problemin ana səbəbidir. Qızılın qaynağı iqtisadiyyatın vəziyyətinə deyil, mədən ocaqlarında &ccedil;ıxarılan miqdardan aslıdır.</strong></p>
', 20, 2, CAST(N'2020-06-10T14:52:18.293' AS DateTime), 201, 3, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (25, 8, N'Marsda bitki kaloniyasi', N'<p>sad</p>
', 22, 1, CAST(N'2020-06-14T15:40:17.280' AS DateTime), 100, 22, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (29, 8, N'Qırmızı planet - Mars. Terraform bizə nələr vəd edir.', N'<p>Bir g&uuml;n Yeri bizlər &uuml;&ccedil;&uuml;n, həyat &uuml;&ccedil;&uuml;n uyğun edən hər şeyi itirsək? B&uuml;t&uuml;n enerji qaynaqlarını bitirsək, nəfəs ala biləcəyimiz g&ouml;zəl bir hava, i&ccedil;ə biləcəyiniz təmiz su tapa bilməsək? Planetimiz bizim &uuml;&ccedil;&uuml;n bir ev deyil, &uuml;zərində bizi saxlaya bilməyən k&uuml;rə halına gələrsə?</p>

<p>Əgər bu g&uuml;nə qədər yaşadığımız kimi yaşasaq və planetimizin qaynaqlarını ş&uuml;ursuzca bitirsək bunların olması tamamilə m&uuml;mk&uuml;nd&uuml;r və b&ouml;y&uuml;k ehtimalla ola bilər. Ancaq bizlərin evimizdən tərki-diyar olmamıza səbəb olacaq şeylər yalnız bunlar olmaya bilər. Məsələn b&ouml;y&uuml;k bir asteroidin Yerlə toqquşacağını bilsək və bunun qarşısını ala bilməsək. Ya Yeri bitmək bilməyən fırtınalar ağuşuna alsa, ya da m&uuml;haribədən sonra radiasiyadan &ccedil;&ouml;lə &ccedil;ıxa bilməsək?</p>

<p>Coğrafi kəşflər d&ouml;vr&uuml;n&uuml; d&uuml;ş&uuml;n&uuml;n. Onlar olduğunda torpaq hər kəsi doyurardı, quşlar hər kəsi xoşbəxt edərdi, qoyunların əti, s&uuml;d&uuml; insana kifayət edirdi. Atalarımızdan bizə miras qalan ən əhəmiyyətli motivlərdən biri olan maraq yaşadığımız torpaqların xaricindəki diyarları bizə tapmağı əmr etdi. Lakin bir addım sonra sənaye inqilabı ortaya &ccedil;ıxdı. Qaynaqlar kifayət etmədi. Qazanc ehtirası bitmədi. Daha &ccedil;ox qazanc &uuml;&ccedil;&uuml;n daha &ccedil;ox insan g&uuml;c&uuml;, k&ouml;ləlik, mədən və torpaq istismarı lazım gəldi.</p>

<p>Ke&ccedil;ən aylarda kəşf edilən&nbsp;<a href="https://en.wikipedia.org/wiki/Kepler-22b" rel="noopener" target="_blank"><strong>Kepler 22-b</strong></a>&nbsp;kimi yeni planetlər kəşf etdikcə atalarımızın bizə &ouml;t&uuml;rd&uuml;y&uuml; maraq motivimizin həyəcanlı təbiətini hərəkətə ke&ccedil;irir və doyururuq. Bundan bir ne&ccedil;ə on il, bəlkə də bir ne&ccedil;ə əsr sonra bu g&uuml;n vəhşi marağımızı susdurub &nbsp;həyəcanımızı yatırdan bu planetlərin bizlər &uuml;&ccedil;&uuml;n yeni bir ev olub-olmayacağından əmin deyilik.</p>

<p>Gələcək haqqındakı elmi-fantastikalar zaman-zaman insanların qalaktikadakı iyirmi beş milyon planetə məskunlaşdığı tablosnu təsvir edirlər. Hətta<strong>&nbsp;<a href="https://az.wikipedia.org/wiki/Ayzek_Azimov" rel="noopener" target="_blank">Ayzek Azimovun</a></strong>&nbsp;kainatında insanlar məskunlaşmanın hansı planetdən başladığını belə bilmirlər. Eynilə, bizim bu g&uuml;n atalarımızın izlərini və genlərini izləyərək onun tam olaraq haradan &ccedil;ıxdığını anlamağa &ccedil;alışdığımız kimi onlar da&nbsp;<a href="https://az.wikipedia.org/wiki/G%C3%BCn%C9%99%C5%9F_sistemi" rel="noopener" target="_blank"><strong>G&uuml;nəş sistemi</strong></a>,&nbsp;<strong><a href="https://en.wikipedia.org/wiki/Alpha_Centauri" rel="noopener" target="_blank">Alfa Sentavr</a></strong>&nbsp;ya da&nbsp;<strong><a href="https://en.wikipedia.org/wiki/Vega" rel="noopener" target="_blank">Veqa</a></strong>&nbsp;&uuml;zərində təxminlər edirlər. N&ouml;v&uuml;m&uuml;z&uuml;n y&uuml;z il sonrasını belə təxmin edə bilmədiyimiz bir zamanda əgər hələ həyatda qalmağı bacara bilsək, bir milyon il sonra harada və necə ola biləcəyimizə dair he&ccedil; bir y&uuml;ksək ehtimallı uzaqg&ouml;rən fikirlərbildirə bilmirik. Ola biləcək variantlar arasında ən q&uuml;vvətlisi d&uuml;nyadan k&ouml;&ccedil;&uuml;b gedəcəyimiz haqqındadır.</p>

<p>Bu olduqca aydın və ehtimallı bir variantdır. İnsan ortaya &ccedil;ıxdığından bu yana həmişə ətrafa yayıldı və k&ouml;&ccedil; etdi. Əvvəl ətraf əraziləri, sonra digər Bu olduqca aydın və ehtimallı bir variantdır. İnsan ortaya &ccedil;ıxdığından bu yana həmişə ətrafa yayıldı və k&ouml;&ccedil; etdi. Əvvəl ətraf əraziləri, sonra digər assssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssqitələrini, sonra b&uuml;t&uuml;n qitələri, ayı,Veneranı, Marsı kəşf etdi. İndi G&uuml;nəş sistemi xaricindəki planetləri də kəşf edir. Daha əvvəl etdiyi kimi bir g&uuml;n oralara da gedib yerləşə biləcək. Bu n&ouml;qtədə insanın ağılına&nbsp;<strong><a href="https://en.wikipedia.org/wiki/The_Matrix" rel="noopener" target="_blank">Matrix</a></strong>&nbsp;trilogiyasının ilk filmində&nbsp;<strong><a href="https://en.wikipedia.org/wiki/Morpheus_(The_Matrix)" rel="noopener" target="_blank">Morfeusu</a></strong>&nbsp;yayındırmağa &ccedil;alışan agentin dedikləri gəlir:&nbsp;<em>&quot;Yalnız insanlar və viruslar qaynaqlarını istehlak edərək daim yayılırlar&quot;</em>qitələrini, sonra b&uuml;t&uuml;n qitələri, ayı,Veneranı, Marsı kəşf etdi. İndi G&uuml;nəş sistemi xaricindəki planetləri də kəşf edir. Daha əvvəl etdiyi kimi bir g&uuml;n oralara da gedib yerləşə biləcək. Bu n&ouml;qtədə insanın ağılına&nbsp;<strong><a href="https://en.wikipedia.org/wiki/The_Matrix" rel="noopener" target="_blank">Matrix</a></strong>&nbsp;trilogiyasının ilk filmində&nbsp;<strong><a href="https://en.wikipedia.org/wiki/Morpheus_(The_Matrix)" rel="noopener" target="_blank">Morfeusu</a></strong>&nbsp;yayındırmağa &ccedil;alışan agentin dedikləri gəlir:&nbsp;<em>&quot;Yalnız insanlar və viruslar qaynaqlarını istehlak edərək daim yayılırlar&quot;</em></p>

<p><a href="https://1.bp.blogspot.com/-S8k1CzeKes8/VIXoZp8Zn5I/AAAAAAAAN_Y/5eSkuYRNJQc/s1600/gw5vy.jpg"><img src="https://1.bp.blogspot.com/-S8k1CzeKes8/VIXoZp8Zn5I/AAAAAAAAN_Y/5eSkuYRNJQc/s1600/gw5vy.jpg" /></a></p>

<p>&nbsp;</p>

<p>B&uuml;t&uuml;n canlıların m&uuml;xtəlif ehtiyacları var. Bu ehtiyacların bir qisimi canlılığın &ouml;z&uuml;ylə birlikdə varkən, canlılığın davam etdirilə bilməsi &uuml;&ccedil;&uuml;n lazımlı enerji alınan qida qaynaqlarıyla təmin edilərlər. Canlılar qida qaynaqlarından enerjini və elementləri əldə edən və daim işləyən bir sistemdir. Bu enerjini meydana gətirən sistemlərin işləməsi &uuml;&ccedil;&uuml;n lazımlı bəzi materialar yemək, tənəff&uuml;s və s. yollarla əldə edilərkən, iş &uuml;&ccedil;&uuml;n lazımlı m&uuml;hit şərtləri də lazımdır. Cazibə, istilik, radiasiya, işıq və s. m&uuml;hit x&uuml;susiyyətləri və enerji formaları ca</p>
', 26, 2, CAST(N'2020-06-14T15:57:32.917' AS DateTime), 10, 24, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (30, 8, N'Stephan Hawking:Qara delikler', N'<p>salam salam salam salam salam&nbsp;salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam salam</p>
', 27, 3, CAST(N'2020-06-14T16:04:03.277' AS DateTime), 1, 45, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (31, 8, N'Pişiklər niyə qutuları sevirlər?', N'<p>&nbsp;&nbsp;Ev pişikləri &uuml;&ccedil;&uuml;n d&uuml;nyanın b&uuml;t&uuml;n oyuncaqları bir qutu ilə m&uuml;qayisə edilə bilməz. Bəs niyə bizim pişik dostlarımız &ccedil;antalarına, paltar səbətlərininə, &nbsp;&ccedil;amadanlara, bel &ccedil;antalarına belə maraq duyurlar? Qapalı yerlərdə bir şeylər axtarma pişiklərin instinktiv davranışıdır. B&uuml;t&uuml;n pişikkimilər vəhşi təbiətdə yaşamış ortaq bir atadan təkam&uuml;l etdiyi &uuml;&ccedil;&uuml;n belə yerlərin hələ də pişiklər &uuml;&ccedil;&uuml;n ideal olması təəcc&uuml;bl&uuml; deyil. &Ccedil;&uuml;nki qapalı yerlər onları ov&ccedil;ulardan qoruyur və ovlarına gizlicə yaxınlaşmaq imkanı verirdi. Bu davranış qəlibi g&uuml;n&uuml;m&uuml;zdə ev pişiklərində bu formada m&uuml;şahidə edilir. Amerika Hevanları M&uuml;dafiə Cəmiyyətinin elmi məsləhət&ccedil;isini Stiven Zavitovski məsələyə dair belə m&uuml;nasibət bildirir:</p>

<blockquote>
<h2>Pişiklər qutuları sevirlər, &ccedil;&uuml;nki onlar gizlənməyi sevən heyvanlardır. Və qutu onlar &uuml;&ccedil;&uuml;n təhl&uuml;kəsiz və qoruyucu bir yerdir.</h2>
</blockquote>

<p>&nbsp; &nbsp;Qutunun i&ccedil;indəykən pişiklər yanlardan onlara h&uuml;cum edilməyəcəklərindən və təhl&uuml;kəsizlikdə olduqlarından əmin olurlar. Beləcə, onlara yaxınlaşmaq istəyən hər şey m&uuml;tləq birbaşa onların g&ouml;r&uuml;ş sahəsinə girməli olur. Təbiətdə bu kimi gizlənmə yerləri canlılara g&ouml;r&uuml;lmədən ətraf aləmi izləmə imkanı verir. Maraqlı bir şey də budur ki, əgər qutunun &ouml;n&uuml;ndən bir şey&nbsp;&ndash; oyunca və ya ya ov ke&ccedil;ərsə bir anda onu &nbsp;tutmaq &uuml;&ccedil;&uuml;n sı&ccedil;rayıb yenidən &ouml;z təhl&uuml;kəsiz yerlərinə cəld bir şəkildə qayıda bilirlər. Qutular eyni zamanda 20 saat yuxu m&uuml;ddətinə malik pişiklər &uuml;&ccedil;&uuml;n olduqca &ouml;nəmli olan, rahat və təhl&uuml;kəsiz yataqlarıdır.</p>
', 28, 2, CAST(N'2020-06-14T16:22:34.653' AS DateTime), 5, 24, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (33, 8, N'Atmosfer harada bitir və Kosmos hardan başlayır?', N'<blockquote>
<p>Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?</p>
</blockquote>

<p><em><strong>&nbsp;Kosmos hardan başlayır?</strong></em>&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?&nbsp;Atmosfer harada bitir və Kosmos hardan başlayır?</p>
', 30, 2, CAST(N'2020-06-16T00:57:23.717' AS DateTime), 1, 4, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (34, 8, N'Mutasiya: gen dəyişmə mexanizmi', N'<p><img alt="" src="https://www.yasilelm.com/media/posts/d41586-019-03536-x_17373716.jpg" /></p>

<p>&nbsp;</p>

<p>Bu yazımızda mutasiyalara ətraflı toxunacağıq və bəlkə də bəzi qaranlıq və &ccedil;ətin anlaşılan məsələləri aydınlaşdırmaq baxımından ən əhəmiyyətli yazılarımızdan biri olacaq. &Ccedil;&uuml;nki təəss&uuml;f ki bu g&uuml;n bəzi elmdən həqiqi mənada anlayışı olmayan qaynaqlar və elm yerinə bu qaynaqları &ccedil;atdıran Təhsil Nazirliyi kimi təhsil m&uuml;əssisələri &uuml;z&uuml;ndən mutasiyalar, Təkam&uuml;l Nəzəriyyəsinin mərkəzinə yerləşdirilməyə &ccedil;alışılır. Bunun səbəbi aydındır: Elmi bir həqiqətə, lakin i&ccedil;ərisindəki təsad&uuml;filik &uuml;ns&uuml;rləri &ouml;nə &ccedil;ıxarılaraq, &quot;Baxın, hər şeyə təsad&uuml;f g&ouml;z&uuml;ylə baxırlar!&quot; şəklində şərhlər edərək elmə, elmin və elm insanlarına g&ouml;z&uuml; bağlı təhqir edərək h&uuml;cum edirlər. Bu insanların və təşkilatların etdiyi də a&ccedil;ıq-aşkar budur. Hələ m&ouml;vzu haqqında zəngin məlumata sahib olmayan fərdlərsə, bu insanların yalan manipulyasiyalarına aldanaraq, elmi bir həqiqəti g&ouml;z ardı edirlər. Halbuki g&ouml;rəcəyimiz kimi, mutasiyalar, Təkam&uuml;l&uuml;n ki&ccedil;ik bir qismini meydana gətirir. Əlbəttə ki, bir Təkam&uuml;l mexanizmi olaraq mutasiyaların Təkam&uuml;l &uuml;zərində əhəmiyyətli təsirləri var, lakin bunlar, digər mexanizmlərdən &uuml;st&uuml;n və ya artıq deyil.</p>

<p>&nbsp;</p>

<p>Dərhal m&ouml;vzuya girək:&nbsp;<strong>Mutasiya</strong>, s&ouml;z mənasıyla genetik materialda meydana gələn təsad&uuml;fi dəyişiklik deməkdir. Sadəcə, bir nukleotidin bir başqasına &ccedil;evrilməsi, bir quruluşun şəkil və məzmun dəyişdirməsi, səhv kopyalanma nəticəsində genetik quruluşun pozulması və s. daha bir &ccedil;ox faktlar, mutasiyalara aid edilə bilər. Hər şeydən əvvəl, mutasiyaların təsad&uuml;filik dəyərlərini və səbəblərini araşdırmaq lazımdır: Mutasiyalar həqiqətən də &ccedil;ox b&ouml;y&uuml;k nisbətdə təsad&uuml;fidir. Lakin bir anlayışın təsad&uuml;fi olması, o anlayışın həqiqət dəyərini aşağı salmır. Məsələn, hava şərtlərinin dəyişməsi də b&ouml;y&uuml;k nisbətdə təsad&uuml;fidir. Bu, hava şərtlərinin (yağış, qar, dolu, və s.) ger&ccedil;ək olmadığı mənasını vermir təbii ki. Bənzər şəkildə, zəlzələlərin meydana gəldiyi zamanlar təsad&uuml;fidir. Bir pulun havaya atılması nəticəsində gələn y&uuml;z pul təsad&uuml;fidir. Bunların hamısı, m&uuml;əyyən nisbətlər daxilində statistik hesablara vurula bilər. Məsələn, g&uuml;n&uuml;n m&uuml;əyyən bir saatında yağış yağıb-yağmayacağını m&uuml;əyyən nisbətlər daxilində ehtimal hesabıyla tapa bilərik. Oxşar şəkildə, bir zəlzələnin bir b&ouml;lgədə reallaşma ehtimalı və zamanını ehtimal hesablarıyla bilə bilərik. Pulun &uuml;zləriylə əlaqədar hesablar isə, hamımızın bildiyi sadə hesablardır.</p>

<p>&nbsp;</p>

<p><a href="https://4.bp.blogspot.com/-XRjHofmafOc/UoOO5_3WMbI/AAAAAAAAA30/NjUyux-btDg/s1600/1.png"><img src="https://4.bp.blogspot.com/-XRjHofmafOc/UoOO5_3WMbI/AAAAAAAAA30/NjUyux-btDg/s320/1.png" /></a></p>

<p>&nbsp;</p>

<p>Bu anlayışların &ccedil;ətinliyi ehtimal dəyərlərinin hesablanmasıdır, anlayışa k&ouml;mək edən bir ne&ccedil;ə faktorlardan asılıdır. Zəlzələ isə, fay xəttləriylə əlaqədar y&uuml;zlərlə fərqli dəyişikliyə (bucaq, torpaq quruluş, torpaq orqanizmləri, k&uuml;tlə, təzyiq və&nbsp;s.) bağlı ola bilər və bu, ehtimal hesablarının &ccedil;ətinləşməsinə səbəb olarkən, bir tərəfdən də zəlzələlərin təsad&uuml;filiyini artırmış olur. Lakin bunların he&ccedil; biri, faktın həqiqiliyinə təsir etmir. M&uuml;əyyən hallarda, m&uuml;əyyən zamanlarda, m&uuml;əyyən b&ouml;lgələrə, m&uuml;əyyən tip yağışlar yağır. Bəzi vaxtlar zəlzələlər olur. N&uuml;munələr sonsuz sayda artırıla bilər.</p>

<p>&nbsp;</p>
', 31, 1, CAST(N'2020-06-16T15:45:49.887' AS DateTime), 2, 37, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (35, 8, N'Albert Einstein Vegeterian idi', N'<h2>Albert,Einstein,AlberEinstein,Dahiler</h2>
', 38, 1, CAST(N'2020-06-22T11:12:43.933' AS DateTime), 0, 0, NULL, 0, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (36, 8, N'5G Heqiqeten Zererlidirmi ?', N'<p>5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?5G Heqiqeten Zererlidirmi ?</p>
', 39, 1, CAST(N'2020-06-22T11:18:31.670' AS DateTime), 7, 3, NULL, 1, NULL)
INSERT [dbo].[tbl_post] ([PostId], [MuellifId], [Baslig], [Context], [PhotoId], [CategoryId], [Tarixi], [Baxis], [Beyenme], [Keyword], [QebulEdildi], [Aktiv]) VALUES (37, 8, N'Israil,Yehudi,Siyonizm', N'<p>Israil,Yehudi,&nbsp; &nbsp;Siyonizm,Isra i l,Yehu i&nbsp; , Siyoniz&nbsp; m,Isra il, Ye hudi,Siyonizm ,Israil,Yehudi,Siy o ni&nbsp; zm,Israi&nbsp; &nbsp;l,Yehudi,Siyoni zm,Isr ail,Yehu&nbsp; &nbsp;i,&nbsp; &nbsp;Siyoniz m,Israil Yehudi,Siyoniz m,Isr ail, Yehud&nbsp; &nbsp; ,&nbsp; Siyonizm,Israil,Yehudi,Siyoni zmIsrail,Yehudi,SiyonizmIsrail,Yehud i,Siyo nizmIsrail,Yehudi,Siyoni zmIsrail,Yehudi,Siyoniz m Israil,Yehudi, ,Ye hud i,&nbsp; SiyonizmIsrail,Yehudi,SiyonizmIs rail, ,SiyonizmIsrail,Yehudi,Siy onizmIsrail,Yehudi,Siyonizm</p>
', 40, 1, CAST(N'2020-06-22T11:28:07.383' AS DateTime), 2, 27, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[tbl_post] OFF
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (10, 34)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (10, 35)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (11, 1)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (11, 2)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (11, 3)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (11, 4)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (13, 5)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (13, 6)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (13, 7)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (21, 8)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (21, 11)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (21, 12)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (22, 13)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (22, 14)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (22, 15)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (22, 16)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (23, 17)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (23, 18)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 22)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 23)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 24)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 25)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 26)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 27)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (29, 28)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (30, 8)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (30, 11)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (30, 29)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (31, 30)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (31, 31)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (31, 32)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (33, 11)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (33, 33)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (33, 34)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (33, 35)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (34, 36)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (34, 37)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (34, 38)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (34, 39)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (34, 40)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (35, 41)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (35, 42)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (35, 43)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (35, 44)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (36, 49)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (36, 50)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (36, 51)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (37, 7)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (37, 52)
INSERT [dbo].[tbl_post_etiket] ([PostId], [EtiketId]) VALUES (37, 53)
SET IDENTITY_INSERT [dbo].[tbl_rol] ON 

INSERT [dbo].[tbl_rol] ([RolId], [RolAdi]) VALUES (1, N'Istifadeci')
INSERT [dbo].[tbl_rol] ([RolId], [RolAdi]) VALUES (2, N'Yazar')
INSERT [dbo].[tbl_rol] ([RolId], [RolAdi]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[tbl_rol] OFF
SET IDENTITY_INSERT [dbo].[tbl_sekil] ON 

INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (4, NULL, NULL, N'/Upload/dino.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (5, NULL, NULL, N'/Upload/sagan.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (6, NULL, NULL, N'/Upload/jew.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (7, NULL, NULL, N'/Upload/earth.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (9, NULL, NULL, N'/Upload/Sekiller/boyukcate7.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (18, NULL, NULL, N'/Upload/Sekiller/boyukqacis.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (19, NULL, NULL, N'/Upload/Sekiller/boyuk81591160-184e-41c4-a3a2-caaa41dabe9d.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (20, NULL, NULL, N'/Upload/Sekiller/boyukcate10.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (22, NULL, NULL, N'/Upload/Sekiller/boyuk_methode_times_prodmigration_web_bin_d5d2dddf-9294-3540-ab89-8fee962f15d6.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (26, NULL, NULL, N'/Upload/Sekiller/boyukneruo2.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (27, NULL, NULL, N'/Upload/Sekiller/boyuklittlespace.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (28, NULL, NULL, N'/Upload/Sekiller/boyukcat_in_a_box_400.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (30, NULL, NULL, N'/Upload/Sekiller/boyuknjutn-1024x704.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (31, NULL, NULL, N'/Upload/Sekiller/boyuk028c669c-d1e3-487b-96c5-905855be374e.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (36, NULL, NULL, N'/Upload/Sekiller/balacacate9.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (37, NULL, NULL, N'/Upload/Sekiller/balacacate9.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (38, NULL, NULL, N'/Upload/Sekiller/boyuk_methode_times_prodmigration_web_bin_d5d2dddf-9294-3540-ab89-8fee962f15d6.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (39, NULL, NULL, N'/Upload/Sekiller/boyukDnvGbMCWkAE8sfe.jpg', NULL)
INSERT [dbo].[tbl_sekil] ([PhotoId], [Kicik], [Orta], [Boyuk], [PostId]) VALUES (40, NULL, NULL, N'/Upload/Sekiller/boyukjew.jpg', NULL)
SET IDENTITY_INSERT [dbo].[tbl_sekil] OFF
SET IDENTITY_INSERT [dbo].[tbl_userrol] ON 

INSERT [dbo].[tbl_userrol] ([userrolId], [RolId], [UserId]) VALUES (1, 1, 1)
INSERT [dbo].[tbl_userrol] ([userrolId], [RolId], [UserId]) VALUES (10, 2, 11)
INSERT [dbo].[tbl_userrol] ([userrolId], [RolId], [UserId]) VALUES (1003, 2, 1008)
INSERT [dbo].[tbl_userrol] ([userrolId], [RolId], [UserId]) VALUES (1004, 2, 1010)
INSERT [dbo].[tbl_userrol] ([userrolId], [RolId], [UserId]) VALUES (6, 3, 8)
SET IDENTITY_INSERT [dbo].[tbl_userrol] OFF
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([UserId], [Ad], [Soyad], [Login], [Sifre], [Mail], [DogumTarixi], [QeydiyyatTarixi], [PhotoId], [Yazar], [Aktiv], [QebulEdildi], [Cinsi]) VALUES (1, N'Hemze', N'Ismayilov', N'Hemze5411', N'123321', N'hemze@mail.ru', CAST(N'2000-10-18T00:00:00.000' AS DateTime), CAST(N'2020-06-01T20:26:18.680' AS DateTime), 6, 0, 1, 1, 0)
INSERT [dbo].[tbl_users] ([UserId], [Ad], [Soyad], [Login], [Sifre], [Mail], [DogumTarixi], [QeydiyyatTarixi], [PhotoId], [Yazar], [Aktiv], [QebulEdildi], [Cinsi]) VALUES (8, N'Tural', N'Abdulxaliqov', N'Tural5411', N'123321', N'turik@mail.ru', CAST(N'1999-10-10T00:00:00.000' AS DateTime), CAST(N'2020-06-04T11:39:09.613' AS DateTime), NULL, 0, 1, 1, 0)
INSERT [dbo].[tbl_users] ([UserId], [Ad], [Soyad], [Login], [Sifre], [Mail], [DogumTarixi], [QeydiyyatTarixi], [PhotoId], [Yazar], [Aktiv], [QebulEdildi], [Cinsi]) VALUES (11, N'Fatime', N'Abdullayeva', N'Fatime5411', N'123321', N'fatime@mail.ru', CAST(N'2002-02-02T00:00:00.000' AS DateTime), CAST(N'2020-06-04T13:59:49.957' AS DateTime), NULL, 1, 1, 0, 1)
INSERT [dbo].[tbl_users] ([UserId], [Ad], [Soyad], [Login], [Sifre], [Mail], [DogumTarixi], [QeydiyyatTarixi], [PhotoId], [Yazar], [Aktiv], [QebulEdildi], [Cinsi]) VALUES (1008, N'Ziyeddin', N'Ceferov', N'Ziko5411', N'123321', N'ziko@mail.ru', CAST(N'2003-04-03T00:00:00.000' AS DateTime), CAST(N'2020-06-15T16:25:39.767' AS DateTime), NULL, 1, 1, 0, 0)
INSERT [dbo].[tbl_users] ([UserId], [Ad], [Soyad], [Login], [Sifre], [Mail], [DogumTarixi], [QeydiyyatTarixi], [PhotoId], [Yazar], [Aktiv], [QebulEdildi], [Cinsi]) VALUES (1009, N'Nicat', N'Ceferov', N'Niko5411', N'123321', N'niko@gmail.com', CAST(N'2000-07-09T00:00:00.000' AS DateTime), CAST(N'2020-06-15T16:26:50.973' AS DateTime), NULL, 1, 1, 0, 0)
INSERT [dbo].[tbl_users] ([UserId], [Ad], [Soyad], [Login], [Sifre], [Mail], [DogumTarixi], [QeydiyyatTarixi], [PhotoId], [Yazar], [Aktiv], [QebulEdildi], [Cinsi]) VALUES (1010, N'Elxan', N'Quliyev', N'Elxan5411', N'123321', N'elxan@mail.ru', CAST(N'2008-12-24T00:00:00.000' AS DateTime), CAST(N'2020-06-25T19:41:41.670' AS DateTime), NULL, 1, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
ALTER TABLE [dbo].[tbl_comment] ADD  CONSTRAINT [DF_tbl_comment_Tarixi]  DEFAULT (getdate()) FOR [Tarixi]
GO
ALTER TABLE [dbo].[tbl_post] ADD  CONSTRAINT [DF_tbl_post_Tarixi]  DEFAULT (getdate()) FOR [Tarixi]
GO
ALTER TABLE [dbo].[tbl_post] ADD  CONSTRAINT [DF_tbl_post_QebulEdildi]  DEFAULT ((0)) FOR [QebulEdildi]
GO
ALTER TABLE [dbo].[tbl_post] ADD  CONSTRAINT [DF_tbl_post_Aktiv]  DEFAULT ((0)) FOR [Aktiv]
GO
ALTER TABLE [dbo].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_QeydiyyatTarixi]  DEFAULT (getdate()) FOR [QeydiyyatTarixi]
GO
ALTER TABLE [dbo].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_Yazar]  DEFAULT ((0)) FOR [Yazar]
GO
ALTER TABLE [dbo].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_QebulEdildi]  DEFAULT ((0)) FOR [QebulEdildi]
GO
ALTER TABLE [dbo].[tbl_category]  WITH CHECK ADD  CONSTRAINT [FK_tbl_category_tbl_sekil] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[tbl_sekil] ([PhotoId])
GO
ALTER TABLE [dbo].[tbl_category] CHECK CONSTRAINT [FK_tbl_category_tbl_sekil]
GO
ALTER TABLE [dbo].[tbl_comment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_comment_tbl_post] FOREIGN KEY([PostId])
REFERENCES [dbo].[tbl_post] ([PostId])
GO
ALTER TABLE [dbo].[tbl_comment] CHECK CONSTRAINT [FK_tbl_comment_tbl_post]
GO
ALTER TABLE [dbo].[tbl_muellif_takip]  WITH CHECK ADD  CONSTRAINT [FK_tbl_muellif_takip_tbl_users] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_muellif_takip] CHECK CONSTRAINT [FK_tbl_muellif_takip_tbl_users]
GO
ALTER TABLE [dbo].[tbl_muellif_takip]  WITH CHECK ADD  CONSTRAINT [FK_tbl_muellif_takip_tbl_users1] FOREIGN KEY([MuellifId])
REFERENCES [dbo].[tbl_users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_muellif_takip] CHECK CONSTRAINT [FK_tbl_muellif_takip_tbl_users1]
GO
ALTER TABLE [dbo].[tbl_post]  WITH CHECK ADD  CONSTRAINT [FK_tbl_post_tbl_category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tbl_category] ([CategoryId])
GO
ALTER TABLE [dbo].[tbl_post] CHECK CONSTRAINT [FK_tbl_post_tbl_category]
GO
ALTER TABLE [dbo].[tbl_post]  WITH CHECK ADD  CONSTRAINT [FK_tbl_post_tbl_sekil] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[tbl_sekil] ([PhotoId])
GO
ALTER TABLE [dbo].[tbl_post] CHECK CONSTRAINT [FK_tbl_post_tbl_sekil]
GO
ALTER TABLE [dbo].[tbl_post]  WITH CHECK ADD  CONSTRAINT [FK_tbl_post_tbl_users] FOREIGN KEY([MuellifId])
REFERENCES [dbo].[tbl_users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_post] CHECK CONSTRAINT [FK_tbl_post_tbl_users]
GO
ALTER TABLE [dbo].[tbl_post_etiket]  WITH CHECK ADD  CONSTRAINT [FK_tbl_post_etiket_tbl_etiket] FOREIGN KEY([EtiketId])
REFERENCES [dbo].[tbl_etiket] ([EtiketId])
GO
ALTER TABLE [dbo].[tbl_post_etiket] CHECK CONSTRAINT [FK_tbl_post_etiket_tbl_etiket]
GO
ALTER TABLE [dbo].[tbl_post_etiket]  WITH CHECK ADD  CONSTRAINT [FK_tbl_post_etiket_tbl_post] FOREIGN KEY([PostId])
REFERENCES [dbo].[tbl_post] ([PostId])
GO
ALTER TABLE [dbo].[tbl_post_etiket] CHECK CONSTRAINT [FK_tbl_post_etiket_tbl_post]
GO
ALTER TABLE [dbo].[tbl_userrol]  WITH CHECK ADD  CONSTRAINT [FK_tbl_userrol_tbl_rol] FOREIGN KEY([RolId])
REFERENCES [dbo].[tbl_rol] ([RolId])
GO
ALTER TABLE [dbo].[tbl_userrol] CHECK CONSTRAINT [FK_tbl_userrol_tbl_rol]
GO
ALTER TABLE [dbo].[tbl_userrol]  WITH CHECK ADD  CONSTRAINT [FK_tbl_userrol_tbl_users] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_userrol] CHECK CONSTRAINT [FK_tbl_userrol_tbl_users]
GO
ALTER TABLE [dbo].[tbl_users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_users_tbl_sekil] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[tbl_sekil] ([PhotoId])
GO
ALTER TABLE [dbo].[tbl_users] CHECK CONSTRAINT [FK_tbl_users_tbl_sekil]
GO
