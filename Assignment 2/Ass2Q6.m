A = rand(4)
B = inv(A)
I=eye(A)
C=I/B
if B==C
    fprintf('Yes\n');
else
    frpintf('No\n');
end    

D = 1./A
E = A.^(-1)
if D==E
    fprintf('Yes\n');
else
    frpintf('No\n');
end   
