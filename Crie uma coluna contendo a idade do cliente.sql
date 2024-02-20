-- Criacao de coluna calculada
-- Crie uma coluna contendo a idade do cliente
-- CURRENT_DATE PEGA A DATA ATUAL


select email, data_nascimento
(current_date - data_nascimento) / 365 as [idade cliente]
from sales.customers
