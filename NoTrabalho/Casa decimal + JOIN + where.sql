/*📌 Resumo Geral
Este código SQL:

Une três tabelas relacionadas por ID do incidente.

Filtra os registros com base no responsável, mês e ano de conclusão.

Converte as notas para decimal e calcula a média com duas casas decimais.*/


	SELECT
    CAST(AVG(CAST(ri.emx_respostas_id AS DECIMAL(10, 2))) AS DECIMAL(10, 2)) AS media_notas
FROM
    emx_incidentes i
JOIN
    emx_pesquisa_chamados pc ON i.emx_incidentes_id = pc.EMX_INCIDENTES_ID
JOIN
    emx_respostas_incidente ri ON i.emx_incidentes_id = ri.emx_incidentes_id
WHERE
    i.emx_responsavel1 = 'thiago ferreira de souza'
    AND MONTH(pc.EMX_DATA_CONCLUSAO) = 1
    AND YEAR(pc.EMX_DATA_CONCLUSAO) = 2024;
