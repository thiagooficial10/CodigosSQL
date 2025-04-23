--SELECIONANDO A COLUNA customer_ID, last_name,first_name e somando e selecionando a AMOUNT tanto por valor quanto por quantidade de itens
--TABELA REFERENCIA ONDE TEM MAIS ITENS
--FAÇO O JOIN COM A PAYMENT passando a chave primaria
--AGRUPO POR CUSTOMER_ID
--HAVING SO PODE SER USADO COM O GROUP_BY, POR ISSO COLOQUEI ELE ANTES DO ORDER BY, (VAI ME MOSTRAR VALORES MAIORES QUE 150 NO TOTAL)
--ACRESCENTEI O AND ONDE SIGNIFICA, (e tambem quero) que a quantidade seja maior que 35
--ORDENO DO MAIOR PARA O MENOR


SELECT
    c.customer_id,
    c.last_name AS nome,
    c.first_name AS sobrenome,
    SUM(p.amount) AS total,
    COUNT(p.amount) as quantidade
FROM
    customer c
JOIN
    payment p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id, c.last_name, c.first_name
    HAVING total >=150 AND quantidade >= 35
ORDER BY
    total DESC;



 
