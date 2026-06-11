-- Active: 1781127632164@@127.0.0.1@3307@techfactory_db

-- 1
SELECT nome_departamento
FROM Departamento;

-- 2

SELECT nome_colaborador, cargo_colaborador, email_colaborador
FROM Colaborador;

-- 3

SELECT patrimonio_equipamento, descricao_equipamento, fabricante_equipamento
FROM Equipamento;

-- 4 

SELECT descricao_equipamento, status_equipamento
FROM Equipamento;

-- 5
SELECT nome_colaborador
FROM Colaborador
WHERE data_admissao>'2023-09-09';

-- 6
