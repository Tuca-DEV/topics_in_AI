function [filhos] = crossOver(pais, popu)
  %pais é um vetor de 1 dimensão que contém o endereço(n° da linha) dos pais na população
  areacorte = 2:4;
  %Cruzando a primeira metade
  aux = popu(pais(1), areacorte);
  popu(pais(1), areacorte) = popu(pais(2), areacorte);
  popu(pais(2), areacorte) = aux;
  %disp('Cruzado')

  filhos(1, :) = popu(pais(1), :);
  filhos(2, :) = popu(pais(2), :);
  
  for i = 1:2
    cidades = 1:7;
    cidades_filhos = unique(filhos(i,:));
    
    if (length(cidades) == length(cidades_filhos))
      break
    else
      for j = 1:length(cidades_filhos)
        cidadeIgual = find(cidades == cidades_filhos(j));
        cidades(cidadeIgual(1)) = [];
      endfor
                  
      filhoSemPontas = filhos(i,2:7);
      numerosUnicosSemPontas = unique(filhoSemPontas);
      repetitions = histc(filhoSemPontas, numerosUnicosSemPontas);
      
      for f = 1:length(numerosUnicosSemPontas)
        if (repetitions(f) > 1 || numerosUnicosSemPontas(f) == filhos(i,1))
          posicaoNumeroRepetido = find(filhos(i,:) == numerosUnicosSemPontas(f));
          filhos(i, posicaoNumeroRepetido(2)) = cidades(1);
          cidades(1) = [];
        endif
      endfor
      
    endif
  endfor
endfunction
