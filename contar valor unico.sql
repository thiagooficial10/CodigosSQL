-- Conta quantas vezes cada valor único da coluna "CODIGO" aparece na tabela "emx_incidentes" e em seguida ordena esses resultados pela coluna "CODIGO"

SELECT CODIGO, COUNT(*) AS Quantidade
FROM emx_incidentes
GROUP BY CODIGO
HAVING COUNT(*) > 1
ORDER BY CODIGO;
