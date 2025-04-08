select 
    split('A paz não pode ser mantida à força. Ela só pode ser alcançada através da compreensão',' ')



  
-- OLHANDO QUANTOS DOMINIOS EU TENHO NA BASE, PEGANDO APENAS A SEGUNDA PARTE, OU SEJA, DEPOIS DO @
select distinct
    split (email, '@') [ordinal(2)]
FROM `bigquery-public-data.thelook_ecommerce.users`
