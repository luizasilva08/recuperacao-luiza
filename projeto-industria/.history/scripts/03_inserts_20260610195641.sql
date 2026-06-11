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
('Raíssa', '12345678902', 'Raissa@techfactory.com', 'Supervisor', '2024-06-07', 4 ), -- 3
('Maiara', '12345678903', 'Maiara@techfactory.com', 'Operador', '2026-06-10', 1 ), -- 4
('Bruno', '12345678904', 'Bruno@techfactory.com', 'Chefe', '2023-11-13', 2 ), -- 5
('Cleiton', '12345678905', 'Cleiton@techfactory.com', 'Supervisor', '2023-05-02', 2 ), -- 6
('Sabrina', '12345678906', 'Sabrina@techfactory.com', 'Chefe', '2025-09-20', 3 ); -- 7

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
('123456789', 'Computador', 'Computador branco com processador intel i5', 'Acer', 'Plus', '2024-04-01', 'BOM ESTADO', 1, 1, 5), -- 1
('234567891', 'Impressora', 'Impressora branca com cartucho de tinta', 'HP', 'Prime', '2020-05-12', 'MAU ESTADO', 3, 4, 7), -- 2
('345678912', 'Tablet Industrial', 'Tablet utilizado na fábrica', 'Samsung', 'A15', '2023-07-07', 'BOM ESTADO', 4, 1, 1), -- 3
('456789123', 'Coletor de Dados', 'Máquina coletora de dados RFID', 'Colector MZ', 'TAG', '2026-02-18', 'BOM ESTADO', 4,3,4), -- 4
('567891234', 'Switch', 'Switch com 10 portas', 'Cisco', '2.0', '2020-05-12', 'MAU ESTADO', 2, 5, 5); -- 5

INSERT INTO Chamado (data_abertura, descricao_problema, 
prioridade_chamado, status_chamado, data_encerramento,
id_colaborador, id_equipamento)
VALUES
('2025-01-08', 'Tablet Industrial com tela quebrada', 'ALTA', 'FECHADO', '2025-01-15', 1, 3), -- 1
('2025-03-03', 'Coletor de dado RFID não funcionando', 'MÉDIA', 'FECHADO', '2025-03-24', 4, 4), -- 2
('2026-05-29', 'Switch sem conexão com a rede', 'ALTA', 'ABERTO', NULL, 5, 5), -- 3
('2025-09-07', 'Computador com problema no HD', 'ALTA', 'FECHADO', '2025-09-12', 5, 5), -- 4
('2026-06-10', 'Impressora não devolve o papel', 'BAIXA', 'ABERTO', NULL, 7, 2);

INSERT INTO Manutencao (data_manutencao, descricao_manutencao, tempo_manutencao
custo_manutencao, id_chamado)
VALUES
(1)

