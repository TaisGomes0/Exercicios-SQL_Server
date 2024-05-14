-- Exercício 01
-- Resposta letra A:

SELECT TOP (100) * FROM FactSales

SELECT
	ChannelKey AS 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
GROUP BY channelKey
----------------------------------------------------------------------------------------------------------

-- Resposta letra B:
SELECT
	StoreKey AS 'ID da Loja',
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM
	FactSales
GROUP BY StoreKey
----------------------------------------------------------------------------------------------------------

-- Resposta letra C:
SELECT
	ChannelKey AS 'Canal de Vendas',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
WHERE DateKey BETWEEN '20070101' AND '20071231'
GROUP BY ChannelKey
----------------------------------------------------------------------------------------------------------

-- Exercício 02
-- Resposta letra A:
SELECT
	ProductKey AS 'ID do Produto',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
GROUP BY ProductKey
HAVING SUM(SalesAmount) >= 5000000
ORDER BY SUM(SalesAmount) DESC


-- Resposta letra B:
SELECT TOP (10)
	ProductKey AS 'ID do Produto',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC
----------------------------------------------------------------------------------------------------------

-- Exercício 03
-- Resposta letra A:
SELECT TOP(100) * FROM FactOnlineSales

SELECT
	CustomerKey AS 'ID do Cliente',
	SUM(SalesQuantity) AS 'Total Comprado'
FROM
	FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC

-- Resposta letra B:
SELECT TOP(3)
	ProductKey AS 'ID do Produto',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC
----------------------------------------------------------------------------------------------------------

-- Exercício 04
-- Resposta letra A:
SELECT * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Qtd. Produtos'
FROM
	DimProduct
GROUP BY BrandName

-- Resposta letra B:
SELECT
	ClassName AS 'Classe do Produto',
	AVG(UnitPrice) AS 'Média de Preço'
FROM
	DimProduct
GROUP BY ClassName

-- Resposta letra C:
SELECT
	ColorName AS 'Cor',
	SUM(weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY ColorName
----------------------------------------------------------------------------------------------------------

-- Exercício 05
-- Resposta:
SELECT
	StockTypeName AS 'Tipo',
	SUM(weight) AS 'Peso Total'
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(weight) DESC
----------------------------------------------------------------------------------------------------------

-- Exercício 06
-- Resposta:
SELECT
	BrandName AS 'Marca',
	COUNT(DISTINCT ColorName) AS 'Qtd Cores'
FROM
	DimProduct
GROUP BY BrandName
----------------------------------------------------------------------------------------------------------

-- Exercício 07
-- Resposta:
SELECT
	Gender AS 'Sexo',
	COUNT(Gender) AS 'Qtd Total Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender
----------------------------------------------------------------------------------------------------------

-- Exercício 08
-- Resposta:
SELECT
	Education AS 'Nível Escolar',
	COUNT(Education) AS 'Qtd Total',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education
ORDER BY COUNT(Education) DESC
----------------------------------------------------------------------------------------------------------

-- Exercício 09
-- Resposta:
SELECT
	DepartmentName AS 'Departamento',
	COUNT(DepartmentName) AS 'Qtd Total por Dpto'
FROM
	DimEmployee
WHERE Status = 'Current'
GROUP BY DepartmentName
----------------------------------------------------------------------------------------------------------

-- Exercício 10
-- Resposta:
SELECT
	Title AS 'Cargo',
	SUM(VacationHours) AS 'Horas Totais'
FROM
	DimEmployee
WHERE Gender = 'F' AND DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '1999-01-01' AND '2000-12-31'
GROUP BY Title






































































































































