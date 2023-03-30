function parents = roleta(weights)
  accumulation = cumsum(weights);
  p = rand() * accumulation(end);
  chosen_index = -1;
  parents = zeros(1,2);
  for i = 1:2
    for index = 1 : length(accumulation)
      if (accumulation(index) > p)
        chosen_index = index;
        accumulation(index) = 0
        break;
      end
    end
    parents(1,i) = chosen_index;
  endfor
 parents
