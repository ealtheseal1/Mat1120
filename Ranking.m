function [Mlosn] = Ranking(A) 
n = size(A,2); %gives size 5
S = ones(n,n)*1/n; %5x5 matrice filled with 1/5
m = 0.15;  %dempningsfaktor 15 prosent
M = 0.85*A + m*S; %formulae
M1 = null(M-eye(n)); %finding nullspace vector

Mlosn = M1./sum(M1); %divided by sum since, sum probability = 1.
    
    for k=1:(n)
        if (sum(A(:,k)) ~= 1)
            print2 = ('Matrix is not stochastic');
            disp(print2)
        end
    end
end
