-- conversao de texto em numero (mesma coisa do texto em data)
-- subtração de 100 - 10 sem passar tabela ou coluna, transformando o texto em numero

/*'100' e '10' são strings (textos).
::numeric converte cada uma dessas strings em um número do tipo numeric (ponto flutuante com precisão arbitrária).
Depois da conversão, faz a subtração: 100 - 10 = 90*/
  
select '100'::numeric - '10'::numeric
