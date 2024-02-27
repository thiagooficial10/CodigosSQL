-- Calcule o nº de clientes que ganham abaixo de 5k, entre 5k e 10k, e entre 10k e 15k e acima de 15k
-- Primeira coisa criando o WITH para calcular a renda dos clientes

-- criacao do with
with faixa_de_renda as (
  select renda,
-- O case serve para caso a renda seja
  case
    when renda < 5000 then 'Cliente ganha de 0 a 5k'
    when renda >= 5000 and renda < 10000 then 'Cliente ganha entre 5k e 10k'
    when renda >= 100000 and renda < 15000 then 'Cliente ganha entre 10k e 15k'
--caso nao esteja nos parametros acima, utilizo o else para finalizar avisando que ele esta acima dos 15k
    else 'acima de 15k+'
-- end as serve para finalizar e nomear esse nova coluna chamada "faixa_renda"
  end as faixa_renda
  
  from sales.customers
----------------------------------------------------
-- SEGUNDA ETAPA PARA APRENSENTAR O RESULTADO

  -- abaixo estou selecionando a faixa_renda e contando quantos clientes estao naquela faixa do case when
  select faixa_renda, count (*)
  from faixa_de_renda
-- por ultimo estou agrupando para saber a quantidade de clientes ganham na faixa do case when
  group by faixa_renda
