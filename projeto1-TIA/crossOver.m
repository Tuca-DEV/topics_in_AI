function [filhos] = crossOver(pais, popu)
  %pais é um vetor de 1 dimensão que contém o endereço(n° da linha) dos pais na população

  %Cruzando a primeira metade
  aux = popu(pais(1), 1:3);
  popu(pais(1), 1:3) = popu(pais(2), 1:3);
  popu(pais(2), 1:3) = aux;
  %disp('Cruzado')

  filhos(1, :) = popu(pais(1), :);
  filhos(2, :) = popu(pais(2), :);
endfunction
