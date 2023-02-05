caminho = init_caminho();
populacao = populacaoInit(caminho);
distanciaCidades = distanciaTotal(populacao, caminho);
pais = elitismo(distanciaCidades);
filhos = crossOver(pais, populacao)