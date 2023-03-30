disp('Primeira população/geração')
populacaoInit = populacao()
melhor_da_geracao = zeros(1,10);

for i=1:10
  populacaoDec = convertBinToDec(populacaoInit, 10)
  melhor_da_geracao(i) = max(populacaoDec);
  paisAptos = elitismo(populacaoDec);
  filhos = crossOver(paisAptos,populacaoInit);
  filhosMutados = mutacao(filhos);
  populacaoInit(11,:) = filhosMutados(1,:);
  populacaoInit(12,:) = filhosMutados(2,:);
  disp('População com os novos filhos')
  populacaoInit
  populacaoDec = convertBinToDec(populacaoInit, 12);
  populacaoInit(menosApto(populacaoDec), :) = [];
  populacaoDec = convertBinToDec(populacaoInit, 11);
  populacaoInit(menosApto(populacaoDec), :) = [];
  disp('População depois de eliminar os fracos')
  populacaoInit
endfor

plot((0:9), melhor_da_geracao)


