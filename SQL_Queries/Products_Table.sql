SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as ProductItemCode 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , p.[EnglishProductName] as [Product Name]
  , ps.[EnglishProductSubcategoryName] as [Sub Category] -- Obtained from Product Sub Category Table
  , pc.[EnglishProductCategoryName] as [Product Category] -- Obtained from Product Category Table 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  , p.[Color] as [Product Color] 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  , p.[Size] as [Product Size] 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , p.[ProductLine] as [Product Line] 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  , p.[ModelName] as [Product Model Name] 
  --,[LargePhoto]
  , p.[EnglishDescription] as [Product Description] 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , ISNULL(p.[Status], 'Outdated') as [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  Left Join [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  Left Join [AdventureWorksDW2022].[dbo].[DimProductCategory] as pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc;