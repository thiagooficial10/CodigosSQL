--# SOBRE O OPERADOR LIKE
--#buscando toda a tabela de actor
--#onde o first_name precisa INICIAR com a LETRA AL

select * from actor
where first_name LIKE 'AL%'



--# NOVO EXEMPLO LIKE
--#buscando toda a tabela de actor
--#onde o first_name precisa FINALIZAR com a LETRA AL

select * from actor
where first_name LIKE '%AL'
