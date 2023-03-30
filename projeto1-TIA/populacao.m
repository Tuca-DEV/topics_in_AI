function [populacaoInicial] = populacao()

  probabilidade = 0;
  populacaoInicial = zeros(10,6);

  for i=1:10
    for j=1:6
      probabilidade = rand();
      if (probabilidade > 0.5)
        populacaoInicial(i,j) = 1;
      endif
    endfor
  endfor
  
endfunction

