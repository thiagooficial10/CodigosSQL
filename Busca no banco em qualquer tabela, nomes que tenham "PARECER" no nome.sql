-- Busca no banco em qualquer tabela, nomes que tenham "PARECER" no nome.
-- Ainda me mostra a coluna, tabela e o banco

SELECT t.TABLE_SCHEMA, t.TABLE_NAME, c.COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS c
JOIN INFORMATION_SCHEMA.TABLES t ON c.TABLE_NAME = t.TABLE_NAME
WHERE c.COLUMN_NAME LIKE '%PARECER%';
