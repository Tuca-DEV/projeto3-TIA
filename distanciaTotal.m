function [distancia] = distanciaTotal(populacao, tabela_distancias)

  [linhas, colunas] = size(populacao);

  for i = 1:linhas
    distancia(i) = 0;
    for j = 1:(colunas-1)
      distancia(i) += tabela_distancias(populacao(i, j), populacao(i, j+1));
    endfor
  endfor

endfunction
