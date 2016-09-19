A = [0 1 0 0 0; 1 0 0 0 0;0 0 0 1 1/2; 0 0 1 0 1/2; 0 0 0 0 0];
n = size(A,2); %gives size 5
S = ones(n,n)*1/n; %5x5 matrice filled with 1/5

m = 0.15;  %dempningsfaktor 15 prosent

M = 0.85*A + m*S %formulae

M1 = null(M-eye(5)); %finding nullspace vector

Mlosn = M1./sum(M1) %divided by sum since, sum probability = 1.


