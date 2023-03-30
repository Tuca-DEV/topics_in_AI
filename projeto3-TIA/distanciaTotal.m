function [distancia] = distanciaTotal(pop, tabela_distancias)

  [l, c] = size(pop);

  for i = 1:l
    distancia(i) = 0;
    for j = 1:(c-1)
      distancia(i) += tabela_distancias(pop(i, j), pop(i, j+1));
    endfor
  endfor

endfunction
