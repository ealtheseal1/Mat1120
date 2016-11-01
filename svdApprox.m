function Newpic=svdApprox(A,k)
  
  if k>rank(A)
    disp('K higher than rank(A');
    return
  end
  
  [U,S,V] = svd(A); 
  Newpic = zeros(size(A));
 
  for j=1:(k)
    Newpic = Newpic + S(j,j)*U(:,j)*V(:,j)';
    
  end
  
  imwrite(Newpic, 'Newpic.gif','gif');
  
