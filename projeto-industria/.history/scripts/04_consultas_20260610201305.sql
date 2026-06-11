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
SELECT nome_equipamento
FROM Equipamento
WHERE data_aquisicao>'2023-09-09';

-- 7

SELECT razao_social
FROM Fornecedor 
WHERE cidade_fornecedor='São Paulo';

-- 8

SELECT E.nome_equipamento
FROM Equipamento AS E
JOIN Categoria AS C ON E.id_categoria=C.id_categoria
WHERE C.nome_categoria='Mobilidade';

-- 9
SELECT nome_colaborador
FROM Colaborador
WHERE cargo_colaborador = 'Chefe';

-- 10
SELECT razao_social
FROM Fornecedor
WHERE telefone_fornecedor IS NOT NULL;

-- 11
SELECT nome_equipamento
FROM Equipamento
WHERE descricao_equipamento LIKE '%branc%'