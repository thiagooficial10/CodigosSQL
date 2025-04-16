-- TRES FORMAR DE FAZER, A PRIMEIRA CONTANDO TODAS AS LINHAS
-- A SEGUNDA CONTANDO OS ID
-- A TERCEIRA CONTANDO OS ID DISTINTOS, PARA TER CERTEZA QUE NAO ESTA DUPLICADO

SELECT 
      count (*) as quantidade_usuarios,
      count (id) as quantidade_2,
      count (distinct id) as quantidade_3

 FROM `bigquery-public-data.thelook_ecommerce.users`
