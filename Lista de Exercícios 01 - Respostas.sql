/*Exercício 01. Você é responsável por controlar os dados de clientes e de produtos da sua empresa. O que você precisará fazer é confirmar se:*/

-- A) Existem 2.517 produtos cadastrados na base e, se não tiver, você deverá reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos.
-- Resposta letra A: Ainda há 2.517 produtos cadastrados.
SELECT * FROM DimProduct

-- B) Até o mês passado, a empresa tinha um total de 19.500 clientes na base de controle. Verifique se esse número aumentou ou reduziu.
-- Resposta letra B: O número reduziu para 18.869 clientes na base de controle.
SELECT * FROM DimCustomer

----------------------------------------------------------------------------------------------------------

/*Exercício 02. Você trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer descontos especiais para os clientes 
no dia de seus aniversários. Para isso, você vai precisar listar todos os clientes e as suas respectivas datas de nascimento, além de um contato.*/

-- A) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela dimCustomer.
-- B) Renomeie as colunas dessa tabela usando o alias (comando AS).

-- Resposta letra A e B: 
SELECT 
	CustomerKey AS 'ID do Cliente', 
	FirstName AS 'Nome', 
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de nascimento'
FROM 
	DimCustomer
----------------------------------------------------------------------------------------------------------

/*Exercício 03.  A Contoso está comemorando aniversário de inauguração de 10 anos e pretende fazer uma ação de premiação para os clientes. 
A empresa quer presentear os primeiros clientes desde a inauguração. Você foi alocado para levar adiante essa ação. Para isso, você terá que fazer o seguinte:*/

-- A) A Contoso decidiu presentear os primeiros 100 clientes da história com um vale compras de R$ 10.000. Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).

-- Resposta letra A:
Select top(100) * from DimCustomer

-- B) A Contoso decidiu presentear os primeiros 20% de clientes da história com um vale compras de R$ 2.000. Utilize um comando em SQL para retornar 10% das linhas da sua tabela dimCustomer (selecione todas as colunas).

-- Resposta letra B:
Select top(20) percent * from DimCustomer


-- C) Adapte o código do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate.
-- D) Renomeie as colunas anteriores para nomes em português.

-- Resposta letra C e D:
Select top(100) 
	FirstName as 'Nome',	
	EmailAddress as 'E-mail', 
	BirthDate as 'Data de Nascimento'
from 
	DimCustomer
----------------------------------------------------------------------------------------------------------

/*Exercício 04. A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o estoque. Você é da área de compras e precisa 
descobrir quem são esses fornecedores. Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela.*/

-- Resposta:
Select distinct
	Manufacturer as 'Fornecedores'
from 
	DimProduct
----------------------------------------------------------------------------------------------------------

/*Exercício 05. O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto registrado na base de produtos que ainda não tenha sido vendido. 
Tente chegar nessa informação.*/ 

-- Resposta: Há 2.517 produtos cadastrados e 2.516 produtos vendidos. Logo, 1 produto não foi vendido. 
Select * from DimProduct
Select TOP (100) * from FactSales

Select Distinct	ProductKey from FactSales











