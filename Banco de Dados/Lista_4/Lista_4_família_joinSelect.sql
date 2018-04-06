-- a) --
SELECT a.Nome, e.Descricao AS Endereco, e.Bairro, e.CEP, e.Complemento, t.DDD, t.NumeroTelefone
FROM Assinante AS a INNER JOIN Endereco AS e ON a.EnderecoID = e.EnderecoID
                    LEFT JOIN Telefone AS t ON t.

-- b) --
SELECT a.Nome, r.Descricao AS Ramo
FROM Assinante AS a INNER JOIN RamoAtividade AS r ON a.RamoID = 