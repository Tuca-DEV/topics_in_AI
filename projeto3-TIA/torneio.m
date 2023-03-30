function [pais] = torneio(distancia_total)
  sorteio = randperm(15);
  pais = zeros(1,2);
  j = 1;
  for i = 1:2:4
    comp1 = distancia_total(sorteio(i));
    comp2 = distancia_total(sorteio(i+1));
    if (comp1>comp2)
      pais(1,j) = sorteio(i);
    else
      pais(1,j) = sorteio(i+1);
    endif
    j++;
  endfor

endfunction
