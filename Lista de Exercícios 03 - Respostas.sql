-- Exerc�cio 01
-- Resposta:
SELECT TOP (100) * FROM FactSales

SELECT
	SUM(SalesQuantity) AS 'Qtd. Vendida',
	SUM(ReturnQuantity) AS 'Qtd. Devolvida'
FROM
	FactSales
WHERE channelKey = 1
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 02
-- Resposta:

SELECT * FROM DimCustomer

SELECT
	AVG(YearlyIncome) AS 'M�dia salarial'
From
	DimCustomer
WHERE Occupation = 'Professional'
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 03
-- R letra A:
SELECT * FROM DimStore

SELECT	
	MAX(EmployeeCount) AS 'Maior Qtd. Funcion�rios'
FROM
	DimStore


-- R letra B:
SELECT TOP (1) 
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd. Funcion�rios'
FROM 
	DimStore
ORDER BY EmployeeCount DESC

-- R letra C:
SELECT 
	MIN(Employeecount) AS 'Menor Qtd. Funcion�rios'
FROM
	DimStore

-- R letra D:
SELECT TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd. Funcion�rios'
FROM
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 04
-- R letra A:
SELECT * FROM DimEmployee

SELECT
	COUNT(FirstName)
FROM	
	DimEmployee
WHERE Gender = 'M'

-- R letra B:
SELECT TOP(1)
	FirstName,
	HireDate,
	EmailAddress
FROM
	DimEmployee
WHERE Gender = 'M'
ORDER BY HireDate ASC
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 05
-- R letra A:
SELECT * FROM DimProduct

SELECT
	COUNT(DISTINCT BrandName) AS 'Qtd. Distinta de Marca',
	COUNT(DISTINCT ClassName) AS 'Qtd. Distinta de Classe',
	COUNT(DISTINCT ColorName) AS 'Qtd. Distinta de Cores'
FROM
	DimProduct















