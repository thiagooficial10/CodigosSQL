-- declarando uma variavel para nao precisar trocar o numero em toda consulta (alem disso fazendo a verificação em cada tabela de um determinado processo)


declare @processo int = 300183
 

select *
from pjus_replica_2..SolicitacaoDocumento as sd 
where sd.ClassificacaoDocumento= 7 
and sd.IdProcesso = @processo


select *
from us_dw..Fat_Esteira_Solicitacoes_N_AGR
where  cod_servico = 7 
and cod_processo = @processo
 

select * 
from us_dw..Fat_Solicitacoes_Cedente 
where cod_processo = @processo
