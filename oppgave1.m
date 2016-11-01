
[a,b] = sort(rand(4,10));
 U = b(:,1:1);
 
 [c,d] = sort(rand(10,5));
 Vt = d(1:1,:);
 
 U*Vt
 
 rank(U*Vt)
 
