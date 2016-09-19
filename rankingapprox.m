function [x, loop] = rankingapprox(A,delta) 

n = size(A,2); %gives size 5
S = ones(n,n)*1/n; %5x5 matrice filled with 1/5
m = 0.15;  %dempningsfaktor 15 prosent
M = 0.85*A + m*S; %formulae
M1 = null(M-eye(n)); %finding nullspace vector
loop = 1;


x = ones(n,1)*(1./n);
x0 = x;
x = M*x;
  
  while(max(abs(x-x0)) > delta)
    x0 = x;
    x = M*x;
    loop = loop +1;
  end;
end




