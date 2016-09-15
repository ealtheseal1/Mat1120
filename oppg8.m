A = [0 1 0 0 0; 1 0 0 0 0; 0 0 0 1 0; 0 0 1 0 0; 0 0 0.5 0.5 0];
n = size(A,2); %gives size 5
x = ones(n,1)*1/n; %5x1 matrice filled with 1/5
S = ones(n,n)*1/n;

m = 0.15;  %damping 15 percent

M = (1-m)*A + m*S; %formulae
M1 = null(M-eye(5,5)); %finding nullspace vector
Mlosn = M1/sum(M1); %divided by sum since, sum probability = 1
%Markov chain

loop = 1;
while (true)
    x0 = x;
    x = M*x;
    
    if any(M*M<0.0001)
        print = ('Matrix is not regular');
        disp(print)
    end
    
    if (x ~= M*x)
        print2 = ('Matrix is not stochastic');
        disp(print2)
    end
    loop = loop +1;
    if loop > 10000
        break
    end
end

M*x
