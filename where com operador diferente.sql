--#seleciono a coluna amout na tabela payment
--# onde amount seja diferente de 0.99, ou seja, (nao vai mostrar o 0.99)

select amount from payment 
where amount != 0.99
