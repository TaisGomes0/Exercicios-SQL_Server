-- Exerc�cio 01
-- Resposta: 
SELECT TOP (100)* FROM FactSales
ORDER BY SalesQuantity DESC
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 02
-- Resposta:
SELECT TOP(10) * FROM DimProduct
ORDER BY UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 03
-- Resposta letra A, B e C:
SELECT 
	ProductName AS 'Nome do Produto', 
	Weight AS 'Peso' 
FROM 
	DimProduct
WHERE Weight >= 100
ORDER BY Peso DESC
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 04
-- Resposta letra A, B e C:
SELECT 
	StoreName AS 'Nome da Loja', 
	OpenDate AS 'Data de Abertura', 
	EmployeeCount AS 'Qtd. Funcion�rios' 
FROM 
	DimStore
WHERE StoreType = 'Store' AND Status = 'On'
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 05
-- Resposta:
SELECT	
	*
FROM
	DimProduct
WHERE BrandName = 'Litware' AND ProductName LIKE '%Home Theater%' AND AvailableForSaleDate = '20090315'
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 06
-- Resposta letra A e B:
SELECT
	*
FROM
	DimStore
--WHERE Status = 'Off'
WHERE CloseDate IS NOT NULL
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 07
-- Resposta:

--CATEGORIA 1: De 1 a 20 funcion�rios -> 1 m�quina de caf�: 75 Lojas
--CATEGORIA 2: De 21 a 50 funcion�rios -> 2 m�quinas de caf�: 187 Lojas
--CATEGORIA 3: Acima de 51 funcion�rios -> 3 m�quinas de caf�: 43 Lojas
SELECT
	*
FROM
	DimStore
WHERE EmployeeCount > 50
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 08
-- Resposta:
SELECT
	ProductKey AS 'ID',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Pre�o do Produto'
FROM
	DimProduct
WHERE ProductDescription LIKE '%LCD%'
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 09
-- Resposta:
SELECT
	*
FROM
	DimProduct
WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Frabikam')
----------------------------------------------------------------------------------------------------------

-- Exerc�cio 10
-- Resposta:
SELECT
	ProductKey AS 'ID do Produto',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Pre�o do Produto'
FROM
	DimProduct
WHERE BrandName = 'Contoso' AND ColorName = 'Silver' AND Weight BETWEEN 10 AND 30
ORDER BY UnitPrice DESC




































































