-- a) --
SELECT a.Nome, e.Descricao AS Endereco, e.Bairro, e.CEP, e.Complemento, t.DDD, t.NumeroTelefone
FROM Assinante AS a INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    LEFT JOIN Telefone AS t ON t.EnderecoID = e.EnderecoID;

-- b) --
SELECT a.Nome, r.Descricao AS Ramo
FROM Assinante AS a INNER JOIN RamoAtividade AS r ON a.RamoID = r.RamoID
ORDER BY r.Descricao, a.Nome ;

-- c) --
SELECT a.Nome, t.Descricao AS Tipo, m.Descricao
FROM Assinante AS a INNER JOIN TipoAssinante AS t ON a.TipoAssinanteID = t.TipoAssinanteID
                    INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    INNER JOIN Municipio AS m ON e.MunicipioID = m.MunicipioID
WHERE m.Descricao LIKE 'Pelotas';

-- d) --
SELECT a.Nome
FROM Assinante AS a INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    INNER JOIN Telefone AS t on t.EnderecoID = e.EnderecoID
GROUP BY a.Nome
HAVING COUNT(*) > 1;

-- e) --
SELECT a.Nome, t.DDD, t.NumeroTelefone, ta.Descricao
FROM Assinante AS a INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    INNER JOIN TipoAssinante AS ta ON a.AssinanteID = ta.TipoAssinanteID
                    INNER JOIN Telefone AS t ON t.EnderecoID = e.EnderecoID                    
                    INNER JOIN Municipio AS m ON e.MunicipioID = m.MunicipioID
WHERE ta.Descricao LIKE 'Comercial' AND (m.Descricao LIKE 'Natal' OR m.Descricao LIKE 'João Câmara');

SELECT a.Nome, t.Descricao AS Tipo
FROM Assinante AS a INNER JOIN TipoAssinante AS t ON a.TipoAssinanteID = t.TipoAssinanteID;