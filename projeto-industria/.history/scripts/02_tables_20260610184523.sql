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
)