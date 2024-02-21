-- selecionar veiculos que custam entre 100k e 200k


--geralmente usamos assim
select * from sales.products
where preco >= 100000 and preco <= 200000



-- Com BETWEEN fica assim

select * from sales.products
where preco between 100000 and 200000



-- vantagem codigo mais limpo 
