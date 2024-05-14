-- Exercício 01
-- Resposta: 
SELECT TOP (100)* FROM FactSales
ORDER BY SalesQuantity DESC
----------------------------------------------------------------------------------------------------------

-- Exercício 02
-- Resposta:
SELECT TOP(10) * FROM DimProduct
ORDER BY UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC
----------------------------------------------------------------------------------------------------------

-- Exercício 03
-- Resposta letra A, B e C:
SELECT 
	ProductName AS 'Nome do Produto', 
	Weight AS 'Peso' 
FROM 
	DimProduct
WHERE Weight >= 100
ORDER BY Peso DESC
----------------------------------------------------------------------------------------------------------

-- Exercício 04
-- Resposta letra A, B e C:
SELECT 
	StoreName AS 'Nome da Loja', 
	OpenDate AS 'Data de Abertura', 
	EmployeeCount AS 'Qtd. Funcionários' 
FROM 
	DimStore
WHERE StoreType = 'Store' AND Status = 'On'
----------------------------------------------------------------------------------------------------------

-- Exercício 05
-- Resposta:
SELECT	
	*
FROM
	DimProduct
WHERE BrandName = 'Litware' AND ProductName LIKE '%Home Theater%' AND AvailableForSaleDate = '20090315'
----------------------------------------------------------------------------------------------------------

-- Exercício 06
-- Resposta letra A e B:
SELECT
	*
FROM
	DimStore
--WHERE Status = 'Off'
WHERE CloseDate IS NOT NULL
----------------------------------------------------------------------------------------------------------

-- Exercício 07
-- Resposta:

--CATEGORIA 1: De 1 a 20 funcionários -> 1 máquina de café: 75 Lojas
--CATEGORIA 2: De 21 a 50 funcionários -> 2 máquinas de café: 187 Lojas
--CATEGORIA 3: Acima de 51 funcionários -> 3 máquinas de café: 43 Lojas
SELECT
	*
FROM
	DimStore
WHERE EmployeeCount > 50
----------------------------------------------------------------------------------------------------------

-- Exercício 08
-- Resposta:
SELECT
	ProductKey AS 'ID',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Preço do Produto'
FROM
	DimProduct
WHERE ProductDescription LIKE '%LCD%'
----------------------------------------------------------------------------------------------------------

-- Exercício 09
-- Resposta:
SELECT
	*
FROM
	DimProduct
WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Frabikam')
----------------------------------------------------------------------------------------------------------

-- Exercício 10
-- Resposta:
SELECT
	ProductKey AS 'ID do Produto',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Preço do Produto'
FROM
	DimProduct
WHERE BrandName = 'Contoso' AND ColorName = 'Silver' AND Weight BETWEEN 10 AND 30
ORDER BY UnitPrice DESC




































































