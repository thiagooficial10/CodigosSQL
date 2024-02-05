# UTILIZANDO O BETWEEN
# selecionando toda a tabela payment
# onde amount é igual ou maior que 1.99 E menor ou igual a 3.99
#vantagens do between é um codigo mais limpo

select * from payment
where amount between 1.99 AND 3.99
