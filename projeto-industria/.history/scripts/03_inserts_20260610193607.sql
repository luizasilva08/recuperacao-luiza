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
('Paula', '12345678900', 'Paula@techfactory.com', 'Operador', '2023-05-02', 1 ), -- 1
('Junior', '12345678901', 'Junior@techfactory.com', 'Chefe', '2020-03-10', 5 ), -- 2
('Raíssa', '12345678902', 'Raissa@techfactory', 'Supervisor', '2024-06-07', 4 ), -- 3
('Maiara', '12345678903', 'Maiara@techfactory', 'Operador', '2026-06-10', 1 ), -- 4
('Bruno', '12345678904', 'Bruno@techfactory', 'Chefe', '2023-11-13', 2 ), -- 5
('Cleiton', '12345678905', 'Cleiton@techfactory', 'Supervisor', '2023-05-02', 2 ); -- 6

INSERT INTO Categoria (nome_categoria)
VALUES
('Computação'), -- 1
('Rede'), -- 2
('Impressão'), -- 3
('Mobilidade'), -- 4
('Servidores'); -- 5

INSERT INTO Fornecedor(razao_social, cnpj_fornecedor, telefone_fornecedor, cidade_fornecedor)
VALUES
('Note Tech', '098765432100', '47911111111', 'São Paulo' ), -- 1
('Servix', '987654321001', '47922222222', 'Curitiba' ), -- 2
('Colector MZ', '876543210012', '47933333333', 'São Paulo' ), -- 3
('Impril S.A.', '765432100123', '47944444444', 'Rio de Janeiro' ), -- 4
('SW Industry', '654321001234', '47955555555', 'Belo Horizonte' ); -- 5

INSERT INTO Equipamento (patrimonio_equipamento, nome_equipamento, descricao_equipamento, 
fabricante_equipamento, modelo_equipamento, data_aquisicao, status_equipamento,
id_categoria, id_fornecedor, id_colaborador)
VALUES 
('123456789', 'Computador', 'Computador branco com processador intel i5', 'Acer', 'Plus', '2024-04-01', 'BOM ESTADO', 1, 1, 5 );