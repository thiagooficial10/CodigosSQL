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

-- SELECIONA A TABELA CUSTOMERS, PEGA A COLUNA FIRST_NAME, NOME QUE COMEÇA COM LETRA 'M' E TERMINA COM 'O'
select * from teste.customers
where first_name like 'M%' and first_name like '%o'
--OUTRA OPÇÃO É ESSE ABAIXO, FAZ A MESMA COISA
select * from teste.customers
where first_name like 'M%o' 
