SELECT 
	[Attrition],
	[Business Travel],
    --[CF_age band],
    --[CF_attrition label],
    [Department],
    [Education Field],
    [emp no],
    [Employee Number],
    [Gender],
    [Job Role],
    [Marital Status],
    --[Over Time],
    --[Over18],
    --[Training Times Last Year],
    CONVERT(INT, Age) AS Age,
	CASE
		WHEN CONVERT(INT, Age) BETWEEN 0 AND 25 THEN '18-25'
		WHEN CONVERT(INT, Age) BETWEEN 26 AND 35 THEN '26-35'
		WHEN CONVERT(INT, Age) BETWEEN 36 AND 45 THEN '36-45'
		WHEN CONVERT(INT, Age) BETWEEN 46 AND 55 THEN '46-55'
		ELSE '>55'
	END AS [Group Age],
    --[CF_current Employee],
    [Daily Rate],
    CONVERT(INT, [Distance From Home]) as [Distance From Home],
	CASE
		WHEN CONVERT(INT, [Distance From Home]) BETWEEN 0 AND 10 THEN 'Near-by'
		WHEN CONVERT(INT, [Distance From Home]) BETWEEN 11 AND 20 THEN 'Far'
		ELSE 'Very-far'
	END AS [Distance Status],
    [Education],
    [Employee Count],
    --[Environment Satisfaction],
    [Hourly Rate],
    --[Job Involvement],
    [Job Level],
    [Job Satisfaction],
	CASE
		WHEN [Job Satisfaction] = '1' THEN 'Very Satisfed'
		WHEN [Job Satisfaction] = '2' THEN 'Satisfed'
		WHEN [Job Satisfaction] = '3' THEN 'Dissatisfed'
		ELSE 'Very Dissatisfed'
	END AS [Job Satisfaction Status],
    [Monthly Income],
    [Monthly Rate],
    --[Num Companies Worked],
    --[Percent Salary Hike],
    [Performance Rating],
	CASE
		WHEN [Performance Rating] = 3 THEN 'High'
		ELSE 'Low'
	END AS [Performance Status],
    --[Relationship Satisfaction],
    --Standard Hours],
    --[Stock Option Level],
    CONVERT(INT, [Total Working Years]) AS [Total Working Years],
	CASE
		WHEN CONVERT(INT, [Total Working Years]) BETWEEN 0 AND 10  THEN '0-10'
		WHEN CONVERT(INT, [Total Working Years]) BETWEEN 11 AND 20  THEN '11-20'
		WHEN CONVERT(INT, [Total Working Years]) BETWEEN 21 AND 30  THEN '21-30'
		ELSE '>30'
	END AS [Working Year Group],
    --[Work Life Balance],
    [Years At Company]
    --[Years In Current Role],
    --[Years Since Last Promotion],
    --[Years With Curr Manager]
FROM [Excel_Import].[dbo].[HR Dataset]
