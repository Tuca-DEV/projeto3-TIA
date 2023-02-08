distanciaCidades = distanciaTotal(populacao, caminho);
pais = elitismo(distanciaCidades);
filhos = crossOver(pais, populacao)


%%%%%%%%%%%%%%%%%%%%%%
caminho = init_caminho();
populacao = populacaoInit();
melhor_da_geracao = 0;
i = 1;

while (melhor_da_geracao > 20)
  distanciaCidades = distanciaTotal(populacao, caminho);
   melhor_da_geracao(i) = max(distanciaCidades);
   
   i++ 
endwhile


plot((1:length(melhor_da_geracao)), melhor_da_geracao)

