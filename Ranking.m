function [x, loop] = Ranking(A) 

n = size(A,2); %gives size 5
x = ones(n,1)'*1/n; %5x1 matrice filled with 1/5
x0 = zeros(1,n);
m = 0.15;  %damping 15 percent
S = ones(n,n)*1/n;
epsilon = 0.000000001;
loop = 1;

while loop<10000
    x0 = x;
    x = x0*((1-m)*A + m*S);
    
    if any(((1-m)*A + m*S)^2<epsilon)
        print = ('Matrix is not regular');
        disp(print)
    end
    
    if (x ~= x0*((1-m)*A + m*S))
        print2 = ('Matrix is not stochastic');
        disp(print2)
    end
    loop = loop +1;
end
end
