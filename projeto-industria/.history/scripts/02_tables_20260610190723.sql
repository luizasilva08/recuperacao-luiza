-- Active: 1781127632164@@127.0.0.1@3307@techfactory_db

CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(100) NOT NULL,
    local_departamento VARCHAR(100) NOT NULL
);

CREATE TABLE Colaborador (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    cpf_colaborador BIGINT NOT NULL UNIQUE,
    email_colaborador VARCHAR (100) NOT NULL UNIQUE,
    cargo_colaborador VARCHAR(80) NOT NULL,
    data_admissao DATE NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Categoria(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100)
);

CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    razao_social VARCHAR(100) NOT NULL,
    cnpj_fornecedor BIGINT NOT NULL UNIQUE,
    telefone_fornecedor CHAR(15),
    cidade_fornecedor VARCHAR(100) NOT NULL
);

CREATE TABLE Equipamento (
    id_equipamento INT PRIMARY KEY AUTO_INCREMENT,
    patrimonio_equipamento BIGINT NOT NULL UNIQUE,
    descricao_equipamento VARCHAR(100) NOT NULL,
    fabricante_equipamento VARCHAR(100) NOT NULL,
    modelo_equipamento VARCHAR(100) NOT NULL,
    data_aquisicao DATE NOT NULL,
    status_equipamento ENUM ('BOM', 'MAU ESTADO'),
    id_categoria INT,
    id_fornecedor INT,
    id_colaborador INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador)
);

CREATE TABLE Chamado (
    id_chamado INT PRIMARY KEY AUTO_INCREMENT,
    data_abertura DATE NOT NULL,
    descricao_problema TEXT NOT NULL,
    prioridade_chamado ENUM ('ALTA', 'MÉDIA', 'BAIXA') NOT NULL,
    status_chamado ENUM ('ABERTO', 'FECHADO') NOT NULL,
    data_encerramento DATE NOT NULL,
    id_colaborador INT,
    id_equipamento INT,
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador),
    FOREIGN KEY (id_equipamento) REFERENCES Equipamento(id_equipamento)
);

CREATE TABLE Manutencao (
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    data_manutencao DATE NOT NULL,
    descricao_manutencao TEXT NOT NULL,
    tempo_manutencao TIME NOT NULL,
    custo_manutencao DECIMAL(10, 2),
    id_chamado INT,
    FOREIGN KEY (id_chamado) REFERENCES Chamado(id_chamado)
);





