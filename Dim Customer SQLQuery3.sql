SELECT  
c.CustomerKey As CustomerKey
    --  ,[GeographyKey]
    --  ,[CustomerAlternateKey]
   --   ,[Title]


      ,c.FirstName,
     -- ,[MiddleName]
      c.LastName,

     -- ,[NameStyle]
     -- ,[BirthDate]
   --   ,[MaritalStatus]
   --   ,[Suffix]
      c.Gender,

    --  ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
    --  ,[FrenchEducation]
    --  ,[EnglishOccupation]
   --   ,[SpanishOccupation]
     -- ,[FrenchOccupation]
    --  ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
     -- ,[AddressLine1]
    --  ,[AddressLine2]
     -- ,[Phone]
      c.DateFirstPurchase,
      --,[CommuteDistance]

	  g.City As [Customer City]

FROM [AdventureWorksDW2019].[dbo].[DimCustomer] As c

  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] AS g 
    ON g.GeographyKey = c.GeographyKey

  order by 
  c.customerkey ASC