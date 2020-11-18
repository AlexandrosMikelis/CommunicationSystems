function [means, mins, maxs] = m3s(A)
  [n m] = size(A);
  mins = A(1,1);
  maxs = A(1,1);
  means=0;
  for k = 1:n
    for l = 1:m
      if(A(k,l) < mins)
        mins=A(k,l);
      endif
      if(A(k,l) > maxs)
        maxs=A(k,l);
      endif
      means=means + A(k,l);
    endfor
  endfor
  means = means/m ;
  return ;
endfunction
