CREATE DATABASE locaveiculos;

USE locaveiculos;

CREATE TABLE categoria
(
    codigo INT NOT NULL,
    descricao NVARCHAR(50) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE cliente
(
    codigo INT NOT NULL,
    nome NVARCHAR(40) NOT NULL,
    endereco NVARCHAR(40) NOT NULL,
    telefone NVARCHAR(20) NOT NULL,
    nascimento TIMESTAMP NOT NULL,
    cnh NVARCHAR(15) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE fabricante
(
    codigo INT NOT NULL,
    nome NVARCHAR(40) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE tipocobranca
(
    codigo INT NOT NULL,
    nome NVARCHAR(40) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE veiculo
(
    codigo INT NOT NULL,
    nome NVARCHAR(40) NOT NULL,
    valorkm NUMERIC(7,2) NOT NULL,
    valordiaria NUMERIC(7,2) NOT NULL,
    qtdpessoas INT NOT NULL,
    qtdmalas INT NOT NULL,
    categoria INT NOT NULL,
    fabricante INT NOT NULL,
    km INT NOT NULL,
    PRIMARY KEY(codigo),
    FOREIGN KEY(categoria) REFERENCES categoria(codigo),
    FOREIGN KEY(fabricante) REFERENCES fabricante(codigo)
);

CREATE TABLE locacao
(
    numero INT NOT NULL,
    datahora TIMESTAMP NOT NULL,
    veiculo INT,
    cliente INT,
    tipocobranca INT,
    PRIMARY KEY(numero),
    FOREIGN KEY(veiculo) REFERENCES veiculo(codigo),
    FOREIGN KEY(cliente) REFERENCES cliente(codigo),
    FOREIGN KEY(tipocobranca) REFERENCES tipocobranca(codigo)
);

CREATE TABLE devolucao(
    locacao INT NOT NULL,
    datahora TIMESTAMP NOT NULL,
    kmatual INT NOT NULL,
    PRIMARY KEY(locacao),
    FOREIGN KEY(locacao) REFERENCES locacao(numero)
);

CREATE TABLE adicionais(
    locacao INT NOT NULL,
    sequencia INT NOT NULL,
    descricao NVARCHAR(50) NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    PRIMARY KEY(sequencia, locacao),
    FOREIGN KEY(locacao) REFERENCES devolucao(locacao)
);