caminho = init_caminho();
populacao = populacaoInit();
distanciaCidades = distanciaTotal(populacao, caminho);
pais = elitismo(distanciaCidades);
filhos = crossOver(pais, populacao)
