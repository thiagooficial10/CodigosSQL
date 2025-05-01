#replace

-- SUBSTITUI UMA PALAVRA POR OUTRA
SELECT 
    REPLACE (name, "/New Jersey NY/NJ", " NY")
FROM bigquery-public-data.thelook_ecommerce.distribution_centers
---------------------------------------------------------------------------------------------

--Se você tiver uma tabela chamada produtos com uma coluna descricao:

SELECT REPLACE(descricao, 'velho', 'novo') AS nova_descricao
FROM produtos;
--Isso substitui a palavra 'velho' por 'novo' em todas as descrições.
