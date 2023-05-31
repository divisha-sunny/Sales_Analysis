-- Cleaned dimdate Table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date 
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as Week, 
  [EnglishMonthName] as Month, 
  left([EnglishMonthName], 3) as MonthStart 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] as Month_Number, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
where 
  [CalendarYear] >= Year(GetDate())-2 ;-- Gets only last two years of data