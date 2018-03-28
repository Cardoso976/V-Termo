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