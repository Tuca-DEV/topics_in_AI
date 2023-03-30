function [matrizNumDec] = convertBinToDec(populacao, n)
  matrizNumDec = zeros(n,1);

  for i=1:n
    for j=6:-1:1
      matrizNumDec(i,1) += populacao(i,j)*(2^(6-j));
    endfor
  endfor

endfunction


