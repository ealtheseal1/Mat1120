function functionerror = relError(A,AK)
A = double(A);
AK = double (AK);
C = norm(A-AK)/norm(A)
C*100

end

