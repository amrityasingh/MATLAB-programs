r=[1 2 3 4 5 6 7 8];
A= triu(toeplitz(r))

B=ones(8)
C=toeplitz(r)
format rat
D= B./C