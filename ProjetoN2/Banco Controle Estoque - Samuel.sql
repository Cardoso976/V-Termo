DROP DATABASE IF EXISTS controleestoque;

CREATE DATABASE controleestoque;

USE controleestoque;

CREATE TABLE grupo_produto (
	id int NOT NULL AUTO_INCREMENT,
	nome nvarchar(50) NULL,
	ativo bit NULL,
	CONSTRAINT PK_grupo_produto PRIMARY KEY (id)
);

CREATE TABLE perfil (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(20) NOT NULL,
	ativo bit NOT NULL,
	CONSTRAINT PK_perfil PRIMARY KEY (id)
);

CREATE TABLE unidade_medida (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
	sigla varchar(3) NOT NULL,
	ativo bit NOT NULL,
	CONSTRAINT PK_unidade_medida PRIMARY KEY (id)
);

CREATE TABLE usuario (
	id int NOT NULL AUTO_INCREMENT,
	login nvarchar(50) NOT NULL,
	senha nvarchar(32) NOT NULL,
	nome nvarchar(100) NOT NULL,
	email nvarchar(150) NOT NULL,
	id_perfil int NOT NULL,
	CONSTRAINT PK_usuario PRIMARY KEY (id)
);

CREATE TABLE perfil_usuario (
	id int NOT NULL AUTO_INCREMENT,
	id_perfil int NOT NULL,
	id_usuario int NOT NULL,
 CONSTRAINT PK_perfil_usuario PRIMARY KEY (id)
);

CREATE TABLE marca_produto (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	ativo bit NOT NULL,
	CONSTRAINT PK_marca_produto PRIMARY KEY (id)
);

CREATE TABLE local_armazenamento (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	ativo bit NOT NULL,
	CONSTRAINT PK_local_armazenamento PRIMARY KEY (id)
);

CREATE TABLE pais (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
	codi varchar(3) NOT NULL,
	ativo bit NOT NULL,
	CONSTRAINT PK_pais PRIMARY KEY (id)
);

CREATE TABLE estado (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
	uf varchar(2) NOT NULL,
	ativo bit NOT NULL,
	id_pais int NOT NULL,
	CONSTRAINT PK_estado PRIMARY KEY (id)
);

CREATE TABLE cidade (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
	ativo bit NOT NULL,
	id_estado int NOT NULL,
	CONSTRAINT PK_cidade PRIMARY KEY (id)
);

CREATE TABLE fornecedor (
	id int NOT NULL AUTO_INCREMENT,
	nome varchar(60) NOT NULL,
	razao_social varchar(100) NULL,
	num_documento varchar(20) NULL,
	tipo int NOT NULL,
	telefone varchar(20) NOT NULL,
	contato varchar(60) NOT NULL,
	logradouro varchar(100) NOT NULL,
	numero varchar(20) NOT NULL,
	complemento varchar(100) NULL,
	cep varchar(10) NULL,
	id_pais int NOT NULL,
	id_estado int NOT NULL,
	id_cidade int NOT NULL,
	ativo bit NOT NULL,
	CONSTRAINT PK_fornecedor PRIMARY KEY (id)
);

CREATE TABLE produto (
	id int NOT NULL AUTO_INCREMENT,
	codi varchar(10) NOT NULL,
	nome varchar(50) NOT NULL,
	preco_custo decimal(7, 2) NOT NULL,
	preco_venda decimal(7, 2) NOT NULL,
	quant_estoque int NOT NULL,
	id_unidade_medida int NOT NULL,
	id_grupo int NOT NULL,
	id_marca int NOT NULL,
	id_fornecedor int NOT NULL,
	id_local_armazenamento int NOT NULL,
	ativo bit NOT NULL,
	imagem varchar(100) NOT NULL,
 CONSTRAINT PK_produto PRIMARY KEY (id)
);

CREATE TABLE entrada_produto (
	id int NOT NULL AUTO_INCREMENT,
	numero varchar(10) NOT NULL,
	data datetime NOT NULL,
	id_produto int NOT NULL,
	quant int NOT NULL,
 CONSTRAINT PK_entrada_produto PRIMARY KEY (id)
);

CREATE TABLE saida_produto (
	id int NOT NULL AUTO_INCREMENT,
	numero varchar(10) NOT NULL,
	data datetime NOT NULL,
	id_produto int NOT NULL,
	quant int NOT NULL,
 CONSTRAINT PK_saida_produto PRIMARY KEY (id) 
);

ALTER TABLE usuario 
ADD FOREIGN KEY(id_perfil) REFERENCES perfil (id);

ALTER TABLE perfil_usuario
ADD FOREIGN KEY(id_perfil) REFERENCES perfil (id);

ALTER TABLE perfil_usuario
ADD FOREIGN KEY(id_usuario) REFERENCES usuario (id);

ALTER TABLE estado
ADD FOREIGN KEY(id_pais) REFERENCES pais (id);

ALTER TABLE cidade
ADD FOREIGN KEY(id_estado) REFERENCES estado (id);

ALTER TABLE fornecedor
ADD FOREIGN KEY(id_pais) REFERENCES pais (id);

ALTER TABLE fornecedor
ADD FOREIGN KEY(id_estado) REFERENCES estado (id);

ALTER TABLE fornecedor
ADD FOREIGN KEY(id_cidade) REFERENCES cidade (id);

ALTER TABLE usuario 
ADD CONSTRAINT unique_usuario_email unique (email);

ALTER TABLE produto
ADD FOREIGN KEY(id_fornecedor) REFERENCES fornecedor (id);

ALTER TABLE produto
ADD FOREIGN KEY(id_grupo) REFERENCES grupo_produto (id);

ALTER TABLE produto
ADD FOREIGN KEY(id_local_armazenamento) REFERENCES local_armazenamento (id);

ALTER TABLE produto
ADD FOREIGN KEY(id_marca) REFERENCES marca_produto (id);

ALTER TABLE produto
ADD FOREIGN KEY(id_unidade_medida) REFERENCES unidade_medida (id);