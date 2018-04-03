DROP DATABASE IF EXISTS Estacionamento;

CREATE DATABASE Estacionamento;

USE Estacionamento;

CREATE TABLE Cliente
(
    CPF BIGINT NOT NULL,
    Nome NVARCHAR(60) NOT NULL,
    DtNasc DATETIME NOT NULL,
    PRIMARY KEY(CPF)
);

CREATE TABLE Modelo
(
    CodMod INT NOT NULL,
    Desc_2 NVARCHAR(40) NOT NULL,
    PRIMARY KEY(CodMod)
);

CREATE TABLE Patio
(
    Num INT NOT NULL,
    Ender NVARCHAR(40) NOT NULL,
    Capacidade INT NOT NULL,
    PRIMARY KEY(Num)
);

CREATE TABLE Veiculo
(
    Placa NVARCHAR(8) NOT NULL,
    Modelo_CodMod INT NOT NULL,
    Cliente_CPF BIGINT NOT NULL,
    Cor NVARCHAR(20),
    PRIMARY KEY(Placa)
);

CREATE TABLE Estaciona
(
    Cod INT NOT NULL,
    Patio_Num INT NOT NULL,
    Veiculo_Placa NVARCHAR(8),
    dtEntrada NVARCHAR(10),
    dtSaida NVARCHAR(10),
    hsEntrada NVARCHAR(10),
    hsSaida NVARCHAR(10),
    PRIMARY KEY(Cod)
);

ALTER TABLE Veiculo
ADD CONSTRAINT ModeloVeiculo FOREIGN KEY(Modelo_CodMod) REFERENCES Modelo(CodMod);
ALTER TABLE Veiculo
ADD CONSTRAINT ClienteVeiculo FOREIGN KEY(Cliente_CPF) REFERENCES Cliente(CPF);

ALTER TABLE Estaciona 
ADD CONSTRAINT PatioEstaciona FOREIGN KEY(Patio_Num) REFERENCES Patio(Num);
ALTER TABLE Estaciona 
ADD CONSTRAINT VeiculoEstaciona FOREIGN KEY(Veiculo_Placa) REFERENCES Veiculo(Placa);