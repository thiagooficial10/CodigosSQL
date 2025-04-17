-- Uniao simples de duas tabelas
-- union all (QUANDO VOCE SABE QUE NAO EXISTE VALORES DUPLICADOS)
-- union (CASO EXISTA VALORES DUPLICADOS)


select * from venda_produtos
union
select * from produtos


-- Tabela A
SELECT 'Maçã' AS fruta
UNION
SELECT 'Maçã' AS fruta;
-- Resultado: 1 linha (Maçã)

-- Tabela B
SELECT 'Maçã' AS fruta
UNION ALL
SELECT 'Maçã' AS fruta;
-- Resultado: 2 linhas (Maçã, Maçã)
