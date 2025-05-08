--Esse comando atualiza a coluna amount do registro com payment_id = 1 na tabela payment, definindo o valor como 15.99.

UPDATE payment 
SET
	amount = 15.99
WHERE
	payment_id = 1
