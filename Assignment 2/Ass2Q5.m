n=input('Enter value of n for magic square: ');
A = magic(n)
scol = sum(A)
srow = sum(A, 2)
sdiag = trace(A)
Aflip = fliplr(A);
santidiag = trace(Aflip)