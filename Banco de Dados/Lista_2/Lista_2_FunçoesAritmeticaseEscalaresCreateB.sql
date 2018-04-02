DROP DATABASE IF EXISTS Universidade;

CREATE DATABASE Universidade;

USE Universidade;

CREATE TABLE Alunos
(
    MAT INT NOT NULL,
    Nome NVARCHAR(45),
    Endereco NVARCHAR(45),
    Cidade NVARCHAR(20),
    PRIMARY KEY(MAT)
);

CREATE TABLE Disciplina
(
    Cod_Disc CHAR(6) NOT NULL,
    Nome_Disc NVARCHAR(45),
    Carga_Hor INT NOT NULL,
    PRIMARY KEY(Cod_Disc)
);

CREATE TABLE Professores
(
    Cod_Prof INT NOT NULL,
    Nome NVARCHAR(45),
    Endereco NVARCHAR(45),
    Cidade NVARCHAR(45),
    PRIMARY KEY(Cod_Prof)
);

CREATE TABLE Turma
(   
    TurmaID INT NOT NULL,
    Cod_Turma INT NOT NULL, 
    Cod_Disc CHAR(6) NOT NULL,    
    Cod_Prof INT NOT NULL,
    Ano INT NOT NULL,
    Horario NVARCHAR(20),
    PRIMARY KEY(TurmaID)    
);

CREATE TABLE Historico
(
    HistoricoID INT NOT NULL AUTO_INCREMENT,
    MAT INT NOT NULL,
    TurmaID INT NOT NULL,
    Frequencia INT NOT NULL,
    Nota DECIMAL(4,2),
    PRIMARY KEY(HistoricoID)
);