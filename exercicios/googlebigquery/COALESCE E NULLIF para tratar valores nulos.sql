/*
 Ache a tabela “users” no dataset “thelook_ecommerce”, no projeto de dados 
públicos do BigQuery. Traga como resultado um único campo distinto com as 
informações de forma organizada dos campos street_address + city + state + 
country + postal_code.

UTILIZEI O COALESCE PARA TRATAR VALORES NULOS, DE PRIMEIRA NAO FUNCIONOU POIS OS CAMPOS SAO STRING E O COALESCE NAO FAZ ESSA TRATATIVA, APENAS VALORES NULOS.
ENTAO UTILIZEI O NULLIF PARA CONVERTER STRING NULL EM NULL MESMO.
O CONCAT USEI PARA CONCATENAR OS CAMPOS

*/

select 
    distinct id,
    CONCAT(
        'Endereço: ', COALESCE(NULLIF(street_address, 'null'), 'Não preencheu'), 
        ' Cidade: ', COALESCE(NULLIF(city, 'null'), 'Não preencheu'), 
        ' Estado: ', COALESCE(NULLIF(state, 'null'), 'Não preencheu'), 
        ' País: ', COALESCE(NULLIF(country, 'null'), 'Não preencheu'), 
        ' Cep: ', COALESCE(NULLIF(postal_code, 'null'), 'Não preencheu')) AS endereco
from bigquery-public-data.thelook_ecommerce.users
