/*Exerc�cio 01. Voc� � respons�vel por controlar os dados de clientes e de produtos da sua empresa. O que voc� precisar� fazer � confirmar se:*/

-- A) Existem 2.517 produtos cadastrados na base e, se n�o tiver, voc� dever� reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos.
-- Resposta letra A: Ainda h� 2.517 produtos cadastrados.
SELECT * FROM DimProduct

-- B) At� o m�s passado, a empresa tinha um total de 19.500 clientes na base de controle. Verifique se esse n�mero aumentou ou reduziu.
-- Resposta letra B: O n�mero reduziu para 18.869 clientes na base de controle.
SELECT * FROM DimCustomer

----------------------------------------------------------------------------------------------------------

/*Exerc�cio 02. Voc� trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer descontos especiais para os clientes 
no dia de seus anivers�rios. Para isso, voc� vai precisar listar todos os clientes e as suas respectivas datas de nascimento, al�m de um contato.*/

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

/*Exerc�cio 03.  A Contoso est� comemorando anivers�rio de inaugura��o de 10 anos e pretende fazer uma a��o de premia��o para os clientes. 
A empresa quer presentear os primeiros clientes desde a inaugura��o. Voc� foi alocado para levar adiante essa a��o. Para isso, voc� ter� que fazer o seguinte:*/

-- A) A Contoso decidiu presentear os primeiros 100 clientes da hist�ria com um vale compras de R$ 10.000. Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).

-- Resposta letra A:
Select top(100) * from DimCustomer

-- B) A Contoso decidiu presentear os primeiros 20% de clientes da hist�ria com um vale compras de R$ 2.000. Utilize um comando em SQL para retornar 10% das linhas da sua tabela dimCustomer (selecione todas as colunas).

-- Resposta letra B:
Select top(20) percent * from DimCustomer


-- C) Adapte o c�digo do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate.
-- D) Renomeie as colunas anteriores para nomes em portugu�s.

-- Resposta letra C e D:
Select top(100) 
	FirstName as 'Nome',	
	EmailAddress as 'E-mail', 
	BirthDate as 'Data de Nascimento'
from 
	DimCustomer
----------------------------------------------------------------------------------------------------------

/*Exerc�cio 04. A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o estoque. Voc� � da �rea de compras e precisa 
descobrir quem s�o esses fornecedores. Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela.*/

-- Resposta:
Select distinct
	Manufacturer as 'Fornecedores'
from 
	DimProduct
----------------------------------------------------------------------------------------------------------

/*Exerc�cio 05. O seu trabalho de investiga��o n�o para. Voc� precisa descobrir se existe algum produto registrado na base de produtos que ainda n�o tenha sido vendido. 
Tente chegar nessa informa��o.*/ 

-- Resposta: H� 2.517 produtos cadastrados e 2.516 produtos vendidos. Logo, 1 produto n�o foi vendido. 
Select * from DimProduct
Select TOP (100) * from FactSales

Select Distinct	ProductKey from FactSales











