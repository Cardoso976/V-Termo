DROP DATABASE IF EXISTS Telefonia;

CREATE DATABASE Telefonia;

USE Telefonia;

CREATE TABLE RamoAtividade
(
    RamoID INT NOT NULL,
    Descricao NVARCHAR(50),
    PRIMARY KEY(RamoID)
);

CREATE TABLE TipoAssinante(
    TipoAssinanteID INT NOT NULL,
    Descricao NVARCHAR(50),
    PRIMARY KEY(TipoAssinanteID)
);

CREATE TABLE Municipio(
    MunicipioID INT NOT NULL,
    Descricao NVARCHAR(50),
    PRIMARY KEY(MunicipioID)
);

CREATE TABLE Assinante
(
    AssinanteID INT NOT NULL,
    Nome NVARCHAR(50) NOT NULL,
    RamoID INT NOT NULL,
    TipoAssinanteID INT NOT NULL,
    PRIMARY KEY(AssinanteID)
);

CREATE TABLE Endereco (
    EnderecoID INT NOT NULL,
    Descricao NVARCHAR(20),
    Complemento NVARCHAR(10),
    Bairro NVARCHAR(20),
    CEP NVARCHAR(9),
    MunicipioID INT NOT NULL,
    AssinanteID INT NOT NULL,
    PRIMARY KEY(EnderecoID)
);

CREATE TABLE Telefone(
    TelefoneID INT NOT NULL,
    DDD CHAR(6),
    NumeroTelefone NVARCHAR(9),
    EnderecoID INT NOT NULL,
    PRIMARY KEY(TelefoneID)
);