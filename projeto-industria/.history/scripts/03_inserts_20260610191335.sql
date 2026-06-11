-- Active: 1781127632164@@127.0.0.1@3307@techfactory_db

INSERT INTO Departamento (nome_departamento, local_departamento)
VALUES
('Produção', 'Sul'), -- 1
('Engenharia', 'Norte'), -- 2
('Qualidade', 'Sudeste'), -- 3
('Logística', 'Leste'), -- 4
('Tecnologia da Informação', 'Oeste');

INSERT INTO Colaborador (nome_colaborador, cpf_colaborador, email_colaborador, cargo_colaborador, data_admissao, id_departamento)