function [doismaisAptos] = elitismo(populacao_dec)
  doismaisAptos = zeros(1,2);

  for i= 1:2
    [valor, indice] = max(populacao_dec);
    doismaisAptos(i) = indice;
    populacao_dec(indice) = 0;
  endfor

endfunction
