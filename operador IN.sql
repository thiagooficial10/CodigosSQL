--#UTILIZANDO O IN
--# selecionando toda a tabela address
--# onde distrito tem que ser igual a alberta, texas e california


select * from address
where district IN ('alberta', 'texas', 'california')
