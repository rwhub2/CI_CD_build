-- 1. CREATE TABLE SCHEMA

DROP TABLE IF EXISTS customer;

CREATE TABLE  IF NOT EXISTS customer (
	CustomerKey	INT
	,GeographyKey	INT
	,CustomerAlternateKey VARCHAR(155)
	,Title	VARCHAR(10)
	,FirstName	VARCHAR(100)
	,MiddleName	VARCHAR(10)
	,LastName	VARCHAR(100)
	,NameStyle	INT
	,BirthDate	VARCHAR(100)
	,MaritalStatus	VARCHAR(10)
	,Suffix	VARCHAR(10)
	,Gender	VARCHAR(10)
	,EmailAddress VARCHAR(100)	
	,YearlyIncome INT

);


DROP TABLE IF EXISTS factInternetSales;

CREATE TABLE IF NOT EXISTS factInternetSales (
	ProductKey	INT
	,OrderDateKey DATE
	,DueDateKey	DATE
	,ShipDateKey	DATE
	,CustomerKey	INT
	,PromotionKey	INT
	,CurrencyKey	INT
	,SalesTerritoryKey	INT
	,SalesOrderNumber	VARCHAR(20)
	,SalesOrderLineNumber	INT
	,RevisionNumber	INT
	,OrderQuantity	INT 
	,UnitPrice NUMERIC(10, 2)
);


DROP TABLE IF EXISTS dim_date;

CREATE TABLE IF NOT EXISTS dim_date (
	DateKey INT,
	FullDateAlternateKey INT,
	DayNumberOfWeek INT,
	EnglishDayNameOfWeek INT,
	SpanishDayNameOfWeek INT,
	FrenchDayNameOfWeek INT,
	DayNumberOfMonth INT,
	DayNumberOfYear INT,
	WeekNumberOfYear INT,
	EnglishMonthName INT,
	SpanishMonthName INT,
	FrenchMonthName INT,
	MonthNumberOfYear INT,
	CalendarQuarter INT,
	CalendarYear INT,
	CalendarSemester INT,
	FiscalQuarter INT,
	FiscalYear INT,
	FiscalSemester INT
);



DROP TABLE IF EXISTS products;

CREATE TABLE IF NOT EXISTS products (
	ProductKey INT,
	ProductAlternateKey INT,
	ProductSubcategoryKey INT,
	WeightUnitMeasureCode INT,
	SizeUnitMeasureCode INT,
	EnglishProductName INT,
	StandardCost INT,
	FinishedGoodsFlag INT,
	Color INT,
	SafetyStockLevel INT,
	ReorderPoint INT,
	ListPrice INT,
	Size INT,
	SizeRange INT,
	Weight INT,
	DaysToManufacture INT,
	ProductLine INT,
	DealerPrice INT,
	Class INT,
	Style INT,
	ModelName INT
);







