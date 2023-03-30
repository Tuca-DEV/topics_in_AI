function [fitness] = f(posicao)
  fitness = posicao(1)^2 - 10*cos(2*pi*posicao(1)) + posicao(2)^2 - 10*cos(2*pi*posicao(2));
endfunction
