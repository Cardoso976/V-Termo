INSERT INTO categoria
    (codigo, descricao)
VALUES
    (1, 'carro economico'),
    (2, 'carro completo'),
    (3, 'carro medio'),
    (4, 'carro grande'),
    (5, 'suv'),
    (6, 'luxo'),
    (7, 'van e minivan'),
    (8, 'esportivo e conversivel');

INSERT INTO fabricante
    (codigo, nome)
VALUES
    (1, 'volkswagen'),
    (2, 'fiat'),
    (3, 'chevrolet/gm'),
    (4, 'ford'),
    (5, 'renault');

INSERT INTO cliente
    (codigo, nome, endereco, telefone, nascimento, cnh)
VALUES
    (1, 'reco-reco', 'av. xaz, 656', '23123', '1971-10-09', '3123123'),
    (2, 'bolao', 'rua dom pedro, 30', '54243', '1992-07-07', '545345'),
    (3, 'azeitona', 'rua 15 de novembro 231', '983331', '1985-04-03', '2342344'),
    (4, 'recruta zero', 'rua campos sales, 120', '871112', '1981-07-15', '721870'),
    (5, 'meio-quilo', 'rua 7 de setembro, 14', '877878', '1987-03-08', '8787878');

INSERT INTO tipocobranca
    (codigo, nome)
VALUES
    (1, 'por dia'),
    (2, 'por km');

INSERT INTO adicionais
    (locacao, sequencia, descricao, valor)
VALUES
    (1, 1, 'risco na lataria', 300),
    (2, 1, 'gps', 50),
    (3, 1, 'gps', 50),
    (6, 1, 'seguro adicional', 200);

INSERT INTO devolucao
    (locacao, datahora, kmatual)
VALUES
    (1, '2016-05-13 10:00:00', 20530),
    (1, '2016-05-15 12:30:00', 31200),
    (1, '2016-05-15 21:18:48', 2900),
    (1, '2016-05-16 21:45:00', 1900),
    (1, '2016-05-16 22:00:34', 2960),
    (1, '2016-05-19 23:10:40', 1987);

INSERT INTO locacao
    (numero, datahora, veiculo, cliente, tipocobranca)
VALUES
    (1, '2016-05-10 11:00:00', 3, 1, 1),
    (2, '2016-05-11 13:20:00', 4, 2, 2),
    (3, '2016-05-11 17:00:00', 7, 3, 1),
    (4, '2016-05-12 09:00:00', 1, 4, 1),
    (5, '2016-05-12 16:30:00', 15, 5, 1),
    (6, '2016-05-14 08:00:00', 6, 1, 2),
    (7, '2016-05-15 17:20:00', 16, 5, 1);

INSERT INTO veiculo
    (codigo, nome, valorkm, valordiaria, qtdpessoas, qtdmalas, categoria, fabricante, km)
VALUES
    (1, 'gol', 1.2, 60, 4, 2, 1, 1, 1200),
    (2, 'novo uno', 1.18, 58, 4, 2, 1, 2, 13230),
    (3, 'voyage', 1.23, 85, 5, 3, 3, 1, 20000),
    (4, 'fiesta sedan', 1.23, 85, 5, 2, 3, 4, 29000),
    (5, 'strada', 1.3, 102, 2, 4, 2, 2, 5321),
    (6, 'cruze', 1.5, 136, 5, 4, 4, 3, 1000),
    (7, 'cobalt', 1.45, 150, 5, 4, 4, 3, 2500),
    (8, 'focus', 1.5, 160, 5, 4, 4, 9089),
    (9, 'doblo', 1.42, 157, 7, 4, 7, 2, 38900),
    (10, 'spin', 1.53, 179, 7, 4, 7, 3, 35000),
    (11, 'ecosport', 1.6, 199, 5, 4, 5, 4, 24000),
    (12, 'duster', 1.61, 211, 5, 4, 5, 5, 16400),
    (13, 'fluence', 1.75, 230, 5, 4, 6, 5, 10000),
    (14, 'jetta', 1.82, 260, 5, 4, 6, 1, 46000),
    (15, 'mustang', 3, 780, 5, 2, 8, 4, 2200),
    (16, 'camaro', 2.95, 760, 5, 2, 8, 3, 1000);