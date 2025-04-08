#TRIM

-- caso queira remover algum caractere, por exemplo um espaço ou outra coisa.

select 
    trim ('CPF: 123.456.789-00', 'CPF: '),
    -- ou se quiser remover apenas no inicio ou no final, podemos usar o ltrim ou rtrim
    rtrim ('CPF: 123.456.789-00', 'CPF: '),
    rtrim ('CPF: 123.456.789-00', 'CPF: '),
    trim ('***(31) 9 9843-8235***', '*') as telefone,
    trim ('        RJ              ', ' ') as cidade
