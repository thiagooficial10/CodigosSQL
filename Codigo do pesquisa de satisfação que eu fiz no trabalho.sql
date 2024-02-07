
-- SELECIONANDO AS COLUNAS

SELECT
    i.emx_incidentes_id,
    i.codigo,
    i.emx_responsavel1,
    i.gm_area_id,
    pc.emx_pesquisa_chamados_id,
    pc.emx_data_conclusao AS pc_emx_data_conclusao,
    pc.emx_respondida AS pc_emx_respondida,
    ri.emx_obs AS ri_emx_obs,
    ri.emx_respostas_id,
    ri.emx_respostas_incidente_id,
    ga.gm_desc_area,
    u.nome,
    u.emx_user_id
-- DA TABELA EMX INCIDENTES
FROM
    PJUS..EMX_INCIDENTES i

-- REALIZADO O JOIN PARA BUSCAR OS DADOS DE OUTRAS TABELAS NO BANCO
LEFT JOIN PJUS..emx_pesquisa_chamados pc 
	ON i.emx_incidentes_id = pc.EMX_INCIDENTES_ID

LEFT JOIN PJUS..emx_respostas_incidente ri 
	ON i.emx_incidentes_id = ri.emx_incidentes_id

LEFT JOIN PJUS..gm_area ga 
	ON i.GM_AREA_ID = ga.gm_area_id

LEFT JOIN PJUS..emx_formulario f 
	ON pc.emx_pesquisa_chamados_id = f.EMX_FORMULARIO_ID

LEFT JOIN PJUS..emx_user u 	
	ON i.SOLICITANTE_USER = u.EMX_USER_ID

-- RETIRANDO VALORES NULOS DAS SEGUINTES COLUNAS
WHERE

    pc.emx_data_conclusao IS NOT NULL
    AND pc.emx_respondida IS NOT NULL
    AND ri.emx_incidentes_id IS NOT NULL
    AND solicitante_user IS NOT NULL
    AND u.nome IS NOT NULL
-- RETORNANDO APENAS OS ULTIMOS 4 MESES
    AND pc.emx_data_conclusao >= DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 3, 0)
