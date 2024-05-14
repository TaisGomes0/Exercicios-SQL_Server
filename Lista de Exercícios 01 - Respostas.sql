-- Exercício 01
-- Resposta letra A: Ainda há 2.517 produtos cadastrados.
SELECT * FROM DimProduct

-- R letra B: O número reduziu para 18.869 clientes na base de controle.
SELECT * FROM DimCustomer

----------------------------------------------------------------------------------------------------------

-- Exercício 02
-- Resposta letra A e B: 
SELECT 
	CustomerKey AS 'ID do Cliente', 
	FirstName AS 'Nome', 
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de nascimento'
FROM 
	DimCustomer
----------------------------------------------------------------------------------------------------------

-- Exercício 03
-- Resposta letra A:
Select top(100) * from DimCustomer

-- Resposta letra B:
Select top(20) percent * from DimCustomer

-- Resposta letra C e D:
Select top(100) 
	FirstName as 'Nome',	
	EmailAddress as 'E-mail', 
	BirthDate as 'Data de Nascimento'
from 
	DimCustomer
----------------------------------------------------------------------------------------------------------

-- Exercício 04
-- Resposta:

Select distinct
	Manufacturer as 'Fornecedores'
from 
	DimProduct
----------------------------------------------------------------------------------------------------------

-- Exercício 05
-- Resposta: Há 2.517 produtos cadastrados e 2.516 produtos vendidos. Logo, 1 produto não foi vendido. 

Select * from DimProduct
Select TOP (100) * from FactSales

Select Distinct	ProductKey from FactSales














