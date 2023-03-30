% Main para Elitismo
caminho = init_caminho();
populacao = populacaoInit();
i = 0;
melhor_da_geracao = zeros(1,2);
do
   populacao
   %Cálculo das distâncias totais de cada indivíduo
   i++;
   distanciaCidades = distanciaTotal(populacao, caminho)
   melhor_da_geracao(1, i) = min(distanciaCidades)

   %Seleção -> Cruzamento -> Mutação -> Inserção
   pais = roleta(distanciaCidades)
   filhos = crossOver(pais, populacao);
   filhos = mutacao(filhos)
   populacao(16:17, :) = filhos;

   %Remoção dos 2 piores caminhos
   for c = 1:2
     distanciaCidades = distanciaTotal(populacao, caminho);
     populacao(menosApto(distanciaCidades), :) = [];
   endfor
until(melhor_da_geracao(i) <= 10)

[valor, indice] = min(distanciaCidades);
disp('O melhor caminho é: ')
populacao(indice, :)

plot((1:length(melhor_da_geracao)), melhor_da_geracao)

