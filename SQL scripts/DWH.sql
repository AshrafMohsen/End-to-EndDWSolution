use [master]
go 
/**** Object: Database [DW_Multinational_Manufacturing]  Script Date: 2023-08-09 13-41-20 ****/
Create Database [DW_Multinational_Manufacturing]

use [DW_Multinational_Manufacturing]
GO
/**** Object: Table [DimCurrency]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[DimCurrency](
	[CurrencyKey] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyAlternateKey] [nchar](3) NOT NULL,
	[CurrencyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DimCurrency_CurrencyKey] PRIMARY KEY CLUSTERED
 ( [CurrencyKey] ASC )
)
GO
/**** Object: Table [DimCustomer]  Script Date: 2023-08-09 13-41-20 ****/
Create table [dbo].[DimCustomer](
	[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
	[GeographyKey] [int] NULL,
	[CustomerAlternateKey] [int] NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[NameStyle] [bit] NULL,
	[BirthDate] [date] NULL,
	[MaritalStatus] [nchar](1) NULL,
	[Suffix] [nvarchar](10) NULL,
	[Gender] [nvarchar](1) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[YearlyIncome] [money] NULL,
	[TotalChildren] [tinyint] NULL,
	[NumberChildrenAtHome] [tinyint] NULL,
	[NumberCarsOwned] [tinyint] NULL,
	[AddressLine1] [nvarchar](120) NULL,
	[AddressLine2] [nvarchar](120) NULL,
	[Phone] [nvarchar](20) NULL,
	[DateFirstPurchase] [date] NULL,
	[CommuteDistance] [nvarchar](15) NULL,
 CONSTRAINT [PK_DimCustomer_CustomerKey] PRIMARY KEY CLUSTERED 
( [CustomerKey] ASC )
)
Go 
/**** Object: Table [DimDate]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[FullDateAlternateKey] [date] NOT NULL,
	[DayNumberOfWeek] [tinyint] NOT NULL,
	[EnglishDayNameOfWeek] [nvarchar](10) NOT NULL,
	[DayNumberOfMonth] [tinyint] NOT NULL,
	[DayNumberOfYear] [smallint] NOT NULL,
	[WeekNumberOfYear] [tinyint] NOT NULL,
	[EnglishMonthName] [nvarchar](10) NOT NULL,
	[MonthNumberOfYear] [tinyint] NOT NULL,
	[CalendarQuarter] [tinyint] NOT NULL,
	[CalendarYear] [smallint] NOT NULL,
	[CalendarSemester] [tinyint] NOT NULL,
	[FiscalQuarter] [tinyint] NOT NULL,
	[FiscalYear] [smallint] NOT NULL,
	[FiscalSemester] [tinyint] NOT NULL,
 CONSTRAINT [PK_DimDate_DateKey] PRIMARY KEY CLUSTERED 
([DateKey] ASC)
)
GO
/**** Object: Table [DimEmployee]  Script Date: 2023-08-09 13-41-20 ****/
GO
CREATE TABLE [dbo].[DimEmployee](
	[EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeNationalIDAlternateKey] [nvarchar](15) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[HireDate] [date] NULL,
	[BirthDate] [date] NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[MaritalStatus] [nchar](1) NULL,
	[Department] [nvarchar](100) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_DimEmployee_EmployeeKey] PRIMARY KEY CLUSTERED 
(
	[EmployeeKey] ASC
)
)
GO
/**** Object: Table [DimProduct]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[DimProduct](
	[ProductKey] [int] IDENTITY(1,1) NOT NULL,
	[ProductAlternateKey] [nvarchar](25) NULL,
	[EnglishProductName] [nvarchar](50) NOT NULL,
	[StandardCost] [money] NULL,
	[Color] [nvarchar](15) NOT NULL,
	[Size] [nvarchar](50) NULL,
	[SizeRange] [nvarchar](50) NULL,
	[EnglishDescription] [nvarchar](400) NULL,
	[FrenchDescription] [nvarchar](400) NULL,
	[ArabicDescription] [nvarchar](400) NULL,
	[ProductSubcategoryCode] [nvarchar](50) NULL,
	[ProductcategoryCode] [nvarchar](50) NULL,
	[Status] [nvarchar](7) NULL,
 CONSTRAINT [PK_DimProduct_ProductKey] PRIMARY KEY CLUSTERED 
([ProductKey] ASC)
)
GO
/**** Object: Table [DimReseller]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[DimReseller](
	[ResellerKey] [int] IDENTITY(1,1) NOT NULL,
	[ResellerAlternateKey] [nvarchar](15) NULL,
	[ResellerName] [nvarchar](50) NOT NULL,
	[NumberEmployees] [int] NULL,
	[YearOpened] [int] NULL,
 CONSTRAINT [PK_DimReseller_ResellerKey] PRIMARY KEY CLUSTERED 
([ResellerKey] ASC)
)
GO

ALTER TABLE [dbo].[DimReseller]
ALTER COLUMN [ResellerName] NVARCHAR(50) NULL;

/**** Object: Table [DimSalesTerritory]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[DimSalesTerritory](
	[SalesTerritoryKey] [int] IDENTITY(1,1) NOT NULL,
	[SalesTerritoryAlternateKey] [int] NULL,
	[SalesTerritoryRegion] [nvarchar](50) NOT NULL,
	[SalesTerritoryCountry] [nvarchar](50) NOT NULL,
	[SalesTerritoryGroup] [nvarchar](50) NULL,
	[SalesTerritoryImage] [varbinary](max) NULL,
 CONSTRAINT [PK_DimSalesTerritory_SalesTerritoryKey] PRIMARY KEY CLUSTERED 
([SalesTerritoryKey] ASC)
)
GO
/**** Object: Table [FactInternetSales]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[FactInternetSales](
	[ProductKey] [int] NOT NULL,
	[OrderDateKey] [int] NOT NULL,
	[DueDateKey] [int] NOT NULL,
	[ShipDateKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[SalesTerritoryKey] [int] NOT NULL,
	[SalesOrderNumber] [nvarchar](20) NOT NULL,
	[SalesOrderLineNumber] [tinyint] NOT NULL,
	[OrderQuantity] [smallint] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[DiscountAmount] [float] NOT NULL,
	[SalesAmount] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[OrderDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_FactInternetSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderLineNumber] ASC
)
)
Go
/**** Object: Table [FactResellerSales]  Script Date: 2023-08-09 13-41-20 ****/
CREATE TABLE [dbo].[FactResellerSales](
	[ProductKey] [int] NOT NULL,
	[OrderDateKey] [int] NOT NULL,
	[DueDateKey] [int] NOT NULL,
	[ShipDateKey] [int] NOT NULL,
	[ResellerKey] [int] NOT NULL,
	[EmployeeKey] [int] NOT NULL,
	[CurrencyKey] [int] NOT NULL,
	[SalesTerritoryKey] [int] NOT NULL,
	[SalesOrderNumber] [nvarchar](20) NOT NULL,
	[SalesOrderLineNumber] [tinyint] NOT NULL,
	[OrderQuantity] [smallint] NULL,
	[UnitPrice] [money] NOT NULL,
	[DiscountAmount] [float] NOT NULL,
	[SalesAmount] [money] NULL,
	[OrderDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_FactResellerSales_SalesOrderNumber_SalesOrderLineNumber] PRIMARY KEY CLUSTERED 
(
	[SalesOrderNumber] ASC,
	[SalesOrderLineNumber] ASC
)
)
GO
Alter TABLE [dbo].[FactInternetSales] WITH CHECK ADD CONSTRAINT [FK_FactInternetSales_DimCurrency] FOREIGN KEY ([CurrencyKey])
REFERENCES [dbo].[DimCurrency] ([CurrencyKey])
Go
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimCurrency]
GO
ALTER TABLE [dbo].[FactInternetSales] WITH CHECK ADD CONSTRAINT [FK_FactInternetSales_DimCustomer] FOREIGN KEY ([CurrencyKey])
REFERENCES [dbo].[DimCustomer] ([CustomerKey])
GO
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimCustomer]
GO

ALTER TABLE [dbo].[FactInternetSales]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSales_DimDate] FOREIGN KEY([OrderDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimDate]
GO
ALTER TABLE [dbo].[FactInternetSales]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSales_DimDate1] FOREIGN KEY([DueDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimDate1]
GO
ALTER TABLE [dbo].[FactInternetSales]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSales_DimDate2] FOREIGN KEY([ShipDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimDate2]
GO
ALTER TABLE [dbo].[FactInternetSales]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSales_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
GO
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimProduct]
GO
ALTER TABLE [dbo].[FactInternetSales]  WITH CHECK ADD  CONSTRAINT [FK_FactInternetSales_DimSalesTerritory] FOREIGN KEY([SalesTerritoryKey])
REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
GO
ALTER TABLE [dbo].[FactInternetSales] CHECK CONSTRAINT [FK_FactInternetSales_DimSalesTerritory]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_Employee] FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[DimEmployee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_Employee]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate] FOREIGN KEY([OrderDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate1] FOREIGN KEY([DueDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate1]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimDate2] FOREIGN KEY([ShipDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimDate2]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimProduct] FOREIGN KEY([ProductKey])
REFERENCES [dbo].[DimProduct] ([ProductKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimProduct]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_FactResellerSales_DimSalesTerritory] FOREIGN KEY([SalesTerritoryKey])
REFERENCES [dbo].[DimSalesTerritory] ([SalesTerritoryKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK CONSTRAINT [FK_FactResellerSales_DimSalesTerritory]
GO
ALTER TABLE [dbo].[FactResellerSales]  WITH CHECK ADD  CONSTRAINT [FK_reseller] FOREIGN KEY([ResellerKey])
REFERENCES [dbo].[DimReseller] ([ResellerKey])
GO
ALTER TABLE [dbo].[FactResellerSales] CHECK 
GO

/**** Object: StoredProcedure [dbo].[Refresh_DimCurrency]  Script Date: 2023-08-11 13-41-20 ****/

Create Procedure [dbo].[Refresh_DimCurrency] 

as
begin


set nocount on 
Insert into [dbo].[DimCurrency]

(
[CurrencyAlternateKey],
[CurrencyName]
)


SELECT [CurrencyCode],
	   [Name]    
FROM   [Staging_DB].[erp].[Currency] stg 
	left join [dbo].[DimCurrency] Dim  
	on stg.CurrencyCode = Dim.CurrencyAlternateKey
    where Dim.CurrencyAlternateKey is null

  Update Dim

  Set [CurrencyName] = Name
  from [dbo].[DimCurrency] Dim  
  inner join [Staging_DB].[erp].[Currency] stg  
  on stg.CurrencyCode = Dim.CurrencyAlternateKey

end 

GO
/**** Object: StoredProcedure [dbo].[Refresh_DimCustomer]  Script Date: 2023-08-11 13-41-20 ****/

Create Procedure [dbo].[Refresh_DimCustomer]
as
begin

Merge into [dbo].[DimCustomer] cus
using [Staging_DB].[dbo].[Stg_vw_Erp_Customer] stg
on cus.[CustomerAlternateKey] = stg.CustomerID

when Matched and  ( cus.EmailAddress <> stg.[EmailPromotion] or  cus.[AddressLine1] <> stg.[AddressLine1] or cus.AddressLine2 <> stg.City) 
then

update set cus.EmailAddress =stg.[EmailPromotion] ,
	       cus.[AddressLine1] = stg.[AddressLine1] ,
           cus.AddressLine2 =  stg.City


when Not Matched by Target then 

insert   ( 
       [CustomerAlternateKey]      ,[Title]      ,[FirstName]           ,[LastName]
      ,[NameStyle]
     , EmailAddress
	 ,[AddressLine1]
	 ,AddressLine2
	 )
 Values(stg.CustomerID,
        stg.[Title],		stg.[FirstName],		stg.[LastName],
		stg.[NameStyle],
		stg.[EmailPromotion],
		stg.[AddressLine1],
		stg.City)
          ; 
end 

GO
/**** Object: StoredProcedure [dbo].[Refresh_DimDate]  Script Date: 2023-08-11 13-41-20 ****/

Create Procedure [dbo].[Refresh_DimDate]
as
Begin

declare @startdate date = '2005-01-01',
    @enddate date = '2014-12-31'

IF @startdate IS NULL
    BEGIN
        Select Top 1 @startdate = FulldateAlternateKey
        From DimDate 
        Order By DateKey ASC 
    END

Declare @datelist table (FullDate date)

while @startdate <= @enddate

Begin 
    Insert into @datelist (FullDate)
    Select @startdate

    Set @startdate = dateadd(dd,1,@startdate)

end 

 Insert into dbo.DimDate 
    (
	    DateKey, 
        FullDateAlternateKey, 
        DayNumberOfWeek, 
        EnglishDayNameOfWeek, 

        DayNumberOfMonth, 
        DayNumberOfYear, 
        WeekNumberOfYear, 
        EnglishMonthName, 
     
        MonthNumberOfYear, 
        CalendarQuarter, 
        CalendarYear, 
        CalendarSemester, 
        FiscalQuarter, 
        FiscalYear, 
        FiscalSemester)


select convert(int,convert(varchar,dl.FullDate,112)) as DateKey,
    dl.FullDate,
    datepart(dw,dl.FullDate) as DayNumberOfWeek,
    datename(weekday,dl.FullDate) as EnglishDayNameOfWeek,
    
    
    datepart(d,dl.FullDate) as DayNumberOfMonth,
    datepart(dy,dl.FullDate) as DayNumberOfYear,
    datepart(wk, dl.FUllDate) as WeekNumberOfYear,
    datename(MONTH,dl.FullDate) as EnglishMonthName,
   
   
    Month(dl.FullDate) as MonthNumberOfYear,
    datepart(qq, dl.FullDate) as CalendarQuarter,
    year(dl.FullDate) as CalendarYear,
    case datepart(qq, dl.FullDate)
        when 1 then 1
        when 2 then 1
        when 3 then 2
        when 4 then 2
    end as CalendarSemester,
    case datepart(qq, dl.FullDate)
        when 1 then 3
        when 2 then 4
        when 3 then 1
        when 4 then 2
    end as FiscalQuarter,
    case datepart(qq, dl.FullDate)
        when 1 then year(dl.FullDate)
        when 2 then year(dl.FullDate)
        when 3 then year(dl.FullDate) + 1
        when 4 then year(dl.FullDate) + 1
    end as FiscalYear,
    case datepart(qq, dl.FullDate)
        when 1 then 2
        when 2 then 2
        when 3 then 1
        when 4 then 1
    end as FiscalSemester

from @datelist dl left join 
    DimDate dd 
        on dl.FullDate = dd.FullDateAlternateKey
Where dd.FullDateAlternateKey is null 


End
GO
/**** Object: StoredProcedure [dbo].[Refresh_DimProduct]  Script Date: 2023-08-11 13-41-20 ****/

CREATE Procedure [dbo].[Refresh_DimProduct]

as
begin


set nocount on 
Insert into [dbo].[DimProduct]

(

       [ProductAlternateKey]
      ,[EnglishProductName]
      ,[StandardCost]
      ,[Color]
      ,[Size]
      ,[SizeRange]
      ,[EnglishDescription]
      ,[FrenchDescription]
      ,[ArabicDescription]
      ,[ProductSubcategoryCode]
      ,[ProductcategoryCode]
      ,[Status]
)


SELECT stg.[ProductNumber]
      ,stg.[Name]
      ,stg.[StandardCost]
      ,Isnull(stg.[Color],'NA')
      ,stg.[Size]
      ,stg.[SizeRange]
      ,stg.[EnglishDescription]
	  ,null 
      ,null
	  ,stg.[ProductSubcategoryCode]
      ,stg.[ProductCategory]   
	  ,null [Status]
  FROM [Staging_DB].[dbo].[Stg_vw_Erp_Product] stg 
    left join [dbo].[DimProduct] Dim  
  on Dim.[ProductAlternateKey] = stg.[ProductNumber]
    where Dim.[ProductAlternateKey] is null


  Update Dim
  set Dim.[EnglishDescription]= stg.[EnglishDescription]

   
  from  [dbo].[DimProduct] Dim   
  inner join [Staging_DB].[dbo].[Stg_vw_Erp_Product] stg 
  on Dim.[ProductAlternateKey] = stg.[ProductNumber]

end 

GO
/****** Object:  StoredProcedure [dbo].[Refresh_DimSalesTerritory]    Script Date: 2023-08-11 13-41-20 ****/

CREATE Procedure [dbo].[Refresh_DimSalesTerritory]
as
begin

Insert into [dbo].[DimSalesTerritory]
(
			[SalesTerritoryAlternateKey],
			[SalesTerritoryRegion],
			[SalesTerritoryCountry],
			[SalesTerritoryGroup]

)

SELECT  
	[TerritoryID],
	[Name],
	[CountryRegionCode],
	[Group]

  FROM [Staging_DB].[erp].[SalesTerritory] stg 
    left join [dbo].[DimSalesTerritory] Dim  
  on Dim.[SalesTerritoryAlternateKey] = stg.[TerritoryID]
    where Dim.[SalesTerritoryAlternateKey] is null


  Update Dim

  Set [SalesTerritoryRegion]=[Name],
	  [SalesTerritoryCountry]=[CountryRegionCode],
	  [SalesTerritoryGroup]=[Group]

  from [dbo].[DimSalesTerritory] Dim 
  inner join [Staging_DB].[erp].[SalesTerritory] stg  
  on Dim.[SalesTerritoryAlternateKey] = stg.[TerritoryID]


end 


GO
/****** Object:  StoredProcedure [dbo].[Refresh_Reseller]    Script Date: 2023-08-11 13-41-20  ******/

CREATE Procedure [dbo].[Refresh_Reseller]

as
begin

Insert into  [dbo].[DimReseller]

(
			[ResellerAlternateKey],
			[ResellerName],
			[NumberEmployees],
			[YearOpened]
)
SELECT  Stg.[StoreID],
		Stg.[ResellerName],
     
	   Stg.[NumberEmployees], 
	   Stg.[YearOpened] 
  FROM [Staging_DB].[dbo].[Stg_vw_Erp_Reseller] stg 
    left join  [dbo].[DimReseller] Dim  
  on stg.[StoreID] = Dim.[ResellerAlternateKey]
    where Dim.[ResellerAlternateKey] is null


  Update Dim

  Set  
   Dim.[ResellerName]=stg.[ResellerName]
, Dim.[NumberEmployees]=stg.[NumberEmployees]
  from [dbo].[DimReseller] Dim  
  inner join  [Staging_DB].[dbo].[Stg_vw_Erp_Reseller]  stg  
  on  stg.[StoreID] = Dim.[ResellerAlternateKey]

end 

GO
USE [master]
GO
ALTER DATABASE [DW_Multinational_Manufacturing] SET  READ_WRITE 
GO

