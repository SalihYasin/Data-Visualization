DROP TABLE IF EXISTS [dbo].[DIM_Calendar];
CREATE TABLE [dbo].[DIM_Calendar] (
	[DateKey] [date],
	[Date] [date],
	[Day] [nvarchar](50),
	[Month] [nvarchar](50),
	[MonthShort] [nvarchar](50),
	[MonthNo] [tinyint],
	[Quarter] [tinyint],
	[Year] [smallint] 
  ) ,

DROP TABLE IF EXISTS [dbo].[DIM_Customers] ;
CREATE TABLE [dbo].[DIM_Customers] (
  [CustomerKey] [smallint],
	[First_Name] [nvarchar](50),
	[Last_Name] [nvarchar](50),
	[Full_Name] [nvarchar](50),
	[Gender] [nvarchar](50),
	[DateFirstPurchase] [date],
	[Customer_City] [nvarchar](50)
) ,

DROP TABLE IF EXISTS [dbo].[DIM_Products] ;
CREATE TABLE [dbo].[DIM_Products] (
  [ProductKey] [smallint],
	[ProductItemCode] [nvarchar](50),
	[Product_Name] [nvarchar](50),
	[Sub_Category] [nvarchar](50),
	[Product_Category] [nvarchar](50),
	[Product_Color] [nvarchar](50),
	[Product_Size] [nvarchar](50),
	[Product_Line] [nvarchar](50),
	[Product_Model_Name] [nvarchar](50),
	[Product_Description] [nvarchar](250),
	[Product_Status] [nvarchar](50)
) ,
  
DROP TABLE IF EXISTS [dbo].[FACT_InternetSales] ;
CREATE TABLE [dbo].[FACT_InternetSales] (
  [ProductKey] [smallint],
	[OrderDateKey] [date],
	[DueDateKey] [date],
	[ShipDateKey] [date],
	[CustomerKey] [smallint],
	[SalesOrderNumber] [nvarchar](50),
	[SalesAmount] [float]
  ) ;

from 'C:\Users\PLANLAMA\Desktop\DIM_Calendar.csv'
     'C:\Users\PLANLAMA\Desktop\DIM_Customers'
     'C:\Users\PLANLAMA\Desktop\DIM_Products'
     'C:\Users\PLANLAMA\Desktop\FACT_InternetSales'
delimiter ',' csv header;
