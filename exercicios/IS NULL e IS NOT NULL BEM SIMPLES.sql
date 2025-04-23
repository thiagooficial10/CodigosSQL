--retornar todos os usuarios que a rua É NULA

select * from teste.customers
where street is null;

-- retornar todos os usuario que a rua ESTÁ PREENCHIDA

select  * from teste.customers 
where street is not null;
