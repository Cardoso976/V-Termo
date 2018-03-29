DROP DATABASE IF EXISTS Loja;

CREATE DATABASE Loja;

USE loja;

CREATE TABLE Pais
(
    PaisID INT NOT NULL,
    Sigla CHAR(3),
    Nome NVARCHAR(45),
    PRIMARY KEY (PaisID)
);

CREATE TABLE Cidade
(
    CidadeID INT NOT NULL,
    Nome NVARCHAR(45),
    UF CHAR(2),
    PaisID INT,
    PRIMARY KEY (CidadeID)
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
    Tipo NVARCHAR(20),
    Contato NVARCHAR(45),
    Cargo NVARCHAR(45),
    Endereco NVARCHAR(90),
    CidadeID INT,
    CEP NVARCHAR(45),
    Fone NVARCHAR(45),
    Fax NVARCHAR(45),
    Obs NVARCHAR(45),
    PRIMARY KEY (ClienteID)    
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
    PRIMARY KEY (ProdutoID)    
);

CREATE TABLE Funcao
(
    FuncaoID INT NOT NULL,
    Nome NVARCHAR(45),
    Gratific decimal,
    PRIMARY KEY (FuncaoID)
);

CREATE TABLE Setor
(
    SetorID INT NOT NULL,
    Nome NVARCHAR(45),
    Ramal NVARCHAR(45),
    Chefe INT NOT NULL,
    PRIMARY KEY (SetorID)
);

CREATE TABLE Funcionario
(
    FuncionarioID INT NOT NULL,
    Nome NVARCHAR(45),
    Sexo NVARCHAR(45),
    Estcivil NVARCHAR(45),
    RG NVARCHAR(50),
    CPF NVARCHAR(10),
    Datanasc DATETIME,
    Naturalidade NVARCHAR(6),
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
    PRIMARY KEY (FuncionarioID)        
);

CREATE TABLE Pedido
(
    PedidoID INT NOT NULL,
    ClienteID INT NOT NULL,
    Vendedor INT NOT NULL,
    DataPedido DATETIME,
    DataFatura DATETIME,
    Via NVARCHAR(45),
    Frete NVARCHAR(45),
    PRIMARY KEY (PedidoID)   
);

CREATE TABLE Itens
(
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Preco decimal,
    Quant INT,
    Desconto DECIMAL,
    PRIMARY KEY (PedidoID, ProdutoID)    
);