-- TRES FORMAR DE FAZER, A PRIMEIRA CONTANTO TODAS AS LINHAS
-- A SEGUNDA CONTANTO OS ID
-- A TERCEIRA CONTANTO OS ID DISTINTOS, PARA TER CERTEZA QUE NAO ESTA DUPLICADO

SELECT 
      count (*) as quantidade_usuarios,
      count (id) as quantidade_2,
      count (distinct id) as quantidade_3

 FROM `bigquery-public-data.thelook_ecommerce.users`
