-- Criação das Tabelas
CREATE DATABASE gerenciamento_cinema;
USE gerenciamento_cinema;

CREATE TABLE cinema (
    id_cinema INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE sala (
    id_sala INT PRIMARY KEY,
    capacidade INT NOT NULL,
    id_cinema INT NOT NULL,
    FOREIGN KEY (id_cinema) REFERENCES cinema(id_cinema)
);

CREATE TABLE filme (
    id_filme INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    genero VARCHAR(50),
    classificacao VARCHAR(2),
    CHECK (classificacao in ('L', '10', '12', '14', '16', '18'))
);

CREATE TABLE sessao (
    id_sessao INT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    id_filme INT NOT NULL,
    id_sala INT NOT NULL,
    FOREIGN KEY (id_filme) REFERENCES filme(id_filme),
    FOREIGN KEY (id_sala) REFERENCES sala(id_sala)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(15),
    UNIQUE(cpf)
);

CREATE TABLE ingresso (
    id_ingresso INT PRIMARY KEY,
    preco DECIMAL(6,2) NOT NULL,
    id_sessao INT NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_sessao) REFERENCES sessao(id_sessao),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    cargo VARCHAR(30) NOT NULL,
    id_cinema INT NOT NULL,
    UNIQUE(cpf),
    FOREIGN KEY (id_cinema) REFERENCES cinema(id_cinema)
);
