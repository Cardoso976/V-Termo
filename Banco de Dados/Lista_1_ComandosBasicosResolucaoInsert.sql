INSERT INTO Pais
    (PaisID, Sigla, Nome)
VALUES
    (1, 'Brasil', 'BRA'),
    (2, 'Alemanha', 'GER'),
    (3, 'Estados Unidos', 'USA');

INSERT INTO Cidade
    (CidadeId, Nome, UF, PaisID)
VALUES
    (3549805, 'São José do Rio Preto', 'SP', 1),
    (3529005, 'Marília', 'SP', 1),
    (4558222, 'Berlim', 'BE', 2),
    (4522598, 'Munique', 'BY', 2),
    (5533258, 'Nova York', 'NY', 3),
    (5525987, 'Orlando', 'FL', 3);

INSERT INTO Tipo
    (TipoID, Nome, Descricao)
VALUES
    (1, 'Desinfetantes', 'Os produtos deste grupo são produtos biocidas utilizados na higiene.'),
    (2, 'Alimentos', 'Produtos destinados a alimentação.'),
    (3, 'Celulares', 'Produtos para comunicação por ondas electromagneticas.'),
    (4, 'Eletrodomesticos', 'Produtos eletricos para facilitar varias tarefas domesticas.'),
    (5, 'Fisica', 'Clientes que possuem cadastro de pessoa fisica.'),
    (6, 'Juridica', 'Clientes que possuem cadastro de pessoa juridica');

INSERT INTO Cliente
    (ClienteID, Nome, TipoID, Contato, Cargo, Endereco, CidadeID, CEP,Fone, Fax, Obs)
VALUES
    (1, 'Alexandra Ferreira Da Silva', 5, 'alaexandre@gmail.com', 'Policial', 'R. Roberto Simonsen', 3549805, '	15090-120', '(17)3216-9400', '', ''),
    (2, 'Debora Ribeiro Santos', 5, 'debora10@gmail.com', 'CEO', 'Av. José Munia', 3549805, '15085-350', '(17)2137-3570', '', ''),
    (3, 'Rodrigo Garcia Cardoso', 5, 'rodrigo.cardos97@icloud.com', 'R. Sete de Setembro 1440', 3529005, '17502-020', '(14)3401-4400', '', ''),
    (4, 'Dylan Smith', 5, 'dylan@gmail.com', '99 West South St', 5525987 , 'FL 32801', '+1 855-724-5411', '', ''),
    (5, 'Arnold Ross', 5, 'arnold@google.com', '768 5th Ave', 5533258, 'NY 10019', '+1 212-759-3000', '', ''),
    (6, 'Anton Barth', 5, 'a.barth@icloud.com', 'Karl-Marx-Allee 33', 4558222, '10178 Berlin', '+49 30 24756011', '', ''),
    (7, 'Stephan Beck', 5, 'ste.beck@gmail.com', 'Zamdorfer Str. 84', 4522598, '81677 München', '+49 89 9394430', '', '');

INSERT INTO Produto
    (ProdutoID, Nome, Descricao, Apresent, Venda, Custo, Quantest, Estmin, TipoID, Situacao)
VALUES
    (1, 'Omo', 'Sabao para roupas', '', 15.95, 7.35, 500, 100, 1, 'Normal'),
    (2, 'Pit-Stop', 'Bolacha de agua e sal', '', 2.30, 0.3, 1000, 110, 2, 'Normal'),
    (3, 'iPhone 6s 128gb', 'O melhor Smartphone', '', 2599, 1250.56, 500, 2, 3, 'Normal'),
    (4, 'Geladeira', 'Samsung', '', 5859, 65, 2400, 8, 1, 4, 'Normal');

INSERT INTO Funcao
    (FuncaoID, Nome, Gratific)
VALUES
    (1, 'Gerente', 0.2),
    (2, 'Vendedor', 0.3),
    (3, 'Operador', 0.1);

INSERT INTO Setor
    (SetorID, Nome, Ramal, Chefe)
VALUES
    (1, 'Administrativo', '1001', 'Rafael Lucas'),
    (2, 'Financeiro', '1012', 'Eduardo'),
    (3, 'Comercial', '1039', 'Rafael Lucas'),
    (4, 'Operacional', '1015', 'Luan Dumas'),
    (5, 'Recursos Humanos', '1000', 'Roberto Lucas');

INSERT INTO Setor
    (FuncionarioID, Nome, Sexo, Estcivil, RG, CPF, Datanasc, Naturalidade, Dataadm, Endereco, Complemento, Bairro, CidadeID, CEP, Fone, Celular, FuncaoID, SetorID, Salario, Email, Obs)
VALUES
    (1,'Alex Silva Araujo', 'Masculino', 'Solteiro', '25.253.394-X', '213.909.848-00', '01/02/1985', 'R. Das Flores 415', '12345-456', '(19)1234-4567', '(19)99123-4567', 3, 3, 3500.95, 'alex@uol.com.br', ''),