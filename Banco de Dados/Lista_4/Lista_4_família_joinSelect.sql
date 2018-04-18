-- a) --
SELECT a.Nome, e.*, t.*
FROM Assinante AS a INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    LEFT JOIN Telefone AS t ON t.EnderecoID = e.EnderecoID;

-- b) --
SELECT a.Nome, r.Descricao AS Ramo
FROM Assinante AS a INNER JOIN RamoAtividade AS r ON a.RamoID = r.RamoID
ORDER BY r.Descricao, a.Nome ;

-- c) --
SELECT a.Nome, r.Descricao AS Ramo, t.Descricao AS Tipo, m.Descricao
FROM Assinante AS a INNER JOIN TipoAssinante AS t ON a.TipoAssinanteID = t.TipoAssinanteID
                    INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    INNER JOIN Municipio AS m ON e.MunicipioID = m.MunicipioID
                    INNER JOIN RamoAtividade AS r ON a.RamoID = r.RamoID
WHERE t.Descricao LIKE 'Residencial' AND m.Descricao LIKE 'Pelotas';

-- d) --
SELECT a.Nome
FROM Assinante AS a INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    INNER JOIN Telefone AS t on t.EnderecoID = e.EnderecoID
GROUP BY a.Nome
HAVING COUNT(*) > 1;

-- e) --
SELECT a.Nome, t.DDD, t.NumeroTelefone, ta.Descricao AS TipoAssinante
FROM Assinante AS a INNER JOIN TipoAssinante AS ta ON a.TipoAssinanteID = ta.TipoAssinanteID
                    INNER JOIN Endereco AS e ON e.AssinanteID = a.AssinanteID
                    INNER JOIN Municipio AS m ON e.MunicipioID = m.MunicipioID
                    INNER JOIN Telefone AS t ON e.EnderecoID = t.EnderecoID
WHERE ta.Descricao LIKE 'Comercial' AND (m.Descricao LIKE 'Natal' OR m.Descricao LIKE 'João Câmara');