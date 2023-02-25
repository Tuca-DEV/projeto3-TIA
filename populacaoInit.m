function [populacao] = populacaoInit()
  %Função que gera soluções aleatórias para o problema do caixeiro viajante
  populacao = zeros(15,8);

  for i = 1:15
    populacao(i,1:end-1) = randperm(7);
    populacao(i,end) = populacao(i,1);
  endfor

endfunction
