#seleciono as colunas customer_id e amount
# faço o calculo reduzindo o valor do proprio valor * 10 (entre parenteses para multiplicar primeiro)
# AS é para CRIAR O TEXTO TITULO '10% de desconto'
# from da tabela payment
# where será onde customer_id for igual a 1

select customer_id, amount,
amount - (amount * 0.10) AS '10% de desconto'
from payment
where customer_id = 1
