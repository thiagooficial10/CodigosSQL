/*DEMANDA
Realizar duas extrações 
Layout do arquivo:, critério de coletivo, 
1 - Extração: realiza a extração de todos os processo que contenham o numero de processo 5000343-16.2013.8.24.0064 e 
sejam do tribunal TJSC (Validar numero processos ou numero do precatório)


2 - Extração: realizar a extração de todos os processos que podem ser considerados como coletivos no sistema, vide regra baixo:
numero do processo que se repetem + de 10X
numero de precatorio que se repetem + de 10X
flag de processo coletivo marcada
*/
EM ANALISE

select
			pr.cod_processo,
			pr.num_processo, 
			pr.num_precatorio,
			f.vlr_bruto,
			f.vlr_proposta,
			op.dsc_esfera,
			pr.nom_estado,
			m.nom_municipio,
			pr.status_parecer,			
			pe.dsc_pessoa,
			pe.num_documento,
			op.dsc_operacao,
			pe.data_nascimento,
			pr.nom_advogado,
 case
        when dac.cpf is not null and dac.cpf not in ('a regularizar', 'não informado') then dac.cpf
        when dac.cpf is null and dac.cnpj is not null and dac.cnpj not in ('a regularizar', 'não informado') then dac.cnpj
        when dac.cnpj is not null and dac.cnpj not in ('a regularizar', 'não informado') then dac.cnpj
        else dac.cpf
    end as documento_advogado

from Fat_Esteira_Solicitacoes_N_AGR f
left join Dim_Processo pr							on f.cod_processo				= pr.cod_processo
left join Dim_Operacao op							on f.cod_operacao				= op.cod_operacao
left join Dim_Pessoa pe								on f.cod_pessoa					= pe.cod_pessoa
left join Fat_Carteira_Processos fc					on f.cod_operacao				= fc.cod_operacao
left join Dim_Municipio m							on fc.sk_municipio_operacao		= m.sk_municipio
left join Fat_Advogados_Processos fp				on f.cod_operacao				= fp.cod_operacao
left join Dim_Advogado_Cliente dac					on fp.cod_advogado_Cliente		= dac.cod_advogado_cliente
where pr.num_processo = '5000343-16.2013.8.24.0064'
and pr.nom_estado = 'Santa Catarina'

/*
select distinct nom_estado from Dim_Processo 

SELECT t.TABLE_SCHEMA, t.TABLE_NAME, c.COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS c
JOIN INFORMATION_SCHEMA.TABLES t ON c.TABLE_NAME = t.TABLE_NAME
WHERE c.COLUMN_NAME LIKE '%adv%'

Dim_Advogado_Cliente

select  from Dim_Processo
