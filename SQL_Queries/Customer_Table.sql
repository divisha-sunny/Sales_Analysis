--Cleaned DimCustomer table
SELECT 
  c.[CustomerKey] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , c.[FirstName] as [First Name] 
  --,[MiddleName]
  , c.[LastName] as [Last Name] 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , case c.Gender when 'M' Then 'Male' when 'F' Then 'Female' END as [Gender] 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , c.[DateFirstPurchase] 
  --,[CommuteDistance]
  , g.City as [Customer City] -- Customer city is obtained from Geography table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2022].[dbo].[DimGeography] as g ON g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey ASC -- Order list by customer Id
