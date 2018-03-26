DROP DATABASE IF EXISTS Loja;

CREATE DATABASE Loja;

USE loja;

CREATE TABLE Pais
(
    PaisID INT NOT NULL,
    Sigla NVARCHAR(3),
    Nome NVARCHAR(45),
    PRIMARY KEY (PaisID)
);

CREATE TABLE Cidade
(
    CidadeID INT NOT NULL,
    Nome NVARCHAR(45),
    UF NVARCHAR(2),
    PaisID INT,
    PRIMARY KEY (CidadeID),
    FOREIGN KEY (PaisID) REFERENCES Pais(PaisID)
);

CREATE TABLE Tipo
(
    TipoID INT NOT NULL,
    Nome NVARCHAR(45),
    Descricao NVARCHAR(100),
    PRIMARY KEY (TipoID)
);

CREATE TABLE Cliente
(
    ClienteID INT NOT NULL,
    Nome NVARCHAR(45),
    TipoID INT,
    Contato NVARCHAR(45),
    Cargo NVARCHAR(45),
    Endereco NVARCHAR(90),
    CidadeID INT,
    CEP NVARCHAR(45),
    Fone NVARCHAR(45),
    Fax NVARCHAR(45),
    Obs NVARCHAR(45),
    PRIMARY KEY (ClienteID),
    FOREIGN KEY (CidadeID) REFERENCES Cidade(CidadeID),
    FOREIGN KEY (TipoID) REFERENCES Tipo(TipoID)
);

CREATE TABLE Produto
(
    ProdutoID INT NOT NULL,
    Nome NVARCHAR(45),
    Descricao NVARCHAR(45),
    Apresent NVARCHAR(45),
    Venda DECIMAL,
    Custo DECIMAL,
    Quantest INT,
    Estmin INT,
    TipoID INT,
    Situacao NVARCHAR(45),
    PRIMARY KEY (ProdutoID),
    FOREIGN key (TipoID) REFERENCES Tipo(TipoID)
);

CREATE TABLE Funcao
(
    FuncaoID INT NOT NULL,
    Nome NVARCHAR(45),
    Gratific NVARCHAR(45)/*Duvida do Tipo*/,
    PRIMARY KEY (FuncaoID)
);

CREATE TABLE Setor
(
    SetorID INT NOT NULL,
    Nome NVARCHAR(45),
    Ramal NVARCHAR(45),
    Chefe NVARCHAR(45),
    PRIMARY KEY (SetorID)
);

CREATE TABLE Funcionario
(
    FuncionarioID INT NOT NULL,
    Nome NVARCHAR(45),
    Sexo NVARCHAR(45),
    Estcivil NVARCHAR(45),
    RG NVARCHAR(45),
    CPF NVARCHAR(45),
    Datanasc DATETIME,
    Naturalidade NVARCHAR(45),
    Dataadm DATETIME,
    Endereco NVARCHAR(45),
    Complemento NVARCHAR(45),
    Bairro NVARCHAR(45),
    CidadeID INT,
    CEP NVARCHAR(45),
    Fone NVARCHAR(45),
    Celular NVARCHAR(45),
    FuncaoID INT,
    SetorID INT,
    Salario DECIMAL,
    Email NVARCHAR(45),
    Obs NVARCHAR(45),
    PRIMARY KEY (FuncionarioID),
    FOREIGN KEY (CidadeID) REFERENCES Cidade(CidadeID),
    FOREIGN KEY (FuncaoID) REFERENCES Funcao(FuncaoID),
    FOREIGN KEY (SetorID) REFERENCES Setor(SetorID)
);

CREATE TABLE Pedido
(
    PedidoID INT NOT NULL,
    ClienteID INT NOT NULL,
    Vendedor INT NOT NULL,
    DataPedido DATETIME,
    DataFatura DATETIME,
    Via NVARCHAR(45),
    Frete NVARCHAR(45),/*Duvida Tipo*/
    PRIMARY KEY (PedidoID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (Vendedor) REFERENCES Funcionario(FuncionarioID)
);

CREATE TABLE Itens
(
    -- ItensID INT NOT NULL,
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Preco decimal,
    Quant INT,
    Desconto DECIMAL,
    PRIMARY KEY (PedidoID),
    -- FOREIGN KEY (PedidoID) REFERENCES Pedido(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);