A = imread('mm.gif','gif');
B = round(255*rand(256,256));

A = double(A);
B = double(B);

[U,S,V] = svd(A);
[U,SS,V] = svd(B);
s = diag(S);
ss = diag(SS);

n = length(A);
n2 = length(B);
x = linspace(1, n, n);
x2 = linspace(1, n2,n2); 

figure(1)
stem(x,s)
title('\Sigma values')
xlabel('\sigma')
ylabel('Index_{j}')
en =('Singlevalue decomposition of Marilyn Monroe')

%figure(2)
hold('on')
stem(x2,ss)
title('\Sigma values')
xlabel('\sigma')
ylabel('Index_{j}')
to =('Singlevalue decomposition of a random matrix')
legend(en,to)
