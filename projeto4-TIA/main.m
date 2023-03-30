function main()
  % Número de partículas/ Dimensões / Momento de inércia / número de iterações /
  % melhor solução da partícula / id da melhor partícula do enxame
  n_p = 10;
  dim = 2;
  w = 0.90;
  n_it = 50;
  pbest = rand(n_p, dim);
  gbest = rand(1, dim);

  %Geração das partículas
  posicao = rand(n_p, dim)
  velocidade = rand(n_p, dim)

  %Inicialização do vetor res que armazena os fitness de cada partícula
  res = zeros(1, n_p);

  for c=1:n_it
    for i=1:n_p
      %Resultados de acordo com as atuais posições das partículas
      res(i) = f(posicao(i,:));

      %Atualização do pbest(se necessário)
      if(res(i) < f(pbest(i, :)))
        pbest(i, :) = posicao(i, :);
      endif

      %Atualização do gbest(se necessário)
      if(res(i) < f(gbest(:)))
        gbest = posicao(i, :);
      endif

      %Atualização da velocidade e do w
      velocidade(i, :) = w*velocidade(i, :) + 2*rand(1, 2).*(pbest(i, :) - posicao(i, :)) + 2*rand(1,2).*(gbest - posicao(i, :));
      w *= 0.95;

      %Atualização da posição
      posicao(i, :) = posicao(i, :) + velocidade(i, :);

    endfor
    res
    posicao
    gbest
  endfor

  %Plotagem
  figure(1);
  for i = 1:10
    plot(posicao(i,1), posicao(i, 2), 'r*');
    drawnow; hold on;
  endfor






























endfunction
