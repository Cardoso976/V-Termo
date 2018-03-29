-- a) --
SELECT FuncionarioID, Nome, Salario, (Salario*1.03) AS SalarioComAumento
From Funcionario;

-- b) --
SELECT DISTINCT C.Nome, F.Bairro
FROM Funcionario AS F INNER JOIN Cidade AS C ON F.CidadeID = C.CidadeID;

-- c) --
SELECT ProdutoID, Nome, Custo, Venda, (Venda-Custo) AS VendaMenosCusto
FROM Produto;

-- d) --
SELECT TOP 3 *
FROM Cliente INNER JOIN Cidade ON Cliente.CidadeID = Cidade.CidadeID;