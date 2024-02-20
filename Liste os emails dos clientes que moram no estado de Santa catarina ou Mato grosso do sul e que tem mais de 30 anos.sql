--Liste os emails dos clientes que moram no estado de Santa catarina OU Mato grosso do sul  e que tem mais de 30 anos
-- estou pegando por data de nascimento pois não tenho uma coluna com idade

select email, state, data_nascimento
from sales.customers
where = 'SC' or state = 'MTS'
and data_nascimento < '1994-02-20'
