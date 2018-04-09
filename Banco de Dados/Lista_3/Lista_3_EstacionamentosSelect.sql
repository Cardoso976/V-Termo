-- 1) --
SELECT v.Placa, c.Nome
FROM Veiculo AS v INNER JOIN Cliente AS c ON v.Cliente_CPF = c.CPF;

-- 2) --
SELECT c.CPF, c.Nome
FROM Cliente AS c INNER JOIN Veiculo AS v ON c.CPF = v.Cliente_CPF
WHERE v.Placa LIKE 'JJJ-2020';

-- 3) --
SELECT e.Veiculo_Placa, v.Cor
FROM Estaciona AS e INNER JOIN Veiculo AS v ON e.Veiculo_Placa = v.Placa
WHERE Cod = 1;

-- 4) --
ALTER TABLE Veiculo
ADD AnoVeiculo DATETIME;
SELECT e.Veiculo_Placa, v.AnoVeiculo
FROM Estaciona AS e INNER JOIN Veiculo AS v ON e.Veiculo_Placa = v.Placa
WHERE Cod = 1;

-- 5) --
SELECT v.Placa, v.AnoVeiculo, m.Desc_2
FROM Veiculo AS v INNER JOIN Modelo AS m ON v.Modelo_CodMod = CodMod
WHERE v.AnoVeiculo > 2000;

-- 6) --
SELECT p.Ender AS Endereço, e.dtEntrada AS DataEntrada, e.dtSaida AS DataSaida
FROM Estaciona AS e INNER JOIN Patio AS p ON e.Patio_Num = p.Num
WHERE e.Veiculo_Placa LIKE "JEG-1010";

-- 7) --
SELECT COUNT(Veiculo_Placa) AS VeiculosVerdes
FROM Estaciona AS e INNER JOIN Veiculo AS v ON e.Veiculo_Placa = v.Placa
WHERE v.Cor LIKE 'verde%';

-- 8) --
SELECT *
FROM Cliente AS c INNER JOIN Veiculo AS v ON c.CPF = v.Cliente_CPF
WHERE v.Modelo_CodMod = 1;

-- 9) --
SELECT e.Veiculo_Placa, e.hsEntrada AS HorarioEntrada, e.hsSaida AS HorarioSaida
FROM Estaciona AS e INNER JOIN Veiculo AS v ON e.Veiculo_Placa = v.Placa
WHERE v.Cor LIKE 'verde%';

-- 10) -- 
SELECT *
FROM Estaciona
WHERE Veiculo_Placa LIKE 'JJJ-2020';

-- 11) --
SELECT c.Nome
FROM Estaciona AS e INNER JOIN Veiculo as v ON e.Veiculo_Placa = v.Placa
                    INNER JOIN Cliente as c ON v.Cliente_CPF = c.CPF
WHERE e.Cod = 2;

-- 12) --
SELECT c.CPF
FROM Estaciona AS e INNER JOIN Veiculo as v ON e.Veiculo_Placa = v.Placa
                    INNER JOIN Cliente as c ON v.Cliente_CPF = c.CPF
WHERE e.Cod = 3;                   

-- 13) --
SELECT m.Desc_2
FROM Estaciona AS e INNER JOIN Veiculo as v ON e.Veiculo_Placa = v.Placa
                    INNER JOIN Modelo as m ON v.Modelo_CodMod = m.CodMod
WHERE e.Cod = 2;

-- 14) --
SELECT v.Placa, c.Nome, m.Desc_2 AS Descrição
FROM Veiculo AS v INNER JOIN Modelo AS m ON v.Modelo_CodMod = m.CodMod
                  INNER JOIN Cliente AS c ON v.Cliente_CPF = c.CPF;