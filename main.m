caminho = init_caminho();
populacao = populacaoInit();
i = 0;
melhor_da_geracao = inf(1,50);
do
   populacao
   %Cálculo das distâncias totais de cada indivíduo
   i++;
   distanciaCidades = distanciaTotal(populacao, caminho)
   melhor_da_geracao(i) = min(distanciaCidades)

   %Seleção -> Cruzamento -> Mutação -> Inserção
   pais = elitismo(distanciaCidades)
   filhos = crossOver(pais, populacao);
   filhos = mutacao(filhos)
   populacao(16:17, :) = filhos;

   %Remoção dos 2 piores caminhos
   for c = 1:2
     distanciaCidades = distanciaTotal(populacao, caminho);
     populacao(pais(1,c), :) = [];
   endfor
until(melhor_da_geracao(i) < 11)


plot((1:length(melhor_da_geracao)), melhor_da_geracao)

