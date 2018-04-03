INSERT INTO Cliente
    (CPF, Nome, DtNasc)
VALUES
    (06075815490, "Jullieny Melo de Oliveira", "1989/1/16"),
    (48890146400, "JAMES FREITAS DE CARVALHO", "1967/10/9"),
    (07514033424, "ERITA FEITOSA DE SOUSA", "1987/2/3"),
    (54544874491, "Álvaro Rogério Batista", "30/9/1967"),
    (06840062430, "Elisabete Joaquina da Silva", "1985/9/19");

INSERT INTO Modelo
    (CodMod, Desc_2)
VALUES
    (1, "Gol"),
    (2, "Uno"),
    (3, "Palio"),
    (4, "Fox/CrossFox"),
    (5, "Siena"),
    (6, "Celta"),
    (7, "Voyage"),
    (8, "HB20");

INSERT INTO Patio
    (Num, Ender, Capacidade)
VALUES
    (1, "Avenida Nueve de Julio, Buenos Aires", 100),
    (2, "5th Avenue", 50),
    (3, "Avenida Paulista", 120),
    (4, "Champs Elysées", 40);

INSERT INTO Veiculo
    (Placa, Modelo_CodMod, Cliente_CPF, Cor)
VALUES
    ("JJJ-2020", 1, 06075815490, "prata"),
    ("JEG-1010", 5, 07514033424, "azul"),
    ("PUN-3030", 7, 54544874491, "verde-escuro"),
    ("GAY-5050", 8, 48890146400, "preto"),
    ("CUD-0124", 2, 06840062430, "vermelho");   

    INSERT INTO Estaciona
    (Cod, Patio_Num, Veiculo_Placa, dtEntrada, dtSaida, hsEntrada, hsSaida)
    VALUES
    (1, 1, "JJJ-2020", "01/02/2018", "03/04/2018", "11:00", "19:30"),
    (2, 3, "JEG-1010", "15/01/2018", "01/03/2018", "10:50", "21:22"),
    (3, 2, "PUN-3030", "16/01/2018", "25/01/2018", "09:48", "18:14"),
    (4, 2, "JEG-1010", "03/02/2018", "29/02/2018", "17:56", "13:56"),
    (5, 4, "GAY-5050", "04/02/2018", "02/03/2018", "01:23", "16:47"),
    (6, 4, "JJJ-2020", "05/01/2018", "25/03/2018", "06:59", "15:33"),
    (7, 1, "GAY-5050", "22/02/2018", "29/02/2018", "15:48", "22:44"),
    (8, 1, "CUD-0124", "25/02/2018", "04/03/2018", "11:15", "11:55");