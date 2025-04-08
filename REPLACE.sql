#replace

-- SUBSTITUI UMA PALAVRA POR OUTRA
SELECT 
    REPLACE (name, "/New Jersey NY/NJ", " NY")
FROM bigquery-public-data.thelook_ecommerce.distribution_centers
