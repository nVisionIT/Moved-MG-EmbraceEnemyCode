SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountantInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountantInfo](
	[UserID] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[UserName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployeeFingerPrint1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmployeeFingerPrint1](
	[fldEmpIDText] [varchar](10) NULL,
	[fldFingerPrint] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Loan](
	[LoanNo] [int] IDENTITY(1,1) NOT NULL,
	[Amountloan] [decimal](18, 2) NOT NULL,
	[TotalAmorzitation] [decimal](18, 2) NOT NULL,
	[StartDate] [nvarchar](50) NOT NULL,
	[EndDate] [nvarchar](50) NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
	[TypeOfLoan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Loan] PRIMARY KEY CLUSTERED 
(
	[LoanNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmployee](
	[fldEmpIDAuto] [int] IDENTITY(1,1) NOT NULL,
	[fldEmpIDText] [varchar](10) NULL,
	[ID] [varchar](50) NULL,
	[fldLastName] [varchar](50) NULL,
	[fldFirstName] [varchar](50) NULL,
	[fldMiddleName] [varchar](50) NULL,
	[fldCity] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[civilstatus] [varchar](50) NULL,
	[province] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[religion] [varchar](50) NULL,
	[citizenship] [varchar](50) NULL,
	[child] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[birthday] [datetime] NULL,
	[datehired] [datetime] NULL,
	[position] [varchar](50) NULL,
	[school] [varchar](50) NULL,
	[yeargraduated] [varchar](50) NULL,
	[school1] [varchar](50) NULL,
	[yeargraduated1] [varchar](50) NULL,
	[school2] [varchar](50) NULL,
	[yeargraduated2] [varchar](50) NULL,
	[picture] [image] NULL,
	[salary] [int] NULL,
	[NoOfDependent] [varchar](50) NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[fldEmpIDAuto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployeeAttendance1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmployeeAttendance1](
	[fldEmpID] [varchar](10) NULL,
	[fldAttendanceDate] [smalldatetime] NULL,
	[fldTimeIn] [smalldatetime] NULL,
	[fldTimeOut] [smalldatetime] NULL,
	[TotalNoOfHours] [int] NULL,
	[TotalNoOfLate] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AdminInfo](
	[UserID] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[UserName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tax]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tax](
	[TaxNo] [int] IDENTITY(1,1) NOT NULL,
	[TaxFrom] [decimal](18, 2) NOT NULL,
	[TaxTo] [decimal](18, 2) NOT NULL,
	[PercentOver] [decimal](18, 2) NOT NULL,
	[TaxExemption] [decimal](18, 2) NOT NULL,
	[CivilStatus] [nvarchar](50) NOT NULL,
	[Dependent] [nvarchar](50) NOT NULL,
	[NoOfDependent] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TaxNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployeeFingerPrint]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmployeeFingerPrint](
	[fldEmpIDText] [varchar](10) NULL,
	[fldFingerPrint] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NumberOfLeave]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NumberOfLeave](
	[LeaveNo] [int] IDENTITY(1,1) NOT NULL,
	[SickLeave] [int] NOT NULL,
	[VacationLeave] [int] NOT NULL,
	[Maternity] [int] NOT NULL,
	[Paternity] [int] NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeNumberOfLeave] PRIMARY KEY CLUSTERED 
(
	[LeaveNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bprocedureSelectPagIbig]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[bprocedureSelectPagIbig]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
		Select *
	from PagIbig 
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Positions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Positions](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[PositionName] [nvarchar](50) NOT NULL,
	[Salary] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PagIbig]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PagIbig](
	[PagIbigSalaryBracetNo] [int] IDENTITY(1,1) NOT NULL,
	[MonthlyCompensationFrom] [int] NOT NULL,
	[MonthlyCompensationTo] [int] NOT NULL,
	[EmployeeShare] [int] NOT NULL,
	[EmployerShare] [int] NOT NULL,
	[TotalMonthlyContribution] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PagIbigSalaryBracetNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprocedureSelectEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[eprocedureSelectEmployee]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from employee
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Leave]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Leave](
	[LeaveID] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [nvarchar](50) NOT NULL,
	[EndDate] [nvarchar](50) NOT NULL,
	[NoOfDays] [nvarchar](50) NOT NULL,
	[Reason] [nvarchar](50) NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LeaveID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gprocedureSearchLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[gprocedureSearchLeave]
	@Input VARCHAR(50)
	as

	select EmployeePersonalInfo.EmployeeID,
	EmployeePersonalInfo.LastName,
	EmployeePersonalInfo.FirstName,
	EmployeePersonalInfo.MiddleName,
	Leave.LeaveID,
	Leave.StartDate,
	Leave.EndDate,
	Leave.NoOfDays,
	Leave.Reason
	From Leave inner join EmployeePersonalInfo on EmployeePersonalInfo.EmployeeID= Leave.EmployeeID
	where EmployeePersonalInfo.EmployeeID like @Input or
	EmployeePersonalInfo.LastName like @Input or
    EmployeePersonalInfo.FirstName like @Input or
	EmployeePersonalInfo.MiddleName like @Input or
	Leave.LeaveID like @Input or
	Leave.EndDate like @Input or
	Leave.NoOfDays like @Input or
	Leave.Reason like @Input 
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhilHealth]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhilHealth](
	[PhilHealthSalaryBracetNo] [int] IDENTITY(1,1) NOT NULL,
	[SalaryRangeFrom] [decimal](18, 2) NULL,
	[SalaryRangeTo] [decimal](18, 2) NOT NULL,
	[SalaryBase] [decimal](18, 2) NULL,
	[EmployeeShare] [decimal](18, 2) NOT NULL,
	[EmployerShare] [decimal](18, 2) NOT NULL,
	[TotalMonthlyPremium] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK__PhilHealth__5BE2A6F2] PRIMARY KEY CLUSTERED 
(
	[PhilHealthSalaryBracetNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SSS](
	[SSSSalaryBracetNo] [int] IDENTITY(1,1) NOT NULL,
	[SalaryRangeFrom] [decimal](18, 2) NOT NULL,
	[SalaryRangeTo] [decimal](18, 2) NOT NULL,
	[SalaryBase] [decimal](18, 2) NULL,
	[SocialSecurityEmployerShare] [decimal](18, 2) NOT NULL,
	[SocialSecurityEmployeeShare] [decimal](18, 2) NOT NULL,
	[SocialSecurityTotal] [decimal](18, 2) NOT NULL,
	[EmployerShare] [decimal](18, 2) NOT NULL,
	[TotalContributionEmployeeShare] [decimal](18, 2) NOT NULL,
	[TotalContributionEmployerShare] [decimal](18, 2) NOT NULL,
	[TotalContribution] [decimal](18, 2) NOT NULL,
	[TotalContributionForSEVMOFW] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK__SSS__5DCAEF64] PRIMARY KEY CLUSTERED 
(
	[SSSSalaryBracetNo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureCountPayroll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureCountPayroll]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select Count(PayrollID) from Payroll
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureLastIDPayroll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureLastIDPayroll]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
SELECT TOP (1) PayrollID FROM Payroll ORDER BY PayrollID DESC
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprocedureCountEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[eprocedureCountEmployee]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	  select Count(EmoloyeeID) from Employee
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprocedureLastIDEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[eprocedureLastIDEmployee]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT TOP (1) EmoloyeeID FROM Employee ORDER BY EmoloyeeID DESC
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[eprocedureInsertEmployee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[eprocedureInsertEmployee]
	  @EmoloyeeID nvarchar(50),
      @FirstName nvarchar(50),
      @MiddleName nvarchar(50),
      @LastName nvarchar(50),
      @Age nvarchar(50),
      @Birthday nvarchar(50),
      @Sex nvarchar(50),
      @City nvarchar(50),
      @Province nvarchar(50),
      @Street nvarchar(50),
      @Country nvarchar(50),
      @Religion nvarchar(50),
      @CivilStatus nvarchar(50),
      @NoOfChild nvarchar(50),
      @NoOfDependent nvarchar(50),
      @Position nvarchar(50),
      @Salary decimal(18,2),
      @EmployeePicture image,
      @TertiarySchool nvarchar(50),
      @TertiaryYear nvarchar(50),
      @SecondarySchool nvarchar(50),
      @SecondaryYear nvarchar(50),
      @ElementarySchool nvarchar(50),
      @ElementaryYear nvarchar(50),
	  @DateHired nvarchar(50)
AS
	insert into Employee VALUES ( @EmoloyeeID,
      @FirstName,
      @MiddleName,
      @LastName,
      @Age,
      @Birthday,
      @Sex,
      @City,
      @Province,
      @Street,
      @Country,
      @Religion,
      @CivilStatus,
      @NoOfChild,
      @NoOfDependent,
      @Position,
      @Salary,
      @TertiarySchool,
      @TertiaryYear,
      @SecondarySchool,
      @SecondaryYear,
      @ElementarySchool,
      @ElementaryYear,
	  @DateHired,
	  @EmployeePicture)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureSelectTimeIn]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureSelectTimeIn]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select fldTimeIn,fldEmpID,fldAttendanceDate from tblEmployeeAttendance 
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureSearchAttendanceReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureSearchAttendanceReport]
	@Input VARCHAR(50)
AS
	Select EmployeePersonalInfo.LastName,
	EmployeePersonalInfo.FirstName,
	EmployeePersonalInfo.MiddleName,
	AttendanceReport.AttendanceReportNo,
	AttendanceReport.Period,
    AttendanceReport.TotalNoOfWork,
    AttendanceReport.TotalNoOfLateandAbsent
	From AttendanceReport inner join  EmployeePersonalInfo on EmployeePersonalInfo.EmployeeID = AttendanceReport.EmployeeID where 
	EmployeePersonalInfo.LastName like @Input or
	EmployeePersonalInfo.FirstName like @Input or
	EmployeePersonalInfo.MiddleName like @Input or
	AttendanceReport.AttendanceReportNo like @Input or
	AttendanceReport.Period like @Input or
    AttendanceReport.TotalNoOfWork like @Input or
    AttendanceReport.TotalNoOfLateandAbsent like @Input
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureLastIDAttendanceReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureLastIDAttendanceReport]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT TOP (1) AttendanceReportNo FROM AttendanceReport ORDER BY AttendanceReportNo DESC
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureJoinEmployeeAttendanceReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureJoinEmployeeAttendanceReport]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select EmployeePersonalInfo.LastName,
	EmployeePersonalInfo.FirstName,
	EmployeePersonalInfo.MiddleName,
	AttendanceReport.AttendanceReportNo,
	AttendanceReport.Period,
    AttendanceReport.TotalNoOfWork,
    AttendanceReport.TotalNoOfLateandAbsent
	From AttendanceReport inner join  EmployeePersonalInfo on EmployeePersonalInfo.EmployeeID = AttendanceReport.EmployeeID
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureCountAttendanceReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureCountAttendanceReport]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select Count(AttendanceReportNo) from AttendanceReport
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AttendanceReport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AttendanceReport](
	[AttendanceReportNO] [nvarchar](50) NOT NULL,
	[TotalNoOfWork] [int] NOT NULL,
	[TotalNoOfAbsent] [int] NOT NULL,
	[TotalNoOfLate] [int] NOT NULL,
	[Period] [nvarchar](50) NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AttendanceReport] PRIMARY KEY CLUSTERED 
(
	[AttendanceReportNO] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Holiday]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Holiday](
	[HolidayID] [nvarchar](50) NOT NULL,
	[HolidayName] [nvarchar](50) NOT NULL,
	[HolidayDate] [nvarchar](50) NOT NULL,
	[HolidayReason] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[HolidayID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmployeeAttendance]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmployeeAttendance](
	[fldEmpID] [varchar](10) NULL,
	[fldAttendanceDate] [smalldatetime] NULL,
	[fldTimeIn] [smalldatetime] NULL,
	[fldTimeOut] [smalldatetime] NULL,
	[TotalNoOfHours] [int] NULL,
	[TotalNoOfLate] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BonusFee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BonusFee](
	[BonusFeeID] [int] IDENTITY(1,1) NOT NULL,
	[Types] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BonusFee] PRIMARY KEY CLUSTERED 
(
	[BonusFeeID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iprocedureDeleteEmployeeLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[iprocedureDeleteEmployeeLoan]

@LoanID nvarchar(50)
AS
	delete from Loan where LoanNo  = @LoanID
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iprocedureSearchLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[iprocedureSearchLoan]

@Input VARCHAR(50)
AS
	select Employee.LastName + '','' + '' '' + Employee.FirstName + '' '' + SUBSTRING(Employee.MiddleName,1, 1) + ''.'' AS fullname,
	Loan.LoanNo,
	Loan.AmountLoan,
	Loan.TotalAmorzitation,
	Loan.StartDate,
	Loan.EndDate,
	Loan.TypeOfLoan
	from Employee inner join Loan on Loan.EmployeeID = Employee.ID where 
	Employee.ID like @Input  or
	Employee.LastName like @Input  or 
	Employee.FirstName like @Input or 
	Employee.MiddleName like @Input or
	Loan.LoanNo like @Input  or
	Loan.AmountLoan like @Input  or
	Loan.TotalAmorzitation like @Input  or
	Loan.StartDate like @Input  or
	Loan.EndDate like @Input or 
	Loan.TypeOfLoan like @Input
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblReference]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblReference](
	[fldUser] [varchar](10) NULL,
	[fldStatus] [varchar](10) NULL,
	[fldLoad] [float] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureSearchBonus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureSearchBonus]

	@Input VARCHAR(50)
	AS
	select Employee.LastName + '','' + '' '' + Employee.FirstName + '' '' + SUBSTRING(Employee.MiddleName,1, 1) + ''.'' AS fullname,
	BonusFee.BonusFeeID,
    	BonusFee.Types,
    	BonusFee.Date,
    	BonusFee.Amount
	from Employee inner join BonusFee on Employee.ID = BonusFee.EmployeeID where
	Employee.EmployeeID like @Input or 
	Employee.LastName like @Input or
	Employee.FirstName like @Input or
	Employee.MiddleName like @Input or
	BonusFee.BonusFeeID like @Input or
    	BonusFee.Types  like @Input or
    	BonusFee.Date  like @Input or
    	BonusFee.Amount like @Input
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payroll]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Payroll](
	[PayslipID] [int] IDENTITY(1,1) NOT NULL,
	[PayrollID] [nvarchar](50) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
	[Period] [nvarchar](50) NOT NULL,
	[SalaryBiWeekly] [decimal](18, 2) NOT NULL,
	[SalaryWithOutDeduction] [decimal](18, 2) NOT NULL,
	[LateDeduction] [decimal](18, 2) NOT NULL,
	[BonusFee] [decimal](18, 2) NOT NULL,
	[LoanDeduction] [decimal](18, 2) NOT NULL,
	[SSSLoanDeduction] [decimal](18, 2) NULL,
	[PagIbigLoanDeduction] [decimal](18, 2) NULL,
	[SSSDeduction] [decimal](18, 2) NOT NULL,
	[PhilHealthDeduction] [decimal](18, 2) NOT NULL,
	[PagIbigDeduction] [decimal](18, 2) NOT NULL,
	[TaxDeduction] [decimal](18, 2) NOT NULL,
	[GrossPay] [decimal](18, 2) NOT NULL,
	[NetPay] [decimal](18, 2) NOT NULL,
	[AttendanceReportNO] [nvarchar](50) NOT NULL,
	[EmployeeID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Payroll] PRIMARY KEY CLUSTERED 
(
	[PayslipID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureSelectAttendances]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureSelectAttendances]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	Select TotalNoOfHours,TotalNoOfLate,fldEmpID from tblEmployeeAttendance1 
	where fldAttendanceDate between Convert(datetime ,@Input) AND Convert(datetime ,@Output)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureSelectAttendance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureSelectAttendance]

AS
	Select tblEmployee.ID, 
tblEmployee.fldLastName + '','' + '' '' + tblEmployee.fldFirstName + '' '' + SUBSTRING(tblEmployee.fldMiddleName,1, 1) + ''.'' AS fullname,
	tblEmployee.position,
	substring(convert(nvarchar,tblEmployeeAttendance1.fldAttendanceDate),0,13) as Date,
	substring(convert(nvarchar,tblEmployeeAttendance1.fldTimeIn),12,14) as TimeIn,
	substring(convert(nvarchar,tblEmployeeAttendance1.fldTimeOut),12,14) as TimeOut,
	 tblEmployeeAttendance1.TotalNoOfHours as TotalHours,
     tblEmployeeAttendance1.TotalNoOfLate as TotalLate
	 from tblEmployeeAttendance1 inner join  tblEmployee on tblEmployeeAttendance1.fldEmpID = tblEmployee.ID
	  
	 where  tblEmployeeAttendance1.fldAttendanceDate = substring(convert(nvarchar,GETDATE()),0,13) 
	
	 RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureSelectPayrollLoanSSS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureSelectPayrollLoanSSS]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	Select TotalAmorzitation,EmployeeID from Loan
where TypeOfLoan = ''SSS Loan'' and StartDate >= Convert(datetime ,@Input) AND StartDate >= Convert(datetime ,@Input)
And EndDate >= Convert(datetime ,@Output) and EndDate >=  Convert(datetime ,@Output)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureSelectPayrollLoanPagIbig]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureSelectPayrollLoanPagIbig]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	Select TotalAmorzitation,EmployeeID from Loan
where TypeOfLoan = ''PagIbig Loan'' and StartDate >= Convert(datetime ,@Input) AND StartDate >= Convert(datetime ,@Input)
and EndDate >= Convert(datetime ,@Output) and EndDate >=  Convert(datetime ,@Output)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iprocedureJoinEmployeeLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[iprocedureJoinEmployeeLoan]

AS
	select tblEmployee.fldLastName + '','' + '' '' + tblEmployee.fldFirstName + '' '' + SUBSTRING(tblEmployee.fldMiddleName,1, 1) + ''.'' AS fullname,
	Loan.LoanNo,
	Loan.AmountLoan,
	Loan.TotalAmorzitation,
	Loan.StartDate,
	Loan.EndDate,
	Loan.TypeOfLoan
	from tblEmployee inner join Loan on Loan.EmployeeID = tblEmployee.ID
Return' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureSelectPayrollLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureSelectPayrollLoan]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	Select TotalAmorzitation,EmployeeID from Loan
where TypeOfLoan = ''Company Loan'' and StartDate >= Convert(datetime ,@Input) AND StartDate >= Convert(datetime ,@Input)
And EndDate >= Convert(datetime ,@Output) and EndDate >=  Convert(datetime ,@Output)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iprocedureInsertEmployeeLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[iprocedureInsertEmployeeLoan]

     @Amountloan decimal(18,2),
     @TotalAmorzitation decimal(18,2),
     @StartDate nvarchar(50),
     @EndDate nvarchar(50),
     @EmployeeID nvarchar(50),
	 @TypeLoan nvarchar(50)
AS
	insert into Loan VALUES (
     @Amountloan,
     @TotalAmorzitation,
     @StartDate,
     @EndDate,
     @EmployeeID,
	 @TypeLoan)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iprocedureUpdateEmployeeLoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[iprocedureUpdateEmployeeLoan]

     @LoanID nvarchar(50),
     @Amountloan decimal(18,2),
     @TotalAmorzitation decimal(18,2),
     @StartDate nvarchar(50),
     @EndDate nvarchar(50),
     @EmployeeID nvarchar(50),
	 @TypeLoan nvarchar(50)
AS
	Update Loan Set 
    Amountloan = @Amountloan,
    TotalAmorzitation = @TotalAmorzitation,
    StartDate = @StartDate,
	EndDate = @EndDate,
	EmployeeID = @EmployeeID,
	TypeOfLoan = @TypeLoan
	Where LoanNo =  @LoanID' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureSearchPayroll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureSearchPayroll]	
@Input VARCHAR(50)
AS
	Select tblEmployee.fldLastName,
	tblEmployee.fldFirstName,
	tblEmployee.fldMiddleName,
	Payroll.PayrollID,
	Payroll.Period,
	Payroll.SalaryBiWeekly,
	Payroll.SalaryWithOutDeduction,
	Payroll.LateDeduction,
	Payroll.SSSDeduction,
	Payroll.PhilHealthDeduction,
	Payroll.PagIbigDeduction,
	Payroll.TaxDeduction,
	Payroll.GrossPay,
	Payroll.NetPay From Payroll inner join  tblEmployee on tblEmployee.ID = Payroll.EmployeeID where
	tblEmployee.fldLastName like @Input or
	tblEmployee.fldFirstName like @Input or
	tblEmployee.fldMiddleName like @Input or
	Payroll.PayrollID like @Input or
	Payroll.Period like @Input or
	Payroll.SalaryBiWeekly like @Input or
	Payroll.SalaryWithOutDeduction like @Input or
	Payroll.LateDeduction like @Input or
	Payroll.SSSDeduction like @Input or
	Payroll.PhilHealthDeduction like @Input or
	Payroll.PagIbigDeduction like @Input or
	Payroll.TaxDeduction like @Input or
	Payroll.GrossPay like @Input or
	Payroll.NetPay like @Input
	RETURN




	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureJoinEmployeePayroll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureJoinEmployeePayroll]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select tblEmployee.fldLastName,
	tblEmployee.fldFirstName,
	tblEmployee.fldMiddleName,
	tblEmployee.ID,
	Payroll.PayslipID,
	Payroll.PayrollID,
	Payroll.Period,
	Payroll.SalaryBiWeekly,
	Payroll.SalaryWithOutDeduction,
	Payroll.LateDeduction,
	Payroll.SSSDeduction,
	Payroll.PhilHealthDeduction,
	Payroll.PagIbigDeduction,
	Payroll.TaxDeduction,
	Payroll.GrossPay,
	Payroll.NetPay From Payroll inner join  tblEmployee on tblEmployee.ID = Payroll.EmployeeID
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureJoinEmployeeBonus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureJoinEmployeeBonus]

as
	select tblEmployee.fldLastName + '','' + '' '' + tblEmployee.fldFirstName + '' '' + SUBSTRING(tblEmployee.fldMiddleName,1, 1) + ''.'' AS fullname,
	BonusFee.BonusFeeID,
    	BonusFee.Types,
    	BonusFee.Date,
    	BonusFee.Amount
        from tblEmployee inner join BonusFee on
        tblEmployee.ID = BonusFee.EmployeeID
return' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureSelectAttendances]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureSelectAttendances]

AS
	Select tblEmployee.ID, 
tblEmployee.fldLastName + '','' + '' '' + tblEmployee.fldFirstName + '' '' + SUBSTRING(tblEmployee.fldMiddleName,1, 1) + ''.'' AS fullname,
	tblEmployee.position,
	substring(convert(nvarchar,tblEmployeeAttendance.fldAttendanceDate),0,13) as Date,
	substring(convert(nvarchar,tblEmployeeAttendance.fldTimeIn),12,14) as TimeIn,
	substring(convert(nvarchar,tblEmployeeAttendance.fldTimeOut),12,14) as TimeOut,
	 tblEmployeeAttendance.TotalNoOfHours as TotalHours,
     tblEmployeeAttendance.TotalNoOfLate as TotalLate
	 from tblEmployeeAttendance inner join  tblEmployee on tblEmployeeAttendance.fldEmpID = tblEmployee.ID
	  
	 where  tblEmployeeAttendance.fldAttendanceDate = substring(convert(nvarchar,GETDATE()),0,13) 
	
	 RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureSelectPayrolls]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureSelectPayrolls]
	@Input nvarchar(50)
	
AS
	Select tblEmployee.fldLastName,
	tblEmployee.fldFirstName,
	tblEmployee.fldMiddleName,
	tblEmployee.ID,
	Payroll.PayslipID,
	Payroll.PayrollID,
	Payroll.Period,
	Payroll.SalaryBiWeekly,
	Payroll.SalaryWithOutDeduction,
	Payroll.LateDeduction,
	Payroll.SSSDeduction,
	Payroll.PhilHealthDeduction,
	Payroll.PagIbigDeduction,
	Payroll.TaxDeduction,
	Payroll.GrossPay,
	Payroll.NetPay From Payroll inner join  tblEmployee on tblEmployee.ID = Payroll.EmployeeID where Payroll.Period = @Input
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureSearchNoOfLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureSearchNoOfLeave]
	@Input VARCHAR(50)
AS
	select fldLastName + '','' + '' '' + fldFirstName + '' '' + SUBSTRING(fldMiddleName,1, 1) + ''.'' AS fullname,
	NumberOfLeave.LeaveNo,
	NumberOfLeave.SickLeave,
	NumberOfLeave.VacationLeave,
	NumberOfLeave.Maternity,
	NumberOfLeave.Paternity
	 from  NumberOfLeave inner join tblEmployee on tblEmployee.ID= NumberOfLeave.EmployeeID
	 where NumberOfLeave.LeaveNo  like @Input or
	NumberOfLeave.SickLeave  like @Input or
	NumberOfLeave.VacationLeave  like @Input or
	NumberOfLeave.Maternity  like @Input or
	NumberOfLeave.Paternity  like @Input
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureJoinEmployeeNoOfLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureJoinEmployeeNoOfLeave]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select fldLastName + '','' + '' '' + fldFirstName + '' '' + SUBSTRING(fldMiddleName,1, 1) + ''.'' AS fullname,
	NumberOfLeave.LeaveNo,
	NumberOfLeave.SickLeave,
	NumberOfLeave.VacationLeave,
	NumberOfLeave.Maternity,
	NumberOfLeave.Paternity
	 from  NumberOfLeave inner join tblEmployee on tblEmployee.ID= NumberOfLeave.EmployeeID
	RETURN

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gprocedureSelectEmployeeName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[gprocedureSelectEmployeeName]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
Select fldLastName + '','' + '' '' + fldFirstName + '' '' + SUBSTRING(fldMiddleName,1, 1) + ''.'' AS fullname,ID from tblEmployee
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureSelectPayroll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureSelectPayroll]
@Input nvarchar(50)
AS
	select AttendanceReport.AttendanceReportNo,
	AttendanceReport.TotalNoOfWork,
	AttendanceReport.TotalNoOfAbsent,
	AttendanceReport.TotalNoOfLate,
SSS.SocialSecurityEmployeeShare,
PhilHealth.EmployeeShare as PhilHealthEmployeeShare,
PagIbig.EmployeeShare as PagIbigEmployeeShare,
tblEmployee.salary,
tblEmployee.ID,
tblEmployee.NoOfDependent
from SSS,PhilHealth,PagIbig,
tblEmployee inner join AttendanceReport on tblEmployee.ID = AttendanceReport.EmployeeID where 
tblEmployee.Salary > SSS.SalaryRangeFrom and 
tblEmployee.Salary < SSS.SalaryRangeTo and
tblEmployee.Salary <= PagIbig.MonthlyCompensationFrom and
tblEmployee.Salary > PagIbig.MonthlyCompensationTo and
tblEmployee.Salary >= PhilHealth.SalaryRangeFrom and 
tblEmployee.Salary <= PhilHealth.SalaryRangeTo
 and AttendanceReport.Period =@Input
RETURN
	                                                    ' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gprocedureJoinEmployeeLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[gprocedureJoinEmployeeLeave]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select fldLastName + '','' + '' '' + fldFirstName + '' '' + SUBSTRING(fldMiddleName,1, 1) + ''.'' AS fullname,
	LeaveID,
	StartDate,
	EndDate,
	NoOfDays,
	Reason
	 from Leave inner join tblEmployee on tblEmployee.ID= Leave.EmployeeID
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fprocedureInsertPayroll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[fprocedureInsertPayroll]
	 @PayrollID nvarchar(50),
      @Date nvarchar(50),
      @Period nvarchar(50),
      @SalaryPerMonth decimal(18,2),
	  @Salary decimal(18,2),
	  @Late decimal(18,2),
	  @BonusFee decimal(18,2),
	  @Loan decimal(18,2),
	  @LoanSSS decimal(18,2),
	  @LoanPagIbig decimal(18,2),
      @SSSDeduction decimal(18,2),
      @PhilHealthDeduction decimal(18,2),
      @PagIbigDeduction decimal(18,2),
      @TaxDeduction decimal(18,2),
      @GrossPay decimal(18,2),
      @NetPay decimal(18,2),
      @AttendanReportNo nvarchar(50),
      @EmployeeID nvarchar(50)
AS

	insert into Payroll VALUES (@PayrollID,
      @Date,
      @Period,
      @SalaryPerMonth,
	  @Salary,
	  @Late,
	  @BonusFee,
	  @Loan,
	  @LoanSSS,
	  @LoanPagIbig,
      @SSSDeduction,
      @PhilHealthDeduction,
      @PagIbigDeduction,
      @TaxDeduction,
      @GrossPay,
      @NetPay,
      @AttendanReportNo,
      @EmployeeID)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureSelectTax]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureSelectTax]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select *
	from Tax
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureSearchTax]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureSearchTax]
	@Input VARCHAR(50)
	AS
	 
	Select *
	from Tax where TaxFrom like @Input 
	or TaxTo like @Input 
	or PercentOver like @Input 
	or TaxExemption like @Input 
 	or CivilStatus like @Input 
	or Dependent like @Input 
	or NoOfDependent like @Input
	or TaxNo like @Input 
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureDeleteTax]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureDeleteTax]
	@TaxNo nvarchar(50)
AS
	delete from Tax where TaxNo  = @TaxNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureUpdateTax]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureUpdateTax]
		@TaxNo nvarchar(50),
        @TaxFrom decimal(18,2),
		@TaxTo decimal(18,2),
        @PercentOver decimal(18,2),
        @TaxExemption decimal(18,2),
        @CivilStatus nvarchar(50),
        @Dependent nvarchar(50),
        @NoOfDependent nvarchar(50)

AS
	Update Tax Set 
	TaxFrom = @TaxFrom,
	TaxTo = @TaxTo,
	PercentOver = @PercentOver,
	TaxExemption = @TaxExemption,
	CivilStatus = @CivilStatus,
	Dependent = @Dependent,
	NoOfDependent = @NoOfDependent
	Where TaxNo = @TaxNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureInsertTax]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureInsertTax]
        @TaxFrom decimal(18,2),
		@TaxTo decimal(18,2),
        @PercentOver decimal(18,2),
        @TaxExemption decimal(18,2),
        @CivilStatus nvarchar(50),
        @Dependent nvarchar(50),
        @NoOfDependent nvarchar(50)
AS
	insert into Tax VALUES (
        @TaxFrom,
		@TaxTo,
        @PercentOver,
        @TaxExemption,
        @CivilStatus,
	@Dependent,
        @NoOfDependent)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trocedureUpdateVacationLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[trocedureUpdateVacationLeave]
	@remain int,
    @leave int
AS
	Update NumberOfLeave Set 
	VacationLeave = @remain
	Where LeaveNo = @leave
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trocedureUpdatePaternity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[trocedureUpdatePaternity]
	@remain int,
    @leave int
AS
	Update NumberOfLeave Set 
	Paternity = @remain
	Where LeaveNo = @leave
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureUpdateNoOfLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureUpdateNoOfLeave]
	 @LeaveNo nvarchar(50),
     @SickLeave int,
     @Maternity int,
     @Paternity int,
     @VacationLeave int,
     @EmployeeID nvarchar(50)
AS
	
	Update NumberOfLeave set 
     SickLeave = @SickLeave,
     Maternity = @Maternity,
     Paternity = @Paternity,
     VacationLeave = @VacationLeave,
     EmployeeID = @EmployeeID where LeaveNo = @LeaveNo
return' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureInsertNoOfLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureInsertNoOfLeave]
     @SickLeave int,
     @Maternity int,
     @Paternity int,
     @VacationLeave int,
     @EmployeeID nvarchar(50)
AS
	insert into NumberOfLeave VALUES (
     @SickLeave,
     @VacationLeave,
	 @Maternity,
     @Paternity,
     @EmployeeID)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureDeleteNoOfLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureDeleteNoOfLeave]
	 @LeaveNo nvarchar(50)
	 as
	 delete from NumberOfLeave  where LeaveNo = @LeaveNo
	 return

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trocedureUpdateMaternity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[trocedureUpdateMaternity]
	@remain int,
    @leave int
AS
	Update NumberOfLeave Set 
	Maternity = @remain
	Where LeaveNo = @leave
	
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trocedureUpdateSickLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[trocedureUpdateSickLeave]
	@remain int,
    @leave int
AS
	Update NumberOfLeave Set 
	SickLeave = @remain
	Where LeaveNo = @leave
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureUpdatePosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureUpdatePosition]
	@PositionID nvarchar(50),
	@PositionName nvarchar(50),
	@Salary int
AS
	Update Positions Set PositionName = @PositionName,
	Salary = @Salary
	Where PositionID = @PositionID
	RETURN

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureJoinPosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureJoinPosition]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select Positions.PositionID,
	Positions.PositionName,
	Positions.Salary
	from Positions
	RETURN

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureDeletePosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureDeletePosition]
	@PositionID nvarchar(50) 
  
AS
	delete from Positions where PositionID  = @PositionID 
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureSearchPosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureSearchPosition]
	@Input VARCHAR(50)
	AS
	 
	Select Positions.PositionID,
	Positions.PositionName,
	Positions.Salary
	from Positions  where  Positions.PositionID like @Input
	or Positions.PositionName like @Input 
	or Positions.Salary like @Input 
	RETURN

' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cprocedureInsertPosition]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[cprocedureInsertPosition]
	
	@PositionName nvarchar(50),
	@Salary int
	AS
	insert into Positions VALUES (
	@PositionName,
	@Salary)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bprocedureInsertPagIbig]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[bprocedureInsertPagIbig]
	@MonthlyCompensationFrom int,
	@MonthlyCompensationTo int,
 	@EmployeeShare int,
	@EmployerShare int,
	@TotalMonthlyContribution int
AS
	insert into PagIbig VALUES (
	@MonthlyCompensationFrom,
	@MonthlyCompensationTo,
 	@EmployeeShare,
	@EmployerShare,
	@TotalMonthlyContribution)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bprocedureUpdatePagIbig]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[bprocedureUpdatePagIbig]
	@PagIbigSalaryBracetNo nvarchar(50),
	@MonthlyCompensationFrom int,
	@MonthlyCompensationTo int,
 	@EmployeeShare int,
	@EmployerShare int,
	@TotalMonthlyContribution int
AS
	Update PagIbig Set 
	MonthlyCompensationFrom = @MonthlyCompensationFrom,
	MonthlyCompensationTo = @MonthlyCompensationTo,
	EmployeeShare = @EmployeeShare,
	EmployerShare = @EmployerShare,
	TotalMonthlyContribution = @TotalMonthlyContribution
	Where PagIbigSalaryBracetNo = @PagIbigSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bprocedureDeletePagIbig]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[bprocedureDeletePagIbig]
	@PagIbigSalaryBracetNo nvarchar(50) 
AS
	delete from PagIbig where PagIbigSalaryBracetNo  = @PagIbigSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bprocedureSearchPagIbig]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[bprocedureSearchPagIbig]
	@Input VARCHAR(50)
	AS
	 
	Select *
	from PagIbig where MonthlyCompensationFrom like @Input 
	or MonthlyCompensationTo like @Input 
	or EmployeeShare like @Input 
 	or EmployerShare like @Input 
	or TotalMonthlyContribution like @Input 
	or PagIbigSalaryBracetNo like @Input
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gprocedureInsertEmployeeLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[gprocedureInsertEmployeeLeave]
	 @EmployeeID nvarchar(50),
     @StartDate nvarchar(50),
     @EndDate nvarchar(50),
     @Reason nvarchar(50),
     @NoOfDays nvarchar(50)
AS
	insert into Leave VALUES (
     @StartDate,
     @EndDate,
	 @NoOfDays,
     @Reason,
	 @EmployeeID)
	RETURN
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gprocedureDeleteEmployeeLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[gprocedureDeleteEmployeeLeave]
	 @LeaveID nvarchar(50)
AS
	delete from Leave where LeaveID  = @LeaveID 
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gprocedureUpdateEmployeeLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[gprocedureUpdateEmployeeLeave]

     @LeaveID nvarchar(50),
     @StartDate nvarchar(50),
     @EndDate nvarchar(50),
     @Reason nvarchar(50),
     @NoOfDays nvarchar(50)
AS
	Update Leave Set 
	StartDate = @StartDate,
    EndDate = @EndDate,
    NoOfDays = @NoOfDays,
	Reason = @Reason
	Where LeaveID =  @LeaveID
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureSelectLeave]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureSelectLeave]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	SELECT 
	   [StartDate]
      ,[EndDate]
      ,[EmployeeID]
  FROM [Leave] where EndDate between Convert(datetime ,@Input) AND Convert(datetime ,@Output) or
  StartDate between Convert(datetime ,@Input) AND Convert(datetime ,@Output)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aprocedureSelectPhilHealth]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aprocedureSelectPhilHealth]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	Select *
	from PhilHealth
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aprocedureInsertPhilHealth]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aprocedureInsertPhilHealth]
	@SalaryRangeFrom  decimal(18,2),
	@SalaryRangeTo  decimal(18,2),
	@SalaryBase decimal(18,2),
	@EmployeeShare decimal(18,2),
	@EmployerShare decimal(18,2),
	@TotalMonthlyPremium decimal(18,2)
AS
	insert into PhilHealth VALUES (
	@SalaryRangeFrom,
	@SalaryRangeTo,
	@SalaryBase,
	@EmployeeShare,
	@EmployerShare,
	@TotalMonthlyPremium)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aprocedureUpdatePhilHealth]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aprocedureUpdatePhilHealth]
	@PhilHealthSalaryBracetNo nvarchar(50),
	@SalaryRangeFrom  decimal(18,2),
	@SalaryRangeTo  decimal(18,2),
	@SalaryBase decimal(18,2),
	@EmployeeShare decimal(18,2),
	@EmployerShare decimal(18,2),
	@TotalMonthlyPremium decimal(18,2)
AS
	Update PhilHealth Set 
	SalaryRangeFrom  = @SalaryRangeFrom ,
	SalaryRangeTo  = @SalaryRangeTo,
	SalaryBase = @SalaryBase,
	EmployeeShare = @EmployeeShare,
	EmployerShare = @EmployerShare,
	TotalMonthlyPremium = @TotalMonthlyPremium
	Where PhilHealthSalaryBracetNo = @PhilHealthSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aprocedureDeletePhilHealth]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aprocedureDeletePhilHealth]
	@PhilHealthSalaryBracetNo nvarchar(50) 
AS
	delete from PhilHealth where PhilHealthSalaryBracetNo  =   @PhilHealthSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aprocedureSearchPhilHealth]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aprocedureSearchPhilHealth]
	@Input VARCHAR(50)
	AS
	 
	Select *
	from PhilHealth where SalaryRangeFrom like @Input 
	or SalaryBase like @Input 
	or EmployeeShare like @Input 
 	or EmployerShare like @Input 
	or PhilHealthSalaryBracetNo like @Input 
	or TotalMonthlyPremium like @Input
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sprocedureInsertSSS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sprocedureInsertSSS]
	@SalaryRangeFrom decimal(18, 2),
	@SalaryRangeTo decimal(18, 2),
	@SalaryBase decimal(18, 2),
	@SocialSecurityEmployeeShare decimal(18, 2),
	@SocialSecurityEmployerShare decimal(18, 2),
	@SocialSecurityTotal decimal(18, 2),
	@EmployerShare decimal(18, 2),
	@TotalContributionEmployeeShare decimal(18, 2),
	@TotalContributionEmployerShare decimal(18, 2),
	@TotalContribution decimal(18, 2),
	@TotalContributionForSEVMOFW decimal(18, 2)
AS
	insert into SSS VALUES (
	@SalaryRangeFrom,
	@SalaryRangeTo,
	@SalaryBase,
	@SocialSecurityEmployeeShare,
	@SocialSecurityEmployerShare,
	@SocialSecurityTotal,
	@EmployerShare,
	@TotalContributionEmployeeShare,
	@TotalContributionEmployerShare,
	@TotalContribution,
	@TotalContributionForSEVMOFW)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sprocedureSelectSSS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sprocedureSelectSSS]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from SSS  ORDER BY SSSSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sprocedureUpdateSSS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sprocedureUpdateSSS]
	@SSSSalaryBracetNo nvarchar(50),
	@SalaryRangeFrom decimal(18, 2),
	@SalaryRangeTo decimal(18, 2),
	@SalaryBase decimal(18, 2),
	@SocialSecurityEmployeeShare decimal(18, 2),
	@SocialSecurityEmployerShare decimal(18, 2),
	@SocialSecurityTotal decimal(18, 2),
	@EmployerShare decimal(18, 2),
	@TotalContributionEmployeeShare decimal(18, 2),
	@TotalContributionEmployerShare decimal(18, 2),
	@TotalContribution decimal(18, 2),
	@TotalContributionForSEVMOFW decimal(18, 2)
AS
	Update SSS Set 
	SalaryRangeFrom = @SalaryRangeFrom,
	SalaryRangeTo = @SalaryRangeTo,
	SalaryBase = @SalaryBase,
	SocialSecurityEmployeeShare = @SocialSecurityEmployeeShare,
	SocialSecurityEmployerShare = @SocialSecurityEmployerShare,
	SocialSecurityTotal = @SocialSecurityTotal,
	EmployerShare = @EmployerShare,
	TotalContributionEmployeeShare = @TotalContributionEmployeeShare,
	TotalContributionEmployerShare = @TotalContributionEmployerShare,
	TotalContribution= @TotalContribution,
	TotalContributionForSEVMOFW = @TotalContributionForSEVMOFW
	Where SSSSalaryBracetNo = @SSSSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sprocedureDeleteSSS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sprocedureDeleteSSS]
	@SSSSalaryBracetNo nvarchar(50) 
AS
	delete from SSS where SSSSalaryBracetNo  = @SSSSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sprocedureSearchSSS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sprocedureSearchSSS]
	@Input VARCHAR(50)
	AS
	 
	select * from SSS where SalaryRangeFrom like @Input 
	or SalaryBase like @Input 
	or SocialSecurityEmployeeShare like @Input 
 	or SocialSecurityEmployerShare like @Input 
	or SocialSecurityTotal like @Input 
	  
	or EmployerShare like @Input 
	or TotalContributionEmployeeShare like @Input 
 	or TotalContributionEmployerShare like @Input 
	or TotalContribution like @Input 
	or TotalContributionForSEVMOFW like @Input
	or SSSSalaryBracetNo like @Input
	order by SSSSalaryBracetNo
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureSelectAttendance]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureSelectAttendance]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	Select TotalNoOfHours,TotalNoOfLate,fldEmpID from tblEmployeeAttendance 
	where fldAttendanceDate between Convert(datetime ,@Input) AND Convert(datetime ,@Output)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qprocedureInsertAttendanceReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[qprocedureInsertAttendanceReport]

	@AttenanceReportNo nvarchar(50),
	@Period nvarchar(50),
	@TotalNoOfWork int,
	@TotalNoOfaAbsent int,
	@TotalNoLate int,
	@EmployeeID nvarchar(50)
AS
	insert into AttendanceReport VALUES (  @AttenanceReportNo, 
	@TotalNoOfWork,
	@TotalNoLate,
	@TotalNoOfaAbsent,@Period,
	@EmployeeID)
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureUpdateHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureUpdateHoliday]
	@HolidayNo nvarchar(50),
    @HolidayName nvarchar(50),
    @HolidayDate nvarchar(50),
    @HolidayReason nvarchar(50),
    @Status nvarchar(50)
AS
	Update Holiday set 
    HolidayName = @HolidayName,
    HolidayDate = @HolidayDate,
    HolidayReason = @HolidayReason,
    Status = @Status where HolidayID = @HolidayNo
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureSelectHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureSelectHoliday]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select * from Holiday
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureSearchHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureSearchHoliday]
	@Input VARCHAR(50)
	AS
	 
	select *
	 from Holiday  where HolidayName like @Input or
      HolidayDate like @Input or
      HolidayReason like @Input or
      Status like @Input
	return' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureInsertHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureInsertHoliday]
	@HolidayNo nvarchar(50),
    @HolidayName nvarchar(50),
    @HolidayDate nvarchar(50),
    @HolidayReason nvarchar(50),
    @Status nvarchar(50)
AS
	insert into Holiday VALUES (@HolidayNo,
    @HolidayName,
    @HolidayDate,
    @HolidayReason,
    @Status)
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureDeleteHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureDeleteHoliday]
	@HolidayNo nvarchar(50)
AS
	delete from Holiday  where HolidayID = @HolidayNo
	RETURN



	' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureCountHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureCountHoliday]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	select Count(HolidayID) from Holiday
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hprocedureLastIDHoliday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[hprocedureLastIDHoliday]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
Select TOP (1) HolidayID FROM Holiday ORDER BY HolidayID DESC
	/* SET NOCOUNT ON */
	RETURN
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureInsertEmployeeBonus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureInsertEmployeeBonus]

@EmployeeID nvarchar(50),
@Type nvarchar(50),
@Date nvarchar(50),
@Amount decimal(18,2)
AS
	insert into BonusFee VALUES (
@Type,
@Date,
@Amount,
@EmployeeID)
return' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureDeleteEmployeeBonus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureDeleteEmployeeBonus]

@BonusID nvarchar(50)
AS
	delete from BonusFee where BonusFeeID   = @BonusID 
return' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jprocedureUpdateEmployeeBonus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[jprocedureUpdateEmployeeBonus]

@EmployeeID nvarchar(50),
@Type nvarchar(50),
@Date nvarchar(50),
@Amount decimal(18,2),
@BonusID nvarchar(50)
AS
	Update BonusFee Set 
	EmployeeID = @EmployeeID,
 Types = @Type,
 Date = @Date,
 Amount = @Amount where BonusFeeID   = @BonusID 
	RETURN' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[frocedureSelectPayrollBonusFee]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[frocedureSelectPayrollBonusFee]
	@Input nvarchar(50),
	@Output nvarchar(50)
AS
	Select Amount,EmployeeID from BonusFee
where Date >= Convert(datetime ,@Input) AND Date <= Convert(datetime ,@Output)
' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Payroll_AttendanceReport]') AND parent_object_id = OBJECT_ID(N'[dbo].[Payroll]'))
ALTER TABLE [dbo].[Payroll]  WITH CHECK ADD  CONSTRAINT [FK_Payroll_AttendanceReport] FOREIGN KEY([AttendanceReportNO])
REFERENCES [dbo].[AttendanceReport] ([AttendanceReportNO])
GO
ALTER TABLE [dbo].[Payroll] CHECK CONSTRAINT [FK_Payroll_AttendanceReport]
