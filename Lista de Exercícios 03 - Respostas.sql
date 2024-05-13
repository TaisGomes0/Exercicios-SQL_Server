-- Exercício 01
-- Resposta:
SELECT TOP (100) * FROM FactSales

SELECT
	SUM(SalesQuantity) AS 'Qtd. Vendida',
	SUM(ReturnQuantity) AS 'Qtd. Devolvida'
FROM
	FactSales
WHERE channelKey = 1
----------------------------------------------------------------------------------------------------------

-- Exercício 02
-- Resposta:

SELECT * FROM DimCustomer

SELECT
	AVG(YearlyIncome) AS 'Média salarial'
From
	DimCustomer
WHERE Occupation = 'Professional'
----------------------------------------------------------------------------------------------------------

-- Exercício 03
-- R letra A:
SELECT * FROM DimStore

SELECT	
	MAX(EmployeeCount) AS 'Maior Qtd. Funcionários'
FROM
	DimStore


-- R letra B:
SELECT TOP (1) 
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd. Funcionários'
FROM 
	DimStore
ORDER BY EmployeeCount DESC

-- R letra C:
SELECT 
	MIN(Employeecount) AS 'Menor Qtd. Funcionários'
FROM
	DimStore

-- R letra D:
SELECT TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Qtd. Funcionários'
FROM
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC
----------------------------------------------------------------------------------------------------------

-- Exercício 04
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

-- Exercício 05
-- R letra A:
SELECT * FROM DimProduct

SELECT
	COUNT(DISTINCT BrandName) AS 'Qtd. Distinta de Marca',
	COUNT(DISTINCT ClassName) AS 'Qtd. Distinta de Classe',
	COUNT(DISTINCT ColorName) AS 'Qtd. Distinta de Cores'
FROM
	DimProduct















