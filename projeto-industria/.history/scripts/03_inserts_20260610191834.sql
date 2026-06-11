-- Active: 1781127632164@@127.0.0.1@3307@techfactory_db

INSERT INTO Departamento (nome_departamento, local_departamento)
VALUES
('Produção', 'Sul'), -- 1
('Engenharia', 'Norte'), -- 2
('Qualidade', 'Sudeste'), -- 3
('Logística', 'Leste'), -- 4
('Tecnologia da Informação', 'Oeste'); -- 5

INSERT INTO Colaborador (nome_colaborador, cpf_colaborador, email_colaborador, cargo_colaborador, data_admissao, id_departamento)
VALUES
('Paula', '12345678900', 'Paula@techfactory.com', 'Operador', '2023-05-02', 1 ),
('Junior', '12345678901', 'Junior@techfactory.com', 'Chefe', '2020-03-10', 5 ),
('Raíssa', '12345678902', 'Raissa@techfactory', 'Supervisor', '2024-06-07', 4 ),
('Maiara', '12345678903', 'Maiara@techfactory', 'Operador', '2026-06-10', 1 ),
('Bruno', '12345678904', 'Bruno@techfactory', 'Operador', '2023-05-02', 1 ),
('Paula', '12345678900', 'Paula@techfactory', 'Operador', '2023-05-02', 1 ),