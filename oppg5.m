A = [0 1 0 0 0; 1 0 0 0 0; 0 0 0 1 0; 0 0 1 0 0; 0 0 0.5 0.5 0];
n = size(A,2); %gives size 5
S = ones(n,n)*1/n %5x5 matrice filled with 1/5

m = 0.15;  %dempningsfaktor 15 prosent

M = (1-m)*A + m*S; %formulae

M1 = null(M-eye(5,5)); %finding nullspace vector

Mlosn = M1/sum(M1) %divided by sum since, sum probability = 1.


delta = (1-m)/n; 
c = sum(A,1); 
k = find(c~=0);
S2 = sparse(k,k,1./c(k),n,n); 
e = ones(n,1); 
I = speye(n,n); 
M2 = (I - m*A*S2)\(delta*e); 
M2losn = M2/sum(M2)

