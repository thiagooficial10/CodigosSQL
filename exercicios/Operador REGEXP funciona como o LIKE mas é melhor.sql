--# SOBRE O REGEXP
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA A, D OU R

select * from actor
where first_name regexp '^A|^D |^R'

--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA G e depois contem a letra A
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA C e depois contem a letra A
--#PEGA A COLUNA FIRST_NAME E LISTA TODOS OS ATORES QUE INICIAM COM A LETRA R e depois contem a letra A

select * from actor
where first_name regexp '^[gcr]a'
-----------------------------------------------------------------------------
/*A cláusula REGEXP (abreviação de regular expression, ou expressão regular) no SQL é usada para realizar comparações de padrão 
avançadas em colunas de texto. É semelhante ao LIKE, mas muito mais poderoso, pois permite combinar padrões complexos usando expressões 
regulares.
*/

--Buscar palavras que começam com "a":
SELECT nome
FROM pessoas
WHERE nome REGEXP '^a';
--(^a significa "começa com a")
------------------------------------------------------------------
--Buscar palavras que terminam com "z":
SELECT nome
FROM pessoas
WHERE nome REGEXP 'z$';
--(z$ significa "termina com z")
--------------------------------------------------------------
--Buscar nomes que contenham números:
SELECT nome
FROM pessoas
WHERE nome REGEXP '[0-9]';
--------------------------------------------------------------

--Buscar nomes que tenham "ana" ou "maria":
SELECT nome
FROM pessoas
WHERE nome REGEXP 'ana|maria';
--(| funciona como "ou")
