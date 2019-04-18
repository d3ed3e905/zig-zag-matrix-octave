function Z = zigzag(n)

  Z = zeros(n); % creeaza o matrice de ordin n initializata cu zero
  
  % functia foloseste diagonalele secundare din matricele patratice de ordin 2, 3, 4, ... n
  dim = 2; % dimensiune matrice
  nr = 0; % nr cu care va fi completata matricea
  
  %completare matrice (partea superioara)
  while dim <= n
    if mod(dim, 2) == 0 % dimensiune para => diagonala parcursa de sus in jos
      for i = 1:dim
        nr = nr + 1;
        Z(i, dim-i+1) = nr;
        endfor
      else
        % dimensiune impara => diagonala parcursa de jos in sus
        for i = 1:dim
          nr = nr + 1;
          Z(dim-i+1, i) = nr;
          endfor
      endif
      dim = dim + 1;
  endwhile
  
  %completare matrice (partea inferioara)
  dim = n - 1;
  aux_i = 2;
  while dim ~= 0
    if mod(dim, 2) == 0 % dimensiune para => diagonala parcursa de sus in jos
      for i = aux_i:n
        nr = nr + 1;
        Z(i, n-i+aux_i) = nr;
        endfor
      aux_i = aux_i + 1;
      else
        % dimensiune impara => diagonala parcursa de jos in sus
        for i = aux_i:n
          nr = nr + 1;
          Z(n-i+aux_i, i) = nr;
          endfor
          aux_i = aux_i + 1;
      endif
      dim = dim - 1;
  endwhile
  
  endfunction