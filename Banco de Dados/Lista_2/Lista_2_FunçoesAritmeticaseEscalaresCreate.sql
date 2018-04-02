DROP DATABASE IF EXISTS Lista2;

CREATE DATABASE Lista2;

USE Lista2;

CREATE TABLE Proposta
(
    ID INT NOT NULL AUTO_INCREMENT,
    ID_NF INT NOT NULL,
    ID_ITEM INT NOT NULL,
    COD_PROD INT NOT NULL,
    VALOR_UNIT INT NOT NULL,
    QUANTIDADE INT NOT NULL,
    DESCONTO INT,
    PRIMARY KEY (ID)
);