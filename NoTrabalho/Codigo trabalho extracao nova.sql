/*  SOLICITAÇÃO

Solicito listagem das operações enviadas, do time comercial ao time de onbaording no mês de março e qual foi o onboarding que recebeu a operação, em seguida, quando foi enviado para a formalização

Informações que preciso
cod_processo
cod solicitacao onboarding
data abertura onboarding
data fechamento onboarding
transferencia onboarding
cod_solicitante onboarding
nome_solicitante onboarding
cod_atendente onboarding
nome_atendente onboarding
cod solicitacao formalizacao
data abertura formalizacao
data fechamento formalizacao
transferencia formalizacao
nome solicitante formalizacao
nome atendente formalizacao

tabela principal a ser usada  = us_dw..Fat_Esteira_Solicitacoes_N_AGR as fat
onboarding é serviço 9
formalização é o serviço 23
*/



use us_dw


----------------------------------
-- CRIAÇÃO DE TABELA TEMPORARIA ONBOARDING

IF OBJECT_ID ('TEMPDB.DBO.#BASE_TELS_AG') IS NOT NULL DROP TABLE #Onboarding

select top 5
		f.cod_processo,
		f.cod_solicitacao,
		convert (varchar, f.dat_abertura, 103)		as Data_Abertura,
		convert (varchar, f.dat_fechamento, 103)	as Data_Fechamento,
		f.transferencia,
		f.cod_atendente,
		du.nom_usuario								as nome_atendente,
		f.cod_solicitante,
		da.nom_usuario								as nome_solicitante

		

from Fat_Esteira_Solicitacoes_N_AGR f
left join dim_usuario du							on f.cod_atendente = du.cod_usuario
left join dim_usuario da							on f.cod_solicitante = da.cod_usuario
	where cod_servico = 9

----------------------------------
-- CRIAÇÃO DE TABELA TEMPORARIA FORMALIZACAO

IF OBJECT_ID ('TEMPDB.DBO.#BASE_TELS_AG') IS NOT NULL DROP TABLE #Formalizacao


select top 5
		f.cod_solicitacao,
		convert (varchar, f.dat_abertura, 103)		as Data_Abertura,
		convert (varchar, f.dat_fechamento, 103)	as Data_Fechamento,
		f.transferencia,
		du.nom_usuario								as nome_atendente,
		da.nom_usuario								as nome_solicitante

from Fat_Esteira_Solicitacoes_N_AGR f
left join dim_usuario du							on f.cod_atendente = du.cod_usuario
left join dim_usuario da							on f.cod_solicitante = da.cod_usuario
	where cod_servico = 23




	/*

	UTILIZAÇÃO PARA BUSCAR DE INFORMAÇÕES


select top 5 * from Fat_Esteira_Solicitacoes where cod_processo = '45'


SELECT t.TABLE_SCHEMA, t.TABLE_NAME, c.COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS c
JOIN INFORMATION_SCHEMA.TABLES t ON c.TABLE_NAME = t.TABLE_NAME
WHERE c.COLUMN_NAME LIKE '%atendente%'


select distinct cod_atendente from Fat_Esteira_Solicitacoes_N_AGR

select top 50 * from Dim_Usuario



