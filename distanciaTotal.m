function [distancia] = distanciaTotal(OrdemCidadesVisitadas, tabela_distancias)

  distancia = 0;

  for i = 1:(length(OrdemCidadesVisitadas)-1);

    cidade1 = OrdemCidadesVisitadas(i);
    cidade2 = OrdemCidadesVisitadas(i+1);
    distancia += tabela_distancias(cidade1, cidade2);

  endfor

  disp(distancia);

endfunction
