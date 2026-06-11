-- Active: 1781127632164@@127.0.0.1@3307@techfactory_db

CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(100) NOT NULL,
    local_departamento VARCHAR(100) NOT NULL
);

CREATE TABLE Colaborador (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    cpf_colaborador BIGINT NOT NULL UNIQUE,
    email_colaborador VARCHAR (100) NOT NULL,
    cargo_colaborador VARCHAR(80) NOT NULL,
    data_admissao DATE NOT NULL
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

CREATE TABLE CATEGORIA(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100)
);


CREATE TABLE Equipamentos (
    id_equipamento INT PRIMARY KEY AUTO_INCREMENT,
    patrimonio_equipamento BIGINT NOT NULL UNIQUE,
    descricao_equipamento VARCHAR(100) NOT NULL,
    fabricante_equipamento VARCHAR(100) NOT NULL,
    modelo_equipamento VARCHAR(100) NOT NULL,
    data_aquisicao DATE NOT NULL,
    status_equipamento ENUM (colocar depois)
    id_categoria INT
    id_fornecedor INT
);

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    razao_social VARCHAR(100) NOT NULL,
    cnpj_fornecedor BIGINT NOT NULL UNIQUE,
    telefone_fornecedor CHAR(15),
    cidade_fornecedor VARCHAR(100)
);

