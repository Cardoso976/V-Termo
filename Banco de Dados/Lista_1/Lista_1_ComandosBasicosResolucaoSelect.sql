-- a) --
SELECT FuncionarioID, Nome, Salario, (Salario*1.3) AS SalarioComAumento
FROM Funcionario;

-- b) --
SELECT DISTINCT C.Nome, F.Bairro
FROM Funcionario AS F INNER JOIN Cidade AS C ON F.CidadeID = C.CidadeID;

-- c) --
SELECT ProdutoID, Nome, Custo, Venda, (Venda-Custo) AS VendaMenosCusto
FROM Produto;

-- d) --
SELECT TOP 3 *
FROM Cliente INNER JOIN Cidade ON Cliente.CidadeID = Cidade.CidadeID;

-- e) --
SELECT Nome, MonthName(Datanasc)
FROM Funcionario;

-- f) --
-- Não Funciona no MYSQL --
SELECT TOP 50 PERCENT *
FROM Pedido
ORDER BY DataPedido DESC;
-- Funciona --
-- SELECT * --
-- FROM Pedido --
-- ORDER BY DataPedido DESC --
-- LIMIT 2; --

-- g) --
SELECT Descricao, ROUND(Custo, 1) AS Custo, ROUND(Venda, 1) AS Venda
From Produto;

-- h) --
SELECT LOWER(LEFT(Sigla, 1))
FROM Setor;

-- i) --
SELECT DAYNAME(NOW());

-- j) --
SELECT p.PedidoID as Cod, c.Nome as Cliente, f.Nome as Vendedor, p.DataPedido, p.DataFatura, p.Via, p.Frete
FROM Pedido as p INNER JOIN Cliente as c ON p.ClienteID = c.ClienteID
                 INNER JOIN Funcionario as f ON p.Vendedor = f.FuncionarioID
WHERE p.DataPedido > DATE_SUB(NOW(), INTERVAL 6 MONTH);

-- k) --
SELECT p.PedidoID as Cod, c.Nome as Cliente, f.Nome as Vendedor, p.DataPedido, p.DataFatura, p.Via, p.Frete
FROM Pedido as p INNER JOIN Cliente as c ON p.ClienteID = c.ClienteID
                 INNER JOIN Funcionario as f ON p.Vendedor = f.FuncionarioID
ORDER BY p.DataPedido DESC
LIMIT 1;

-- l) --
ALTER TABLE Funcionario
ADD premiado DECIMAL;
SELECT Nome, premiado AS Bônus
From Funcionario;

-- m) --
SELECT DAYNAME(NOW() + INTERVAL 10 DAY) AS HojeMaisDezDiasNome;

-- n) --
SELECT ROUND(((preco*preco)*preco),2) AS PrecoAoCubo
FROM Itens;