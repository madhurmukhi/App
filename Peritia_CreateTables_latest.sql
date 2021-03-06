USE [LTEC_2_0_qa]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 18/09/2016 15:05:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActionItems]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[UserId] [int] NULL,
	[ModuleId] [int] NULL,
	[IsCompleted] [bit] NULL,
	[ActionTime] [datetime] NULL,
	[ActionEndTime] [datetime] NULL,
	[Recurrence] [nvarchar](20) NULL,
	[RecurrenceEndDate] [datetime] NULL,
	[CompletionHistory] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NULL,
	[DeletionDate] [datetime2](7) NULL,
	[IsDeleted] [bit] NULL,
	[DevAreaId] [bigint] NULL,
 CONSTRAINT [PK_ActionItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[Salutation] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[IsFirstLogin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OtherProperties] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedBy] [uniqueidentifier] NULL,
	[LastModifiedOn] [datetime] NULL,
	[IsDefaultAccount] [bit] NOT NULL,
	[LastLoggedOn] [datetime] NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Batches]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batches](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ClientId] [int] NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BatchScheduleMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BatchScheduleMapping](
	[BatchId] [int] NOT NULL,
	[ScheduleId] [int] NOT NULL,
 CONSTRAINT [PK_BatchScheduleMapping] PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC,
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientDevAreaMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDevAreaMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[DevAreaId] [bigint] NOT NULL,
 CONSTRAINT [pk_ClientDevAreaMapping_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientFeedBackDurationMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientFeedBackDurationMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[FeedBackDurationId] [tinyint] NOT NULL,
 CONSTRAINT [pk_ClientFeedBackDurationMapping_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientRoleMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientRoleMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [pk_ClientRoleMapping_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[LogoPath] [nvarchar](100) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ColorCode]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[color] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DashboardConfiguration]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardConfiguration](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[BGColor] [nvarchar](20) NULL,
	[LandingPage] [nvarchar](30) NULL,
	[ClientId] [int] NOT NULL,
	[FontColor] [nvarchar](20) NULL,
	[IsDevAreaEditible] [bit] NOT NULL DEFAULT ((0)),
	[FBFrequency] [tinyint] NOT NULL,
	[MaxDevAreaAllowed] [int] NULL,
	[MaxActionItemsAllowed] [int] NULL,
	[LastFBReqDate] [datetime] NULL,
	[BtnBGColor] [nvarchar](20) NULL,
	[BtnTextColor] [nvarchar](20) NULL,
	[SectionBGColor] [nvarchar](20) NULL,
	[SectionTextColor] [nvarchar](20) NULL,
	[SelectedTabTextColor] [nvarchar](20) NULL,
	[UnSelectedTabTextColor] [nvarchar](20) NULL,
	[SelectedTabColor] [nvarchar](20) NULL,
	[UnSelectedTabColor] [nvarchar](20) NULL,
	[SubSectionBGColor] [nvarchar](20) NULL,
	[SubSectionForeGroundColor] [nvarchar](20) NULL,
	[RequireAdhocFB] [bit] NULL DEFAULT ((0)),
	[RequireAutomatedFB] [bit] NULL DEFAULT ((0)),
	[IsColorCustomizationEnabled] [bit] NULL,
	[DevAreaDevPlanMapping] [bit] NULL,
	[FBGroupVisible] [bit] NULL,
	[ReqContainsGrpName] [bit] NULL,
	[FBHistoryVisible] [bit] NULL,
	[ReqFBReminderDuration] [decimal](7, 2) NULL,
	[ProvideFBReminderDuration] [decimal](7, 2) NULL,
	[FBExpiryDuration] [decimal](7, 2) NULL,
	[MinRequestThreshold] [int] NULL,
	[ApplicationTitle] [nvarchar](20) NULL,
	[PulseCheckNotiDay] [tinyint] NULL,
	[LastPulseCheckNotiDate] [datetime] NULL,
	[RequireAutomatedPulseNoti] [bit] NULL DEFAULT ((0)),
	[PulseCheckNotiMinutes] [tinyint] NULL,
	[PulseCheckNotiHour] [tinyint] NULL,
	[PulseCheckNotiDate] [datetime] NULL,
 CONSTRAINT [pk_DashboardConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DevArea]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevArea](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[IsDeleted] [bit] NOT NULL DEFAULT ((0)),
	[Description] [nvarchar](300) NULL,
	[IconPath] [nvarchar](100) NULL,
	[GroupId] [int] NULL,
	[Color] [nvarchar](20) NULL,
 CONSTRAINT [pk_DevArea_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DevAreaGroup]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevAreaGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[ClientId] [int] NOT NULL,
	[IconPath] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DevAreaRating]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DevAreaRating](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FBReqId] [bigint] NOT NULL,
	[DevAreaId] [bigint] NOT NULL,
	[FBProvidorId] [int] NOT NULL,
	[IsFBReqAcknowledged] [bit] NOT NULL DEFAULT ((0)),
	[Rating] [tinyint] NULL,
	[FBRatingComments] [nvarchar](max) NULL,
	[IsInvalid] [bit] NULL DEFAULT ((0)),
	[AcknowledgementDate] [datetime] NULL,
	[AcknowledgementDateTime] [datetime] NULL,
 CONSTRAINT [pk_DevAreaRating_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiscussionBoard]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscussionBoard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProgramId] [int] NULL,
	[UserId] [int] NULL,
	[MessageTime] [datetime] NOT NULL,
	[MessageText] [nvarchar](max) NULL,
	[BatchId] [int] NULL,
 CONSTRAINT [PK_DiscussionBoard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[FacultyText] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](100) NULL,
	[Designation] [nvarchar](250) NULL,
	[ClientId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedbackRequest]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackRequest](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FBSolicitorId] [int] NOT NULL,
	[ReqDate] [datetime2](7) NOT NULL,
	[IsSelfAcknowledged] [bit] NOT NULL DEFAULT ((0)),
	[FbReqGroupName] [nvarchar](100) NULL,
	[ReqDateTime] [datetime] NULL,
	[IsFbExpired] [bit] NULL DEFAULT ((0)),
 CONSTRAINT [pk_FeedbackRequest_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedBackSummaryDuration]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackSummaryDuration](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[FeedBackDuration] [nvarchar](40) NULL,
 CONSTRAINT [pk_FeedBackDuration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Frequency]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Frequency](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
	[OffsetInDays] [numeric](8, 4) NULL,
 CONSTRAINT [pk_Frequency_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserId] [int] NOT NULL,
	[IsChosen] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Modules]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Speaker] [nvarchar](200) NULL,
	[ProgramDayId] [int] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notes]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Data] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[ModuleId] [int] NULL,
	[ProgramId] [int] NULL,
	[LastModified] [datetime] NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotificationFrequecy]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationFrequecy](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[NuggetReminder] [tinyint] NOT NULL,
	[InactivityDays] [smallint] NOT NULL,
	[OutstandingFeedbackReqDays] [smallint] NOT NULL,
 CONSTRAINT [pk_NotificationFrequecy_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NuggetBatchMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuggetBatchMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NuggedId] [int] NULL,
	[BatchId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nuggets]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nuggets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[NuggetText] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](100) NULL,
	[ReferenceURL] [nvarchar](250) NULL,
	[ClientId] [int] NULL,
 CONSTRAINT [PK_Nugget] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_NuggetTitle] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Participant]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ParticipantText] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProgramDays]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDays](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProgramDay] [int] NULL,
	[SessionId] [int] NULL,
 CONSTRAINT [PK_ProgramDay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Programs]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[AssociatedFacultyIds] [nvarchar](100) NULL,
	[ClientId] [int] NULL,
 CONSTRAINT [PK_Program] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PulseCheck]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PulseCheck](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionItemId] [int] NOT NULL,
	[ColorCodeId] [int] NULL,
	[WeekStartDate] [datetime] NULL,
	[WeekNo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingConfiguration]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingConfiguration](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[RatingNo] [tinyint] NOT NULL,
	[ShortDesc] [nvarchar](100) NULL,
	[LongDesc] [nvarchar](400) NULL,
	[ClientId] [int] NOT NULL,
	[IconPath] [nvarchar](100) NULL,
 CONSTRAINT [pk_RatingConfiguration_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ProgramId] [int] NULL,
	[Venue] [nvarchar](100) NULL,
	[SessionId] [int] NULL,
	[TimeZoneId] [int] NULL,
	[Size] [int] NULL,
	[RemainingSlots] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[OwnerEmailId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduleTimings]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleTimings](
	[ScheduleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
 CONSTRAINT [PK_ScheduleTimings] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC,
	[ModuleId] ASC,
	[StartTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](60) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ProgramId] [int] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TimeZones]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeZones](
	[DisplayName] [nvarchar](100) NOT NULL,
	[StandardName] [nvarchar](50) NOT NULL,
	[HasDST] [bit] NOT NULL,
	[UTCOffset] [nvarchar](50) NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UTCOffsetInDecimal] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserBatchMapHistory]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBatchMapHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BatchId] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserBatchMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBatchMapping](
	[UserId] [int] NOT NULL,
	[BatchId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_UserBatchMapping] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDevAreaMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDevAreaMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DevAreaId] [bigint] NOT NULL,
	[DateAdded] [datetime] NULL,
 CONSTRAINT [pk_UserDevAreaMapping_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserFeedbackGroup]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFeedbackGroup](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FBSolicitorId] [int] NOT NULL,
	[FBProvidorId] [int] NOT NULL,
	[GroupId] [int] NULL,
 CONSTRAINT [pk_UserFeedbackGroup_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NULL,
	[EmailId] [nvarchar](100) NOT NULL,
	[RoleId] [int] NULL,
	[ClientId] [int] NULL,
	[PwdKey] [nchar](32) NULL,
	[UserText] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[PDFPath] [nvarchar](250) NULL,
	[LastActivityDate] [datetime] NULL,
	[LastProvideFBVisitDate] [datetime] NULL,
	[TimeZoneId] [int] NULL,
	[DeviceTokenId] [nvarchar](250) NULL,
	[LastProvideFBNotificationDate] [datetime] NULL,
	[LastRequestFBNotificationDate] [datetime] NULL,
	[EAId] [int] NULL,
	[PulseCheckNotiDay] [tinyint] NULL,
	[PulseCheckNotiHour] [tinyint] NULL,
	[PulseCheckNotiMinutes] [tinyint] NULL,
	[PulseCheckNotiDate] [datetime] NULL,
	[LastPulseCheckNotiDate] [datetime] NULL,
	[RequireAutomatedPulseNoti] [bit] NULL DEFAULT ((1)),
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_UserEmail] UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserScheduleMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserScheduleMapping](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ScheduleId] [int] NOT NULL,
 CONSTRAINT [pk_UserScheduleMapping_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Widget]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Widget](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](40) NULL,
 CONSTRAINT [pk_Widget_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WidgetClientMapping]    Script Date: 18/09/2016 15:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WidgetClientMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[WidgetId] [tinyint] NOT NULL,
	[ClientWidgetName] [nvarchar](40) NULL,
	[IsVisible] [bit] NOT NULL DEFAULT ((1)),
 CONSTRAINT [pk_WidgetClientMapping_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[NotificationFrequecy] ADD  DEFAULT ((0)) FOR [NuggetReminder]
GO
ALTER TABLE [dbo].[NotificationFrequecy] ADD  DEFAULT ((0)) FOR [InactivityDays]
GO
ALTER TABLE [dbo].[NotificationFrequecy] ADD  DEFAULT ((0)) FOR [OutstandingFeedbackReqDays]
GO
ALTER TABLE [dbo].[ActionItems]  WITH CHECK ADD FOREIGN KEY([DevAreaId])
REFERENCES [dbo].[DevArea] ([Id])
GO
ALTER TABLE [dbo].[ActionItems]  WITH CHECK ADD  CONSTRAINT [FK_ActionItemModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActionItems] CHECK CONSTRAINT [FK_ActionItemModule]
GO
ALTER TABLE [dbo].[ActionItems]  WITH CHECK ADD  CONSTRAINT [FK_ActionItemUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActionItems] CHECK CONSTRAINT [FK_ActionItemUser]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Batches]  WITH CHECK ADD  CONSTRAINT [FK_BatchClient] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Batches] CHECK CONSTRAINT [FK_BatchClient]
GO
ALTER TABLE [dbo].[BatchScheduleMapping]  WITH CHECK ADD  CONSTRAINT [FK_BatchScheduleMappingBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BatchScheduleMapping] CHECK CONSTRAINT [FK_BatchScheduleMappingBatch]
GO
ALTER TABLE [dbo].[BatchScheduleMapping]  WITH CHECK ADD  CONSTRAINT [FK_MappingSchedule] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BatchScheduleMapping] CHECK CONSTRAINT [FK_MappingSchedule]
GO
ALTER TABLE [dbo].[ClientDevAreaMapping]  WITH CHECK ADD  CONSTRAINT [fk_ClientDevAreaMapping_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ClientDevAreaMapping] CHECK CONSTRAINT [fk_ClientDevAreaMapping_ClientId]
GO
ALTER TABLE [dbo].[ClientDevAreaMapping]  WITH CHECK ADD  CONSTRAINT [fk_ClientDevAreaMapping_DevArea] FOREIGN KEY([DevAreaId])
REFERENCES [dbo].[DevArea] ([Id])
GO
ALTER TABLE [dbo].[ClientDevAreaMapping] CHECK CONSTRAINT [fk_ClientDevAreaMapping_DevArea]
GO
ALTER TABLE [dbo].[ClientFeedBackDurationMapping]  WITH CHECK ADD  CONSTRAINT [fk_ClientFeedBackDurationMapping_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ClientFeedBackDurationMapping] CHECK CONSTRAINT [fk_ClientFeedBackDurationMapping_ClientId]
GO
ALTER TABLE [dbo].[ClientFeedBackDurationMapping]  WITH CHECK ADD  CONSTRAINT [fk_ClientFeedBackDurationMapping_FeedBackDurationId] FOREIGN KEY([FeedBackDurationId])
REFERENCES [dbo].[FeedBackSummaryDuration] ([Id])
GO
ALTER TABLE [dbo].[ClientFeedBackDurationMapping] CHECK CONSTRAINT [fk_ClientFeedBackDurationMapping_FeedBackDurationId]
GO
ALTER TABLE [dbo].[ClientRoleMapping]  WITH CHECK ADD  CONSTRAINT [fk_ClientRoleMapping_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ClientRoleMapping] CHECK CONSTRAINT [fk_ClientRoleMapping_ClientId]
GO
ALTER TABLE [dbo].[ClientRoleMapping]  WITH CHECK ADD  CONSTRAINT [fk_ClientRoleMapping_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[ClientRoleMapping] CHECK CONSTRAINT [fk_ClientRoleMapping_RoleId]
GO
ALTER TABLE [dbo].[DashboardConfiguration]  WITH CHECK ADD  CONSTRAINT [fk_DashboardConfiguration_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[DashboardConfiguration] CHECK CONSTRAINT [fk_DashboardConfiguration_ClientId]
GO
ALTER TABLE [dbo].[DashboardConfiguration]  WITH CHECK ADD  CONSTRAINT [fk_DashboardConfiguration_FBFrequency] FOREIGN KEY([FBFrequency])
REFERENCES [dbo].[Frequency] ([Id])
GO
ALTER TABLE [dbo].[DashboardConfiguration] CHECK CONSTRAINT [fk_DashboardConfiguration_FBFrequency]
GO
ALTER TABLE [dbo].[DevArea]  WITH CHECK ADD  CONSTRAINT [fk_DevArea_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[DevAreaGroup] ([ID])
GO
ALTER TABLE [dbo].[DevArea] CHECK CONSTRAINT [fk_DevArea_GroupId]
GO
ALTER TABLE [dbo].[DevAreaGroup]  WITH CHECK ADD  CONSTRAINT [fk_DevAreaGroup_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[DevAreaGroup] CHECK CONSTRAINT [fk_DevAreaGroup_ClientId]
GO
ALTER TABLE [dbo].[DevAreaRating]  WITH CHECK ADD  CONSTRAINT [fk_DevAreaRating_DevAreaId] FOREIGN KEY([DevAreaId])
REFERENCES [dbo].[DevArea] ([Id])
GO
ALTER TABLE [dbo].[DevAreaRating] CHECK CONSTRAINT [fk_DevAreaRating_DevAreaId]
GO
ALTER TABLE [dbo].[DevAreaRating]  WITH CHECK ADD  CONSTRAINT [fk_DevAreaRating_FBProvidorId] FOREIGN KEY([FBProvidorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DevAreaRating] CHECK CONSTRAINT [fk_DevAreaRating_FBProvidorId]
GO
ALTER TABLE [dbo].[DevAreaRating]  WITH CHECK ADD  CONSTRAINT [fk_DevAreaRating_FBReqId] FOREIGN KEY([FBReqId])
REFERENCES [dbo].[FeedbackRequest] ([Id])
GO
ALTER TABLE [dbo].[DevAreaRating] CHECK CONSTRAINT [fk_DevAreaRating_FBReqId]
GO
ALTER TABLE [dbo].[DiscussionBoard]  WITH CHECK ADD FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
GO
ALTER TABLE [dbo].[DiscussionBoard]  WITH CHECK ADD  CONSTRAINT [FK_DiscussionProgram] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscussionBoard] CHECK CONSTRAINT [FK_DiscussionProgram]
GO
ALTER TABLE [dbo].[DiscussionBoard]  WITH CHECK ADD  CONSTRAINT [FK_DiscussionUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscussionBoard] CHECK CONSTRAINT [FK_DiscussionUser]
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD  CONSTRAINT [FK_FacultyClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Faculty] CHECK CONSTRAINT [FK_FacultyClientId]
GO
ALTER TABLE [dbo].[FeedbackRequest]  WITH CHECK ADD  CONSTRAINT [fk_FeedbackRequest_FBSolicitorId] FOREIGN KEY([FBSolicitorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FeedbackRequest] CHECK CONSTRAINT [fk_FeedbackRequest_FBSolicitorId]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [fk_Groups_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [fk_Groups_UserId]
GO
ALTER TABLE [dbo].[Modules]  WITH CHECK ADD  CONSTRAINT [FK_ModuleProgramDay] FOREIGN KEY([ProgramDayId])
REFERENCES [dbo].[ProgramDays] ([Id])
GO
ALTER TABLE [dbo].[Modules] CHECK CONSTRAINT [FK_ModuleProgramDay]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_NoteModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_NoteModule]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_NoteProgram] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_NoteProgram]
GO
ALTER TABLE [dbo].[Notes]  WITH CHECK ADD  CONSTRAINT [FK_NoteUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Notes] CHECK CONSTRAINT [FK_NoteUser]
GO
ALTER TABLE [dbo].[NotificationFrequecy]  WITH CHECK ADD  CONSTRAINT [fk_NotificationFrequecy_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[NotificationFrequecy] CHECK CONSTRAINT [fk_NotificationFrequecy_ClientId]
GO
ALTER TABLE [dbo].[NuggetBatchMapping]  WITH CHECK ADD  CONSTRAINT [FK_NugBatchMapBatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
GO
ALTER TABLE [dbo].[NuggetBatchMapping] CHECK CONSTRAINT [FK_NugBatchMapBatchId]
GO
ALTER TABLE [dbo].[NuggetBatchMapping]  WITH CHECK ADD  CONSTRAINT [FK_NugBatchMapNugId] FOREIGN KEY([NuggedId])
REFERENCES [dbo].[Nuggets] ([Id])
GO
ALTER TABLE [dbo].[NuggetBatchMapping] CHECK CONSTRAINT [FK_NugBatchMapNugId]
GO
ALTER TABLE [dbo].[Nuggets]  WITH CHECK ADD  CONSTRAINT [FK_NuggetsClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Nuggets] CHECK CONSTRAINT [FK_NuggetsClientId]
GO
ALTER TABLE [dbo].[ProgramDays]  WITH CHECK ADD FOREIGN KEY([SessionId])
REFERENCES [dbo].[Sessions] ([Id])
GO
ALTER TABLE [dbo].[ProgramDays]  WITH CHECK ADD FOREIGN KEY([SessionId])
REFERENCES [dbo].[Sessions] ([Id])
GO
ALTER TABLE [dbo].[Programs]  WITH CHECK ADD  CONSTRAINT [FK_ProgramsClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Programs] CHECK CONSTRAINT [FK_ProgramsClientId]
GO
ALTER TABLE [dbo].[PulseCheck]  WITH CHECK ADD  CONSTRAINT [FKPulseCheckActionItemId] FOREIGN KEY([ActionItemId])
REFERENCES [dbo].[ActionItems] ([Id])
GO
ALTER TABLE [dbo].[PulseCheck] CHECK CONSTRAINT [FKPulseCheckActionItemId]
GO
ALTER TABLE [dbo].[PulseCheck]  WITH CHECK ADD  CONSTRAINT [FKPulseCheckColorCodeId] FOREIGN KEY([ColorCodeId])
REFERENCES [dbo].[ColorCode] ([Id])
GO
ALTER TABLE [dbo].[PulseCheck] CHECK CONSTRAINT [FKPulseCheckColorCodeId]
GO
ALTER TABLE [dbo].[RatingConfiguration]  WITH CHECK ADD  CONSTRAINT [fk_RatingConfiguration_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[RatingConfiguration] CHECK CONSTRAINT [fk_RatingConfiguration_ClientId]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD FOREIGN KEY([SessionId])
REFERENCES [dbo].[Sessions] ([Id])
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleProgram] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_ScheduleProgram]
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [FK_ShceduleTimeZone] FOREIGN KEY([TimeZoneId])
REFERENCES [dbo].[TimeZones] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [FK_ShceduleTimeZone]
GO
ALTER TABLE [dbo].[ScheduleTimings]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleTimingModule] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScheduleTimings] CHECK CONSTRAINT [FK_ScheduleTimingModule]
GO
ALTER TABLE [dbo].[ScheduleTimings]  WITH CHECK ADD  CONSTRAINT [FK_ScheduleTimingSchedule] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ScheduleTimings] CHECK CONSTRAINT [FK_ScheduleTimingSchedule]
GO
ALTER TABLE [dbo].[Sessions]  WITH CHECK ADD  CONSTRAINT [FK_Session_Program] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Sessions] CHECK CONSTRAINT [FK_Session_Program]
GO
ALTER TABLE [dbo].[UserBatchMapHistory]  WITH CHECK ADD  CONSTRAINT [FK_NUserBatchMapHistoryBatchId] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
GO
ALTER TABLE [dbo].[UserBatchMapHistory] CHECK CONSTRAINT [FK_NUserBatchMapHistoryBatchId]
GO
ALTER TABLE [dbo].[UserBatchMapHistory]  WITH CHECK ADD  CONSTRAINT [FK_UserBatchMapHistoryUserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserBatchMapHistory] CHECK CONSTRAINT [FK_UserBatchMapHistoryUserId]
GO
ALTER TABLE [dbo].[UserBatchMapping]  WITH CHECK ADD  CONSTRAINT [FK_MappingBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[Batches] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserBatchMapping] CHECK CONSTRAINT [FK_MappingBatch]
GO
ALTER TABLE [dbo].[UserBatchMapping]  WITH CHECK ADD  CONSTRAINT [FK_UserBatchMappingUser] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserBatchMapping] CHECK CONSTRAINT [FK_UserBatchMappingUser]
GO
ALTER TABLE [dbo].[UserDevAreaMapping]  WITH CHECK ADD  CONSTRAINT [fk_UserDevAreaMapping_DevAreaId] FOREIGN KEY([DevAreaId])
REFERENCES [dbo].[DevArea] ([Id])
GO
ALTER TABLE [dbo].[UserDevAreaMapping] CHECK CONSTRAINT [fk_UserDevAreaMapping_DevAreaId]
GO
ALTER TABLE [dbo].[UserDevAreaMapping]  WITH CHECK ADD  CONSTRAINT [fk_UserDevAreaMapping_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserDevAreaMapping] CHECK CONSTRAINT [fk_UserDevAreaMapping_UserId]
GO
ALTER TABLE [dbo].[UserFeedbackGroup]  WITH CHECK ADD  CONSTRAINT [fk_UserFeedbackGroup_FBProvidorId] FOREIGN KEY([FBProvidorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserFeedbackGroup] CHECK CONSTRAINT [fk_UserFeedbackGroup_FBProvidorId]
GO
ALTER TABLE [dbo].[UserFeedbackGroup]  WITH CHECK ADD  CONSTRAINT [fk_UserFeedbackGroup_FBSolicitorId] FOREIGN KEY([FBSolicitorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserFeedbackGroup] CHECK CONSTRAINT [fk_UserFeedbackGroup_FBSolicitorId]
GO
ALTER TABLE [dbo].[UserFeedbackGroup]  WITH CHECK ADD  CONSTRAINT [fk_userfeedbackgroup_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([ID])
GO
ALTER TABLE [dbo].[UserFeedbackGroup] CHECK CONSTRAINT [fk_userfeedbackgroup_GroupId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_UserClient] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_UserClient]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_UserRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_UserRole]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_Users_TimeZoneId] FOREIGN KEY([TimeZoneId])
REFERENCES [dbo].[TimeZones] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_Users_TimeZoneId]
GO
ALTER TABLE [dbo].[UserScheduleMapping]  WITH CHECK ADD  CONSTRAINT [fk_UserScheduleMapping_ScheduleId] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([Id])
GO
ALTER TABLE [dbo].[UserScheduleMapping] CHECK CONSTRAINT [fk_UserScheduleMapping_ScheduleId]
GO
ALTER TABLE [dbo].[UserScheduleMapping]  WITH CHECK ADD  CONSTRAINT [fk_UserScheduleMapping_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserScheduleMapping] CHECK CONSTRAINT [fk_UserScheduleMapping_UserId]
GO
ALTER TABLE [dbo].[WidgetClientMapping]  WITH CHECK ADD  CONSTRAINT [fk_WidgetClientMapping_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[WidgetClientMapping] CHECK CONSTRAINT [fk_WidgetClientMapping_ClientId]
GO
ALTER TABLE [dbo].[WidgetClientMapping]  WITH CHECK ADD  CONSTRAINT [fk_WidgetClientMapping_WidgetId] FOREIGN KEY([WidgetId])
REFERENCES [dbo].[Widget] ([Id])
GO
ALTER TABLE [dbo].[WidgetClientMapping] CHECK CONSTRAINT [fk_WidgetClientMapping_WidgetId]
GO
