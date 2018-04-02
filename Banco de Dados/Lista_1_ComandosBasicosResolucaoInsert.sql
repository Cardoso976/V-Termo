INSERT INTO Pais
    (PaisID, Sigla, Nome)
VALUES
    (1, "BRA", "Brasil"),
    (2, "USA", "Estados Unidos"),
    (3, "PER", "Peru"),
    (4, "JAP", "Japao"),
    (5, "POR", "Portugal"),
    (6, "RUS", "Russia");

INSERT INTO Cidade
    (CidadeId, Nome, UF, PaisID)
VALUES
    (1, "Marilia", "SP", 1),
    (2, "Michigan", "IL", 2),
    (3, "Sydney", "Nova Gales do Sul", 6),
    (4, "Nagoia", "AIC", 5),
    (5, "Berlin", "Berlin", 4),
    (6, "Cordoba", "Cordoba", 3);

INSERT INTO Tipo
    (TipoID, Nome, Descricao)
VALUES
    (1, "TIPO 1", "DESCRICAO TIPO 1"),
    (2, "TIPO 2", "DESCRICAO TIPO 2"),
    (3, "TIPO 3", "DESCRICAO TIPO 3"),
    (4, "TIPO 4", "DESCRICAO TIPO 4");

INSERT INTO Cliente
    (ClienteID, Nome, Tipo, Contato, Cargo, Endereco, CidadeID, CEP,Fone, Fax, Obs)
VALUES
    (1, "Luiz Jose", " ", " ", "vendedor", "Av Faria lima 23", 1, "15214500", "551133012598", null, null),
    (2, "Rosemary"," ", " ", "marketing", "20 Saint James Av", 2, "20058", "16233022015", null, null),
    (3, "Janet", " ", " ", "teacher", "550 Ocean Av", 3, "20058", "16233022015", "16256985632", "blablabla"),
    (4, "Cristian pela", " ", " ", "estudante", "Rua de la plata 68", 6, "6686464", "54153265546", null, null),
    (5, "Cristina Rode", " ", " ", "programadora", "Frederich Strasse 125", 5, "526548", "3546544", null, null),
    (6, "Liu xiang", " ", " ", "professora", "feng xang da lu 12", 4, "35465465", "84213546546", null, "peng you");

INSERT INTO Produto
    (ProdutoID, Nome, TipoID, Descricao, Apresent, Venda, Custo, Quantest, Estmin, Situacao)
VALUES
    (1, "PRODUTO 1", 1, "DESCRICAO PRODUTO 1", "APRESENT PRODUTO 1", 125.25, 78.90, 150, 20, "situacao 1" ),
    (2, "PRODUTO 2", 2, "DESCRICAO PRODUTO 2", "APRESENT PRODUTO 1", 125.25, 78.90, 110, 20, "situacao 2" ),
    (3, "PRODUTO 3", 3, "DESCRICAO PRODUTO 3", "APRESENT PRODUTO 1", 125.25, 78.90, 85, 20, "situacao 3" ),
    (4, "PRODUTO 4", 4, "DESCRICAO PRODUTO 4", "APRESENT PRODUTO 1", 125.25, 78.90, 78, 30, "situacao 4" ),
    (5, "PRODUTO 5", 1, "DESCRICAO PRODUTO 5", "APRESENT PRODUTO 1", 125.25, 78.90, 98, 20, "situacao 5" ),
    (6, "PRODUTO 6", 2, "DESCRICAO PRODUTO 6", "APRESENT PRODUTO 1", 125.25, 78.90, 101, 50, "situacao 6" ),
    (7, "PRODUTO 7", 4, "DESCRICAO PRODUTO 7", "APRESENT PRODUTO 1", 125.25, 78.90, 58, 50, "situacao 7" ),
    (8, "PRODUTO 8", 1, "DESCRICAO PRODUTO 8", "APRESENT PRODUTO 1", 125.25, 78.90, 145, 10, "situacao 8" ),
    (9, "PRODUTO 9", 2, "DESCRICAO PRODUTO 9", "APRESENT PRODUTO 1", 125.25, 78.90, 189, 80, "situacao 9" ),
    (10, "PRODUTO 10", 3, "DESCRICAO PRODUTO 10", "APRESENT PRODUTO 1", 125.25, 78.90, 112, 30, "situacao 10" );

INSERT INTO Funcao
    (FuncaoID, Nome, Gratific)
VALUES
    (1, 'Gerente', 0.2),
    (2, 'Vendedor', 0.3),
    (3, 'Operador', 0.1);

INSERT INTO SETOR
	(SetorID, Sigla, Nome, Ramal, Chefe)
VALUES
	(1, "S1", "SETOR 1", "1221", 4),
	(2, "S2", "SETOR 2", "1224", 2),
	(3, "S2", "SETOR 3", "1223", 3),
	(4, "S3", "SETOR 4", "1222", 4);
     
INSERT INTO Funcionario
    (FuncionarioID, Nome, Sexo, Estcivil, RG, CPF, Datanasc, Naturalidade, Dataadm, Endereco, Complemento, Bairro, CidadeID, CEP, Fone, Celular, FuncaoID, SetorID, Salario, Email, Obs)
VALUES
    (1, "Josefina Almeida", "F", "Solteira", "485221145", "11155588874", "1992-05-20", 1, "2015-05-21", "Rua jose bras 21", null, "Parque das Orquideas", 1, "215452", "112246654654", "5464654654", 2, 3, 1.200, "nome@email.com.br", null ),
    (2, "Mauro benedito", "M", "Casado", "485465145", "1145454874", "1980-09-10", 1, "2014-01-21", "Rua jose bras 22", null, "Parque das Orquideas", 1, "215452", "112265874654", "546545654654", 2, 4, 1.500, "nome2@email.com.br", null ),
    (7, "Mauro benedito", "M", "Casado", "485465145", "1145454874", "1980-09-10", 1, "2014-01-21", "Rua jose bras 22", null, "Parque das Orquideas", 1, "215452", "112265874654", "546545654654", 2, 4, 1.500, "nome2@email.com.br", null ),
    (6, "Camila Silva", "F", "Solteira", "485221145", "111555884874", "1986-02-12", 3, "2013-02-21", "Rua jose bras 23", null, "Palmital", 6, "215452", "112246654654", "5464654654", 2, 1, 3.200, "nome3@email.com.br", null ),
    (4, "John Feer", "M", "Solteira", "485221145", "11155588874", "1990-10-04", 2, "2012-03-21", "Rua jose bras 24", null, "Cezar Almeida", 2, "215452", "112246654654", "5464654654", 3, 2, 5.200, "nome4@email.com.br", null ),
    (5, "Michael Flanagam", "M", "Solteira", "485221145", "11155588874", "1978-08-29", 4, "2011-04-21", "Rua jose bras 25", null, "Parque das Nações", 5, "215452", "112246654654", "5464654654", 1, 3, 2.200, "nome5@email.com.br", null ),
    (3, "Kena Fany", "F", "Solteira", "485221145", "11155588874", "1995-03-21", 5, "2010-09-21", "Rua jose bras 26", null, "Parque das Nações", 4, "215452", "112246654654", "5464654654", 2, 3, 4.100, "nome6@email.com.br", null );

INSERT INTO PEDIDO
    (PedidoID, ClienteID, Vendedor, DataPedido, DataFatura, Via, Frete)
VALUES
    (1, 2, 1, "2017-01-20", "2017-01-22", "VIA 1", "FRETE1"),
    (2, 1, 2, "2017-01-25", "2017-01-28", "VIA 3", "FRETE2"),
    (3, 3, 3, "2017-11-10", "2017-11-11", "VIA 4", "FRETE3"),
    (4, 4, 1, "2018-02-18", "2018-02-20", "VIA 2", "FRETE2");

INSERT INTO ITENS
    (PedidoID, ProdutoID, Preco, Quant, Desconto)
VALUES
    (1, 2, 152.20, 2, 20.0),
    (1, 4, 182.20, 2, 20.0),
    (2, 1, 112.20, 1, 12.0),
    (3, 3, 152.20, 3, 7.0),
    (4, 4, 182.20, 1, 5.0);