function [filhosMutados] = mutacao(m)

  probabilidade = 0;
  filhosMutados = m;
  for i = 1:2
    probabilidade = rand();
    if(probabilidade > 0.95)
      sel = randperm(7)
      filhosMutados(i, sel(1)) = m(i, sel(2));
      filhosMutados(i, sel(2)) = m(i, sel(1));

      filhosMutados(i, 8) = filhosMutados(i, 1); % Garantindo que a última cidade é a mesma que a primeira
    endif
  endfor


endfunction
