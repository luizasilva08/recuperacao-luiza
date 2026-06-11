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
WHERE descricao_equipamento LIKE '%branc%';

-- 12
SELECT *
FROM Chamado
WHERE status_chamado='FECHADO';

-- 13
SELECT *
FROM Chamado
WHERE prioridade_chamado = 'ALTA';

-- 14
SELECT descricao_equipamento
FROM Equipamento
ORDER BY descricao_equipamento ASC;

-- 15
SELECT nome_equipamento, data_aquisicao
FROM Equipamento
ORDER BY data_aquisicao DESC;

-- 16
SELECT COUNT(id_colaborador) AS total_colaboradores
FROM Colaborador;

-- 17
SELECT COUNT(id_equipamento) AS total_equipamentos
FROM Equipamento;

-- 18
SELECT MIN(data_admissao)
FROM Colaborador;

-- 19
SELECT C.nome_categoria, COUNT(E.id_equipamento)
FROM Equipamento as E
JOIN Categoria AS C ON E.id_categoria=C.id_categoria
GROUP BY nome_categoria;

-- 20
SELECT 



