-- Informe qual o produto mais caro da tabela e que mostre tambem as informações dele

-- primeiro exemplo seria para trazer o maior preço, mas nao viria mais nenhuma informação
select max (preco) from sales.products


-- exemplo dois puxa o maior preço junto com outras informações utilizando subquerie
select * from sales.products
where preco = (select max (preco) from sales.products)
