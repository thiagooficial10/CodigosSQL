-- conversao de texto em data utilizando operador ::

-- selecionando direto a data sem passar pela coluna e tabela
select '2021-10-01'::date - '2021-02-01'::date


-- selecionando a coluna e a tabela e transformando a coluna de texto em data
select nome_coluna::date
from nome_tabela
