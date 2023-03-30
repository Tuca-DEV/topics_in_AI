function [doismaisAptos] = elitismo(distancia_total)
  doismaisAptos = zeros(1,2);

  for i= 1:2
    [valor, indice] = min(distancia_total);
    doismaisAptos(i) = indice;
    distancia_total(indice) = 100;
  endfor

endfunction
