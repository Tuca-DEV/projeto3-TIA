function [distanciaTotal] = caixeiroViajante(OrdemCidadesVisitadas, DistCidades)

  for i=1:length(OrdemCidadesVisitadas)

    distanciaTotal(i) = 0;
    pos1 = OrdemCidadesVisitadas(i,1);

    for j=1:length(OrdemCidadesVisitadas)-1

      pos2 = OrdemCidadesVisitadas(i,j+1);
      distanciaTotal(i) += DistCidades(pos1, pos2);
      pos1 = pos2;

    endfor

  endfor

  disp(distanciaTotal');

endfunction
