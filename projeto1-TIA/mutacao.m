function [filhosMutados] = mutacao(m)

  probabilidade = 0;
  filhosMutados = m;
  for i = 1:2
    for  j = 1:6
      probabilidade = rand();
      if(probabilidade >= 0.95)
         filhosMutados(i,j) = 1 - m(i,j);
      endif
    endfor
  endfor


endfunction
