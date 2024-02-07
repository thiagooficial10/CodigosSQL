--# SOBRE O REGEXP
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA A, D OU R


select * from actor
where first_name regexp '^A|^D |^R'



--# SOBRE O REGEXP
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA G e depois contem a letra A
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA C e depois contem a letra A
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA R e depois contem a letra A


select * from actor
where first_name regexp '^[gcr]a'
