-- ATENÇÃO
-- NECESSARIO SEPARAR AS CONDIÇÕES OR E AND, POIS SE NAO O SQL IRÁ LER APENAS O RIO GRANDE DO SUL COM EMAIL NAO SENDO NULO
-- BAHIA VIRÁ COM EMAIL NULO, POR ISSO NECESSARIO O PARENTESES

select * from teste.customers
where (state = 'Bahia' or state = 'Rio Grande do Sul') and email is not null;


--FAÇA O TESTE E VEJA A DIFERENÇA
select * from teste.customers
where state = 'Bahia' or state = 'Rio Grande do Sul' and email is not null;
