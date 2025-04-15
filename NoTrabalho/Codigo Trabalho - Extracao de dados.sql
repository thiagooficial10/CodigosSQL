DECLARE @data_ini DATETIME = '2024-01-01 00:00:00.000';
DECLARE @data_fim DATETIME = '2024-02-01 00:00:00.000';


-- SELECT PARA EXIBIR O RESULTADO

SELECT
	 distinct [Codigo Processo],
    [Codigo Solicitação],
    [Nome],
    [CPF/CNPJ],
    [Valor Bruto],
    Hunter,
    [Codigo Do Hunter],
    [Data da Solicitação],  
	[Codigo Do Hunter],
	[Data 1 Envio BRL cliente],
	[Data Envio BRL cliente],
	[Data Retorno BRL cliente],
	[Data Recebimento Cedente],
	[Data Conclusão Cedente],
    status_parecer,
    tempo_brl_h,
    tempo_brl_min,
    tempo_cedente_h,
    tempo_cedente_min
FROM (


-- SELECT PARA BUSCAR OS DADOS E TRATA-LOS


SELECT
	s.cod_processo																	AS [Codigo Processo],
    ROW_NUMBER() OVER (PARTITION BY s.cod_processo ORDER BY s.dat_solicitacao) AS RowNum,
    s.cod_solicitacao																AS [Codigo Solicitação],
    pe.dsc_pessoa																	AS [Nome],
    pe.num_documento																AS [CPF/CNPJ],
    FORMAT (s.vlr_bruto, 'c', 'pt-BR')												AS [Valor Bruto],
    u.nom_usuario																	AS Hunter,
    u.cod_usuario																	AS [Codigo Do Hunter],
    CONVERT (DATE, s.dat_solicitacao)												AS [Data da Solicitação],
	CONVERT (DATE, s.dat_1_envio_brl_cliente)										AS [Data 1 Envio BRL cliente],
	CONVERT (DATE, s.dat_envio_brl_cliente)											AS [Data Envio BRL cliente],
	CONVERT (DATE, s.dat_retorno_brl_cliente)										AS [Data Retorno BRL cliente],
	CONVERT (DATE, s.dat_conclusao_cedente)											AS [Data Recebimento Cedente],
	CONVERT (DATE, s.dat_conclusao_cedente)											AS [Data Conclusão Cedente],
    pr.status_parecer,
    s.tempo_brl_h,
    s.tempo_brl_min,
    s.tempo_cedente_h,
    s.tempo_cedente_min
  from us_dw..Fat_Solicitacoes_Cedente s

	LEFT JOIN us_dw..Dim_Processo as pr (NOLOCK) ON s.cod_processo = pr.cod_processo
	LEFT JOIN us_dw..Dim_Pessoa as pe (NOLOCK) ON pe.cod_pessoa = s.cod_pessoa
	LEFT JOIN us_dw..Dim_Usuario as u (NOLOCK) ON u.cod_usuario = s.cod_hunter
	LEFT JOIN us_dw..Fat_Advogados_Processos as fad (NOLOCK) ON fad.cod_processo = s.cod_processo
	--INNER JOIN us_dw..Dim_Advogado_Cliente as ad (NOLOCK) ON ad.cod_advogado_cliente = fad.cod_advogado_Cliente

WHERE
        s.dat_solicitacao >= @data_ini AND s.dat_solicitacao < @data_fim

) AS Subquery
WHERE
    RowNum = 1
ORDER BY
   [Codigo Processo];
